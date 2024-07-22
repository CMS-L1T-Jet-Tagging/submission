import os
import subprocess

# basefolder = "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fp_ntuples_v131Xv9/extendedTRK_HW_220424_gentaus/"
# basefolder = "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fp_ntuples_v131Xv9/extendedTRK_HW_220424_recotaus/"
basefolder = "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fp_ntuples_v131Xv9/extendedTRK_HW_200724/"

campaignName = "fp_ntuples_v131Xv9"

for folder in os.listdir(basefolder):   
    # print (os.listdir(basefolder+"/"+folder+"/FP/v100C_small"))
    command = "hadd -fk -j 8 "+basefolder+"/"+folder+".root "+basefolder+"/"+folder+"/FP/"+campaignName+"/*.root"
    print (command)
    subprocess.call(command, shell=True)

command = "hadd -fk -j 8 "+basefolder+"/"+"All200.root "+basefolder+"/"+"/*.root"
print (command)
subprocess.call(command, shell=True)
