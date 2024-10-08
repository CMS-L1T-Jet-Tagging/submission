#!/bin/bash
uname -a

env

CLUSTERID=$1
PROCID=$2

source ./params.sh


BATCH_DIR=${PWD}


echo "CLUSTER:" ${CLUSTERID}
echo "PROC-ID" ${PROCID}
echo 'TASKCONFDIR' ${ABSTASKCONFDIR}
echo 'OUT-DIR' ${OUTDIR}
echo 'OUTPUT-FILE' ${OUTFILE}

#dump job info
echo 'PROCID='${PROCID} >> job_info.sh
echo 'CLUSTERID='${CLUSTERID} >> job_info.sh

source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=${SCRAMARCH}
scram proj CMSSW ${CMSSWVERSION}
cd ${CMSSWVERSION}
cp ../sandbox.tgz .
# cp ${ABSTASKBASEDIR}/sandbox.tgz .
tar xvf sandbox.tgz
eval `scram runtime -sh`
echo "SCRAM arch: ${SCRAM_ARCH} CMSSW version: ${CMSSWVERSION}"
#cd ${ABSTASKCONFDIR}
# cp ${ABSTASKCONFDIR}/input_cfg.pkl ${BATCH_DIR}/
cp ${ABSTASKCONFDIR}/input_step1_cfg.py ${BATCH_DIR}/
cp ${ABSTASKCONFDIR}/job_config_step1_${PROCID}.py ${BATCH_DIR}/

cp ${ABSTASKCONFDIR}/input_step2_cfg.py ${BATCH_DIR}/
cp ${ABSTASKCONFDIR}/job_config_step2_${PROCID}.py ${BATCH_DIR}/

# python process_pickler.py job_config_${PROCID}.py ${BATCH_DIR}/job_config.py
cd ${BATCH_DIR}
ls -lrt
echo 'now we run STEP1...fasten your seatbelt: '
cmsRun job_config_step1_${PROCID}.py 2>&1 | tee step1_${PROCID}.${CLUSTERID}.log > /dev/null
EXIT_CODE=${PIPESTATUS[0]}
gzip step1_${PROCID}.${CLUSTERID}.log && cp -v step1_${PROCID}.${CLUSTERID}.log.gz ${ABSTASKLOGDIR} || { echo 'STEP1 log handling failed!'; exit 12; }
if [ $EXIT_CODE -ne 0 ]; then
    echo "STEP1 failed with exit code $EXIT_CODE"
    exit 11
fi
echo '...done!'

echo 'now we run STEP2...fasten your seatbelt: '
cmsRun job_config_step2_${PROCID}.py 2>&1 | tee step2_${PROCID}.${CLUSTERID}.log > /dev/null
EXIT_CODE=${PIPESTATUS[0]}
gzip step2_${PROCID}.${CLUSTERID}.log && cp -v step2_${PROCID}.${CLUSTERID}.log.gz ${ABSTASKLOGDIR} || { echo 'STEP2 log handling failed!'; exit 22; }
if [ $EXIT_CODE -ne 0 ]; then
    echo "STEP2 failed with exit code $EXIT_CODE"
    exit 21
fi
echo '...done!'
