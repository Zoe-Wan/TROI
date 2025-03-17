#!/bin/bash
echo '保证在mindeye环境下'
source /etc/network_turbo
s=01
for i in {01..40}
do
    link=https://natural-scenes-dataset.s3.amazonaws.com/nsddata_betas/ppdata/subj$s/func1pt8mm/betas_fithrf_GLMdenoise_RR/betas_session$i.nii.gz
    wget $link
    input_file=/root/autodl-tmp/NSD/nsddata_betas/ppdata/subject$s/raw/betas_session$i.nii.gz
    # 检查文件是否存在
    if [ ! -f "$input_file" ]; then
        echo "Error: File '$input_file' not found!"
        exit 1
    fi


    
done
# 官方ROI下载位置是 https://natural-scenes-dataset.s3.amazonaws.com/nsddata/ppdata/subj0$s/func1pt8mm/roi/nsdgeneral.nii.gz