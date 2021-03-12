#!/bin/bash

bold=`jq -r '.bold' config.json`

fslselectvols -i ${bold} -o nodif.nii.gz --vols=0

bet nodif.nii.gz nodif_brain -f 0.2 -g 0 -m

mv nodif_brain.nii.gz bold.nii.gz
mv nodif_brain_mask.nii.gz mask.nii.gz
