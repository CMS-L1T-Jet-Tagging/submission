#!/bin/bash


directory_pairs=(
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/DoubleElectron_FlatPt-1To100-gun/DoubleElectron_FlatPt-1To100_PU200_131Xv2 /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/DoubleElectron_FlatPt-1To100_PU200/"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/TT_TuneCP5_14TeV-powheg-pythia8/TT_PU200_131Xv2/ /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/TTbar_PU200/"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/DYToLL_M-50_TuneCP5_14TeV-pythia8/DYToLL_M50_PU200_131Xv2/ /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/DYToLL_M-50_PU200/"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/DYToLL_M-10To50_TuneCP5_14TeV-pythia8/DYToLL_M10To50_PU200_131Xv2/ /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/DYToLL_M-10To50_PU200/"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/MinBias_TuneCP5_14TeV-pythia8/NuGunAllEta_PU200_131Xv2/ /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/SingleNeutrino_PU200/"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/DoublePhoton_FlatPt-1To100-gun/DoublePhoton_FlatPt-1To100_PU200_131Xv2/ /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/DoublePhoton_FlatPt-1To100_PU200/"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/MinBias_TuneCP5_14TeV-pythia8/NuGunAllEta_PU200_142Xv0/ /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/SingleNeutrino_PU200/"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/DoubleElectron_FlatPt-1To100-gun/DoubleElectron_FlatPt-1To100_PU200_142Xv0/ /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/DoubleElectron_FlatPt-1To100_PU200/"
    # "/path/to/source2 /path/to/target2"
    # "/path/to/source3 /path/to/target3"
    # Add more pairs as needed


    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/DYToLL_M-10To50_TuneCP5_14TeV-pythia8/DYToLL_M10To50_PU200_142Xv0/241206_122535/0000/ /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/DYToLL_M10To50_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/DYToLL_M-50_TuneCP5_14TeV-pythia8/DYToLL_M50_PU200_142Xv0/241206_122543/0000/ /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/DYToLL_M50_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/DYto2L-2Jets_MLL-50_PTLL-200to400_2J_TuneCP5_14TeV_amcatnloFXFX-pythia8/DYToLL_M50_PTLL200To400_PU200_142Xv0/241206_122714/0000/ /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/DYToLL_M50_PTLL200To400_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/DYto2L-2Jets_MLL-50_PTLL-400to600_2J_TuneCP5_14TeV_amcatnloFXFX-pythia8/DYToLL_M50_PTLL400To600_PU200_142Xv0/241206_122722/0000/ /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/DYToLL_M50_PTLL400To600_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/DYto2L-2Jets_MLL-50_PTLL-600_2J_TuneCP5_14TeV_amcatnloFXFX-pythia8/DYToLL_M50_PTLL600ToInf_PU200_142Xv0/241206_122730/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/DYToLL_M50_PTLL600ToInf_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/GluGluHToGG_M-125_TuneCP5_14TeV-powheg-pythia8/GluGluHToGG_PU200_142Xv0/241206_122738/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/GluGluHToGG_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/GluGluHToTauTau_M-125_TuneCP5_14TeV-powheg-pythia8_PU200/GluGluHToTauTau_PU200_142Xv0/241206_122746/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/GluGluHToTauTau_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/GluGluToHHTo2B2Tau_node_SM_TuneCP5_14TeV-madgraph-pythia8/GluGluHHTo2B2Tau_PU200_142Xv0/241206_122755/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/GluGluHHTo2B2Tau_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/GluGluToHHTo4B_node_SM_TuneCP5_14TeV-amcatnlo-pythia8/GluGluHHTo4B_PU200_142Xv0/241209_091521/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/GluGluHHTo4B_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/MinBias_TuneCP5_14TeV-pythia8/MinBias_PU200_142Xv0/241206_122943/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/MinBias_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/QCD_Pt-120To170_TuneCP5_14TeV-pythia8/QCD_Pt120To170_PU200_142Xv0/241206_122632/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/QCD_Pt120To170_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/QCD_Pt-15To3000_TuneCP5_Flat_14TeV-pythia8/QCD_Pt15To3000_PU200_142Xv0/241206_122550/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/QCD_Pt15To3000_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/QCD_Pt-170To300_TuneCP5_14TeV-pythia8/QCD_Pt170To300_PU200_142Xv0/241206_122639/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/QCD_Pt170To300_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/QCD_Pt-20To30_TuneCP5_14TeV-pythia8/QCD_Pt20To30_PU200_142Xv0/241206_122558/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/QCD_Pt20To30_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/QCD_Pt-300To470_TuneCP5_14TeV-pythia8/QCD_Pt300To470_PU200_142Xv0/241206_122647/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/QCD_Pt300To470_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/QCD_Pt-30To50_TuneCP5_14TeV-pythia8/QCD_Pt30To50_PU200_142Xv0/241206_122606/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/QCD_Pt30To50_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/QCD_Pt-470To600_TuneCP5_14TeV-pythia8/QCD_Pt470To600_PU200_142Xv0/241206_122655/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/QCD_Pt470To600_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/QCD_Pt-50To80_TuneCP5_14TeV-pythia8/QCD_Pt50To80_PU200_142Xv0/241206_122614/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/QCD_Pt50To80_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/QCD_Pt-600ToInf_TuneCP5_14TeV-pythia8/QCD_Pt600ToInf_PU200_142Xv0/241206_122703/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/QCD_Pt600ToInf_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/QCD_Pt-80To120_TuneCP5_14TeV-pythia8/QCD_Pt80To120_PU200_142Xv0/241206_122624/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/QCD_Pt80To120_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/TTTo2L2Nu_TuneCP5_14TeV-powheg-pythia8/TTTo2L2Nu_PU200_142Xv0/241206_122811/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/TTTo2L2Nu_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/TTToSemileptonic_TuneCP5_14TeV-powheg-pythia8/TTToSemileptonic_PU200_142Xv0/241206_122819/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/TTToSemileptonic_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/TT_TuneCP5_14TeV-powheg-pythia8/TT_PU200_142Xv0/241206_111548/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/TT_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/VBFHToBB_M-125_TuneCP5_14TeV-powheg-pythia8/VBFHToBB_PU200_142Xv0/241206_122828/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/VBFHToBB_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/VBFHToCC_M-125_TuneCP5_14TeV-powheg-pythia8/VBFHToCC_PU200_142Xv0/241206_122836/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/VBFHToCC_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/VBF_HToTauTau_M-125_TuneCP5_14TeV-powheg-pythia8/VBFHToTauTau_PU200_142Xv0/241206_122844/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/VBFHToTauTau_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/VBF_HToTauTau_M-125_TuneCP5_14TeV-powheg-pythia8/VBFHToTauTau_ext_PU200_142Xv0/241206_122852/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/VBFHToTauTau_ext_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/WJetsToLNu_TuneCP5_14TeV-amcatnloFXFX-pythia8/WJetsToLNu_PU200_142Xv0/241206_122900/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/WJetsToLNu_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/XtoHH_MX-1000to4000_MH-20to250_TuneCP5_14TeV_pythia8/XtoHH_MX_500To1000_PU200_142Xv0/241206_122908/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/XtoHH_MX_500To1000_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/XtoHH_MX-500to1000_MH-20to250_TuneCP5_14TeV_pythia8/XtoHH_MX_1000To4000_PU200_142Xv0/241206_122918/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/XtoHH_MX_1000To4000_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/ZprimeToTauTau_M-1500_TuneCP5_14TeV-pythia8-tauola/ZprimeToTauTau_M500_PU200_142Xv0/241206_122926/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/ZprimeToTauTau_M500_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/ZprimeToTauTau_M-500_TuneCP5_14TeV-pythia8-tauola/ZprimeToTauTau_M1500_PU200_142Xv0/241206_122935/0000/  /eos/cms/store/cmst3/group/l1tr/FastPUPPI/14_2_X/fpinputs_140X/v0/ZprimeToTauTau_M1500_PU200/"
)


