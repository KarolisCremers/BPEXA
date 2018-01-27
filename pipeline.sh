#path the BigDataScript
export PATH=$PATH:$HOME/.bds
#run with default
python chipseq.py -species mm9 -se -fastq1 simulatesample0-rep0.fastq -fastq2 simulatesample0-rep1.fastq -ctl_fastq -ctl_fastq1 simulatesample1-rep0.fastq -ctl_fastq2 simulatesample1-rep1.fastq -nth 4 --memory 7.0G

#run with MACS2 peak-caller
chipseq.py -species mm9 -se -peak1 /home/karolis/TF_chipseq_pipeline/out/peak/macs2/rep1/simulatesample0-rep0.nodup.narrowPeak.gz -peak2 /home/karolis/TF_chipseq_pipeline/out/peak/macs2/rep2/simulatesample0-rep2.nodup.narrowPeak.gz -ctl_peak -ctl_peak1 /home/karolis/TF_chipseq_pipeline/out/peak/macs2/rep3/simulatesample1-rep0.nodup.narrowPeak.gz -ctl_peak2 /home/karolis/TF_chipseq_pipeline/out/peak/macs2/rep4/simulatesample1-rep1.nodup.narrowPeak.gz -nth 1 --peak-caller macs2
