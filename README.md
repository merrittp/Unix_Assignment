# Unix_Assignment

In this assignment, we were responsible for inspecting, describing, and manipulating SNP data for downstream analysis. In all, 40 files were created with data pertaining to maize and teosinte SNP data. Each file represents the SNP on a particular chromosome and particular order of the SNP position data. If done correctly, these files should be able to be be easily used for further analysis.

## Inspection and Describing

The inspection part of this project involved using UNIX commands to investigate different fundamental aspects of the original files before use. The two files are fang_et_al_genotypes.txt and snp_position.txt. These files are not included in the repository, as they were given by the instructor.

### fang_et_al_genotypes.txt

I began this inspection using the wc count command. It showed that this file had 2783 lines, 2744038 words, and was made up of 11051939 bytes of information. The du -h command additionally showed that this file was 11MB in total, definitely one of the larger files I have every worked with. Continuing my inspection, I used tail -n +6 fang_et_al_genotypes.txt | awk -F "\t" '{print NF; exit}' to show that the fang file has 986 columns in addtion to the 2783 lines. This included the header. I also ran the same command without the tail and the pipe, showing that the header was not affecting the number of columns.

### snp_position.txt

For this file, I ran all the same commands used above on fang_et_al_genotypes.txt. 
