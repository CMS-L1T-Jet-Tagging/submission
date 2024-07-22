#!/bin/bash


directory_pairs=(
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/DoubleElectron_FlatPt-1To100-gun/DoubleElectron_FlatPt-1To100_PU200_131Xv2 /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/DoubleElectron_FlatPt-1To100_PU200"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/TT_TuneCP5_14TeV-powheg-pythia8/TT_PU200_131Xv2/ /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/TTbar_PU200"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/DYToLL_M-50_TuneCP5_14TeV-pythia8/DYToLL_M50_PU200_131Xv2/ /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/DYToLL_M-50_PU200"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/DYToLL_M-10To50_TuneCP5_14TeV-pythia8/DYToLL_M10To50_PU200_131Xv2/ /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/DYToLL_M-10To50_PU200"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/MinBias_TuneCP5_14TeV-pythia8/NuGunAllEta_PU200_131Xv2/ /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/SingleNeutrino_PU200"
    # "/eos/cms/store/cmst3/group/l1tr/cerminar/l1teg/fpinputs/DoublePhoton_FlatPt-1To100-gun/DoublePhoton_FlatPt-1To100_PU200_131Xv2/ /store/cmst3/group/l1tr/cerminar/14_0_X/fpinputs_131X/v2/DoublePhoton_FlatPt-1To100_PU200"
    # "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/DYToLL_M-10To50_TuneCP5_14TeV-pythia8/DYToLL_M10To50_PU200_131Xv9a/240419_103258/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/DYToLL_M10To50_PU200/"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/DYToLL_M-50_TuneCP5_14TeV-pythia8/DYToLL_M50_PU200_131Xv9a/240419_103409/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/DYToLL_M50_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/DYToLL_M-50_TuneCP5_14TeV-pythia8/DYToLL_M50_PU200_131Xv9a/240419_103409/0001/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/DYToLL_M50_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/GluGluHToTauTau_M-125_TuneCP5_14TeV-powheg-pythia8/ggHtt_PU200_131Xv9a/240419_101859/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/ggHtt_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/GluGluToHHTo2B2Tau_node_SM_TuneCP5_14TeV-madgraph-pythia8/ggHHbbtt_PU200_131Xv9a/240419_102009/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/ggHHbbtt_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/QCD_Pt-15To3000_TuneCP5_Flat_14TeV-pythia8/QCDInclusive_PU200_131Xv9a/240419_103148/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/QCDInclusive_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/QCD_Pt-20To30_TuneCP5_14TeV-pythia8/QCDPt20_PU200_131Xv9a/240419_102118/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/QCDPt20_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/QCD_Pt-20To30_TuneCP5_14TeV-pythia8/QCDPt20_PU200_131Xv9a/240419_102118/0001/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/QCDPt20_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/QCD_Pt-30To50_TuneCP5_14TeV-pythia8/QCDPt30_PU200_131Xv9a/240419_102227/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/QCDPt30_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/QCD_Pt-30To50_TuneCP5_14TeV-pythia8/QCDPt30_PU200_131Xv9a/240419_102227/0001/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/QCDPt30_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/QCD_Pt-600ToInf_TuneCP5_14TeV-pythia8/QCDPt600_PU200_131Xv9a/240419_103038/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/QCDPt600_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/QCD_Pt-80To120_TuneCP5_14TeV-pythia8/QCDPt80_PU200_131Xv9a/240419_102447/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/QCDPt80_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/TTTo2L2Nu_TuneCP5_14TeV-powheg-pythia8/TT2L_PU200_131Xv9a/240419_101534/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/TT2L_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/TTTo2L2Nu_TuneCP5_14TeV-powheg-pythia8/TT2L_PU200_131Xv9a/240419_101534/0001/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/TT2L_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/TTToSemileptonic_TuneCP5_14TeV-powheg-pythia8/TT1L_PU200_131Xv9a/240419_101425/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/TT1L_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/TT_TuneCP5_14TeV-powheg-pythia8/TT_PU200_131Xv9a/240419_101314/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/TT_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/TT_TuneCP5_14TeV-powheg-pythia8/TT_PU200_131Xv9a/240419_101314/0001/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/TT_PU200"
    "/eos/cms/store/cmst3/group/l1tr/sewuchte/l1teg/fpinputs/131Xv9a/VBFHToTauTau_M-125_TuneCP5_14TeV-powheg-pythia8/VBFHtt_PU200_131Xv9a/240419_101643/0000/ /store/cmst3/group/l1tr/FastPUPPI/14_0_X/fpinputs_131X/v9a/VBFHtt_PU200"
    # "/path/to/source2 /path/to/target2"
    # "/path/to/source3 /path/to/target3"
    # Add more pairs as needed
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
            eos mkdir -p "$target_directory"
        fi

        files=$(eos find -f "$source_directory")

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





