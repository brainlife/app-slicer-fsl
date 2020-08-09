#!/bin/bash

# noddi
fa=`jq -r '.fa' config.json`
md=`jq -r '.md' config.json`
ad=`jq -r '.ad' config.json`
rd=`jq -r '.rd' config.json`
ga=`jq -r '.ga' config.json`
ak=`jq -r '.ak' config.json`
mk=`jq -r '.mk' config.json`
rk=`jq -r '.rk' config.json`

if [[ ${ga} == 'null' ]]; then
	met="fa md ad rd"
else
	met="fa md ad rd ga mk ak rk"
fi

outdir="raw"

mkdir -p $outdir

for MET in $met
do
	img=$(eval "echo \$${MET}")
	slicer ${img} -a ${outdir}/${MET}.png
done

if [ ! -f ${outdir}/rd.png ]; then
	echo "failed"
	exit 1
else
	echo "complete"
	exit 0
fi