# Function to check if a string is a single number
is_single_number() {
    [[ $1 =~ ^[0-9]+$ ]]
}



# Loop through pairs of source and target directories
for pair in "${directory_pairs[@]}"; do
    # Split the pair into source and target directories
    source_directory="${pair%% *}"
    target_directory="${pair#* }"

   # Check if the source directory exists
    if [ -d "$source_directory" ]; then
        # Check if the target directory exists, create if not
        if [ ! -d "$target_directory" ]; then
        # echo "Create"$target_directory
            eos mkdir -p $target_directory
        fi

        echo $source_directory
        files=$(eos find -f "$source_directory")
        echo $files

        # Print the header
        echo "Directory Path"

        # Loop over each directory
        for file in $files; do
            # Print the directory path
            # echo "$file"
                # Print the header
            echo "File Name      Base Name      Extension"
            filename=$(eos ls "$file") 
            base_name="${filename%.*}"
            extension="${filename##*.}"


            # Print the file details
            printf "%-15s %-15s %-15s\n" "$filename" "$base_name" "$extension"
            suffix="${base_name##*_}"
            echo $suffix
            if [ "$extension" = "root" ]; then
                eos file rename $file $target_directory/
                # mv "$file" "$target_directory/"
                echo "File $filename moved to $target_directory/"
            fi

            # # Check if the suffix is a single number
            # if is_single_number "$suffix"  && [ "$extension" = "root" ]; then
            #     eos file rename $file $target_directory/
            #     # mv "$file" "$target_directory/"
            #     echo "File $filename moved to $target_directory/"
            # else
            #     # new_name="$target_directory/$(ls "$source_directory" | grep -E '^[0-9]+$' | sort -n | awk '{print $1+1}')_$(basename "$filename")"
            #     echo "Skipping file $filename: Invalid suffix"
            #     # echo $new_name
            # fi
        done




        # Move files from source to target
        # mv "$source_directory"/* "$target_directory"/

        echo "Files moved from $source_directory to $target_directory"
    else
        echo "Source directory not found: $source_directory"
    fi
done





