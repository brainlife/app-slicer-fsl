#!/bin/bash

# t1/t2, flair, dwi, or fmri
input=`jq -r '.input' config.json`
outdir="raw"
volumes=`fslinfo $input | grep 'dim4' | grep -v 'pixdim4' | cut -f3`

mkdir -p $outdir $outdir/tmp

[ ! -f ./$outdir/tmp/vol0000.nii.gz ] && fslsplit ${input} ./$outdir/tmp/vol

volumes=(`ls -A $outdir/tmp/`)
for i in ${volumes[*]}
do
	slicer $outdir/tmp/${i} -a ${outdir}/${i%%.nii.gz}.png
done

if [ ! -f ${outdir}/${volumes[${#volumes[*]}-1]%%.nii.gz}.png ]; then
	echo "failed"
	# exit 1
else
	echo "complete"
	rm -rf ./$outdir/tmp
	# exit 0
fi
