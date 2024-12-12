import os
import subprocess
import glob
import random

basefolder = "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fp_jettuples/"
campaignName = "fp_jettuples_v142Xv0"

for folder in os.listdir(basefolder):
    if not ".root" in folder:
        if not os.path.exists(basefolder+"/"+folder+".root"):
            command = "hadd -fk -j 8 "+basefolder+"/"+folder+".root "+basefolder+"/"+folder+"/FP/"+campaignName+"/*.root"
            print (command)
            subprocess.call(command, shell=True)

command = "hadd -fk -j 8 "+basefolder+"/"+"All200.root "+basefolder+"/"+"/*.root"
print (command)
subprocess.call(command, shell=True)


# -----------------------------------------------------------
# hadd to `All.root`
# -----------------------------------------------------------
def divide_chunks(l, n):
    # looping till length l
    for i in range(0, len(l), n): 
        yield l[i:i + n]

# get full fileList for all but MinBias
file_list = glob.glob(basefolder+"/"+"*"+"/FP/"+campaignName+"/*.root")
file_list_clean = [f_ for f_ in file_list if not "MinBias" in f_]
random.shuffle(file_list_clean)

s = list(divide_chunks(file_list_clean, 500))

for i_entry,entry in enumerate(s):
    command = "hadd -fk -j 8 "+basefolder+"/"+"All200_part"+str(i_entry)+".root "
    for f_ in entry:
        command = command + " "+ f_
    if not os.path.exists(basefolder+"/"+"All200_part"+str(i_entry)+".root"):
        print ("hadding ",basefolder+"/"+"All200_part"+str(i_entry)+".root ")
        subprocess.call(command, shell=True)

file_list_all = glob.glob(basefolder+"/"+"All200_part*.root")
random.shuffle(file_list_all)
if not os.path.exists(basefolder+"/"+"All200.root"):
    command = "hadd -fk -j 8 "+basefolder+"/"+"All200.root "
    for f_ in file_list_all:
        command = command + " "+ f_
    print (command)
    subprocess.call(command, shell=True)