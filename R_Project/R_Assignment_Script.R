fang_data <- read.table("fang_et_al_genotypes.txt")
snp_position <- read.table("snp_position.txt", header = TRUE, fill = TRUE)

#Information Processing
dim(fang_data)
dim(snp_position)

typeof(fang_data)
typeof(snp_position)

class(fang_data)
class(snp_position)

sum(is.na(fang_data))
sum(is.na(snp_position))

#Maize Commands
maize_genotypes <- fang_data[fang_data$V3 %in% c("ZMMIL", "ZMMLR", "ZMMMR", "Group"),]

transposed_maize <- t(maize_genotypes)
#Transposed data was as a matrix and not a data frame.

transposed_maize <- as.data.frame(transposed_maize)
#This command turned it back to a data frame.

snp_position <- snp_position[,-2]
snp_position <- snp_position[,1:3]

merged_maize <- merge(snp_position, transposed_maize, by = 1, all.x = F, all.y = F)

list_of_df <- list()

for (i in 1:10) { 
   list_of_df[[i]] <- merged_maize[merged_maize$Chromosome == i,]
   assign(paste("maize_chr_",i,sep=""), list_of_df[[i]])

   }

#I struggled for a long time trying to figure out the rest of the for loop. 
#I didn't succeed and just typed it all out.
#It's not pretty, but it gets the job done.
#Accessing the variables in a group was my main issue.

maize_chr_1$Position <- as.numeric(as.character(maize_chr_1$Position))
maize_chr_1_ascending <- maize_chr_1[order(maize_chr_1$Position),]
maize_chr_1_descending <- maize_chr_1[order(-maize_chr_1$Position),]
maize_chr_1_descending[] <- lapply(maize_chr_1_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(maize_chr_1_ascending,
  file="maize_chr_1_ascending.csv",
  sep=",", quote=FALSE, row.names=FALSE)
write.table(maize_chr_1_descending,
            file="maize_chr_1_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

maize_chr_2$Position <- as.numeric(as.character(maize_chr_2$Position))
maize_chr_2_ascending <- maize_chr_2[order(maize_chr_2$Position),]
maize_chr_2_descending <- maize_chr_2[order(-maize_chr_2$Position),]
maize_chr_2_descending[] <- lapply(maize_chr_2_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(maize_chr_2_ascending,
            file="maize_chr_2_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(maize_chr_2_descending,
            file="maize_chr_2_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

maize_chr_3$Position <- as.numeric(as.character(maize_chr_3$Position))
maize_chr_3_ascending <- maize_chr_3[order(maize_chr_3$Position),]
maize_chr_3_descending <- maize_chr_3[order(-maize_chr_3$Position),]
maize_chr_3_descending[] <- lapply(maize_chr_3_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(maize_chr_3_ascending,
            file="maize_chr_3_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(maize_chr_3_descending,
            file="maize_chr_3_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

maize_chr_4$Position <- as.numeric(as.character(maize_chr_4$Position))
maize_chr_4_ascending <- maize_chr_4[order(maize_chr_4$Position),]
maize_chr_4_descending <- maize_chr_4[order(-maize_chr_4$Position),]
maize_chr_4_descending[] <- lapply(maize_chr_4_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(maize_chr_4_ascending,
            file="maize_chr_4_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(maize_chr_4_descending,
            file="maize_chr_4_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

maize_chr_5$Position <- as.numeric(as.character(maize_chr_5$Position))
maize_chr_5_ascending <- maize_chr_5[order(maize_chr_5$Position),]
maize_chr_5_descending <- maize_chr_5[order(-maize_chr_5$Position),]
maize_chr_5_descending[] <- lapply(maize_chr_5_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(maize_chr_5_ascending,
            file="maize_chr_5_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(maize_chr_5_descending,
            file="maize_chr_5_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

maize_chr_6$Position <- as.numeric(as.character(maize_chr_6$Position))
maize_chr_6_ascending <- maize_chr_6[order(maize_chr_6$Position),]
maize_chr_6_descending <- maize_chr_6[order(-maize_chr_6$Position),]
maize_chr_6_descending[] <- lapply(maize_chr_6_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(maize_chr_6_ascending,
            file="maize_chr_6_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(maize_chr_6_descending,
            file="maize_chr_6_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

maize_chr_7$Position <- as.numeric(as.character(maize_chr_7$Position))
maize_chr_7_ascending <- maize_chr_7[order(maize_chr_7$Position),]
maize_chr_7_descending <- maize_chr_7[order(-maize_chr_7$Position),]
maize_chr_7_descending[] <- lapply(maize_chr_7_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(maize_chr_7_ascending,
            file="maize_chr_7_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(maize_chr_7_descending,
            file="maize_chr_7_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

maize_chr_8$Position <- as.numeric(as.character(maize_chr_8$Position))
maize_chr_8_ascending <- maize_chr_8[order(maize_chr_8$Position),]
maize_chr_8_descending <- maize_chr_8[order(-maize_chr_8$Position),]
maize_chr_8_descending[] <- lapply(maize_chr_8_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(maize_chr_8_ascending,
            file="maize_chr_8_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(maize_chr_8_descending,
            file="maize_chr_8_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

maize_chr_9$Position <- as.numeric(as.character(maize_chr_9$Position))
maize_chr_9_ascending <- maize_chr_9[order(maize_chr_9$Position),]
maize_chr_9_descending <- maize_chr_9[order(-maize_chr_9$Position),]
maize_chr_9_descending[] <- lapply(maize_chr_9_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(maize_chr_9_ascending,
            file="maize_chr_9_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(maize_chr_9_descending,
            file="maize_chr_9_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

maize_chr_10$Position <- as.numeric(as.character(maize_chr_10$Position))
maize_chr_10_ascending <- maize_chr_10[order(maize_chr_10$Position),]
maize_chr_10_descending <- maize_chr_10[order(-maize_chr_10$Position),]
maize_chr_10_descending[] <- lapply(maize_chr_10_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(maize_chr_10_ascending,
            file="maize_chr_10_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(maize_chr_10_descending,
            file="maize_chr_10_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

#Teosinte Commands
teosinte_genotypes <- fang_data[fang_data$V3 %in% c("ZMPBA", "ZMPIL", "ZMPJA", "Group"),]

transposed_teosinte <- t(teosinte_genotypes)

transposed_teosinte <- as.data.frame(transposed_teosinte)

merged_teosinte <- merge(snp_position, transposed_teosinte, by = 1, all.x = F, all.y = F)

list_of_df_2 <- list()

for (i in 1:10) { 
  list_of_df_2[[i]] <- merged_teosinte[merged_teosinte$Chromosome == i,]
  assign(paste("teosinte_chr_",i,sep=""), list_of_df_2[[i]])
  #This command allows for the creation of multiple files during a 
  #loop with different names.
}

teosinte_chr_1$Position <- as.numeric(as.character(teosinte_chr_1$Position))
teosinte_chr_1_ascending <- teosinte_chr_1[order(teosinte_chr_1$Position),]
teosinte_chr_1_descending <- teosinte_chr_1[order(-teosinte_chr_1$Position),]
teosinte_chr_1_descending[] <- lapply(teosinte_chr_1_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(teosinte_chr_1_ascending,
            file="teosinte_chr_1_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(teosinte_chr_1_descending,
            file="teosinte_chr_1_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

teosinte_chr_2$Position <- as.numeric(as.character(teosinte_chr_2$Position))
teosinte_chr_2_ascending <- teosinte_chr_2[order(teosinte_chr_2$Position),]
teosinte_chr_2_descending <- teosinte_chr_2[order(-teosinte_chr_2$Position),]
teosinte_chr_2_descending[] <- lapply(teosinte_chr_2_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(teosinte_chr_2_ascending,
            file="teosinte_chr_2_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(teosinte_chr_2_descending,
            file="teosinte_chr_2_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

teosinte_chr_3$Position <- as.numeric(as.character(teosinte_chr_3$Position))
teosinte_chr_3_ascending <- teosinte_chr_3[order(teosinte_chr_3$Position),]
teosinte_chr_3_descending <- teosinte_chr_3[order(-teosinte_chr_3$Position),]
teosinte_chr_3_descending[] <- lapply(teosinte_chr_3_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(teosinte_chr_3_ascending,
            file="teosinte_chr_3_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(teosinte_chr_3_descending,
            file="teosinte_chr_3_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

teosinte_chr_4$Position <- as.numeric(as.character(teosinte_chr_4$Position))
teosinte_chr_4_ascending <- teosinte_chr_4[order(teosinte_chr_4$Position),]
teosinte_chr_4_descending <- teosinte_chr_4[order(-teosinte_chr_4$Position),]
teosinte_chr_4_descending[] <- lapply(teosinte_chr_4_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(teosinte_chr_4_ascending,
            file="teosinte_chr_4_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(teosinte_chr_4_descending,
            file="teosinte_chr_4_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

teosinte_chr_5$Position <- as.numeric(as.character(teosinte_chr_5$Position))
teosinte_chr_5_ascending <- teosinte_chr_5[order(teosinte_chr_5$Position),]
teosinte_chr_5_descending <- teosinte_chr_1[order(-teosinte_chr_5$Position),]
teosinte_chr_5_descending[] <- lapply(teosinte_chr_5_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(teosinte_chr_5_ascending,
            file="teosinte_chr_5_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(teosinte_chr_5_descending,
            file="teosinte_chr_5_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

teosinte_chr_6$Position <- as.numeric(as.character(teosinte_chr_6$Position))
teosinte_chr_6_ascending <- teosinte_chr_6[order(teosinte_chr_6$Position),]
teosinte_chr_6_descending <- teosinte_chr_6[order(-teosinte_chr_6$Position),]
teosinte_chr_6_descending[] <- lapply(teosinte_chr_6_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(teosinte_chr_6_ascending,
            file="teosinte_chr_6_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(teosinte_chr_6_descending,
            file="teosinte_chr_6_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

teosinte_chr_7$Position <- as.numeric(as.character(teosinte_chr_7$Position))
teosinte_chr_7_ascending <- teosinte_chr_7[order(teosinte_chr_7$Position),]
teosinte_chr_7_descending <- teosinte_chr_7[order(-teosinte_chr_7$Position),]
teosinte_chr_7_descending[] <- lapply(teosinte_chr_7_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(teosinte_chr_7_ascending,
            file="teosinte_chr_7_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(teosinte_chr_7_descending,
            file="teosinte_chr_7_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

teosinte_chr_8$Position <- as.numeric(as.character(teosinte_chr_8$Position))
teosinte_chr_8_ascending <- teosinte_chr_8[order(teosinte_chr_8$Position),]
teosinte_chr_8_descending <- teosinte_chr_8[order(-teosinte_chr_8$Position),]
teosinte_chr_8_descending[] <- lapply(teosinte_chr_8_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(teosinte_chr_8_ascending,
            file="teosinte_chr_8_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(teosinte_chr_8_descending,
            file="teosinte_chr_8_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

teosinte_chr_9$Position <- as.numeric(as.character(teosinte_chr_9$Position))
teosinte_chr_9_ascending <- teosinte_chr_9[order(teosinte_chr_9$Position),]
teosinte_chr_9_descending <- teosinte_chr_9[order(-teosinte_chr_9$Position),]
teosinte_chr_9_descending[] <- lapply(teosinte_chr_9_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(teosinte_chr_9_ascending,
            file="teosinte_chr_9_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(teosinte_chr_9_descending,
            file="teosinte_chr_9_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

teosinte_chr_10$Position <- as.numeric(as.character(teosinte_chr_10$Position))
teosinte_chr_10_ascending <- teosinte_chr_10[order(teosinte_chr_10$Position),]
teosinte_chr_10_descending <- teosinte_chr_10[order(-teosinte_chr_10$Position),]
teosinte_chr_10_descending[] <- lapply(teosinte_chr_10_descending, gsub, pattern = "?", replacement = "-", fixed = TRUE)

write.table(teosinte_chr_10_ascending,
            file="teosinte_chr_10_ascending.csv",
            sep=",", quote=FALSE, row.names=FALSE)
write.table(teosinte_chr_10_descending,
            file="teosinte_chr_10_descending.csv",
            sep=",", quote=FALSE, row.names=FALSE)

#Graphing Attempts.
maize_chr_1 <- maize_chr_1[,-(1:3)]
teosinte_chr_1 <- teosinte_chr_1[,-(1:3)]
snp_count_chr_1 <- (nrow(maize_chr_1)*ncol(maize_chr_1)) + (nrow(teosinte_chr_1)*ncol(teosinte_chr_1))

maize_chr_2 <- maize_chr_2[,-(1:3)]
teosinte_chr_2 <- teosinte_chr_2[,-(1:3)]
snp_count_chr_2 <- (nrow(maize_chr_2)*ncol(maize_chr_2)) + (nrow(teosinte_chr_2)*ncol(teosinte_chr_2))

maize_chr_3 <- maize_chr_3[,-(1:3)]
teosinte_chr_3 <- teosinte_chr_3[,-(1:3)]
snp_count_chr_3 <- (nrow(maize_chr_3)*ncol(maize_chr_3)) + (nrow(teosinte_chr_3)*ncol(teosinte_chr_3))

maize_chr_4 <- maize_chr_4[,-(1:3)]
teosinte_chr_4 <- teosinte_chr_4[,-(1:3)]
snp_count_chr_4 <- (nrow(maize_chr_4)*ncol(maize_chr_4)) + (nrow(teosinte_chr_4)*ncol(teosinte_chr_4))

maize_chr_5 <- maize_chr_5[,-(1:3)]
teosinte_chr_5 <- teosinte_chr_5[,-(1:3)]
snp_count_chr_5 <- (nrow(maize_chr_5)*ncol(maize_chr_5)) + (nrow(teosinte_chr_5)*ncol(teosinte_chr_5))

maize_chr_6 <- maize_chr_6[,-(1:3)]
teosinte_chr_6 <- teosinte_chr_6[,-(1:3)]
snp_count_chr_6 <- (nrow(maize_chr_6)*ncol(maize_chr_6)) + (nrow(teosinte_chr_6)*ncol(teosinte_chr_6))

maize_chr_7 <- maize_chr_7[,-(1:3)]
teosinte_chr_7 <- teosinte_chr_7[,-(1:3)]
snp_count_chr_7 <- (nrow(maize_chr_7)*ncol(maize_chr_7)) + (nrow(teosinte_chr_7)*ncol(teosinte_chr_7))

maize_chr_8 <- maize_chr_8[,-(1:3)]
teosinte_chr_8 <- teosinte_chr_8[,-(1:3)]
snp_count_chr_8 <- (nrow(maize_chr_8)*ncol(maize_chr_8)) + (nrow(teosinte_chr_8)*ncol(teosinte_chr_8))

maize_chr_9 <- maize_chr_9[,-(1:3)]
teosinte_chr_9 <- teosinte_chr_9[,-(1:3)]
snp_count_chr_9 <- (nrow(maize_chr_9)*ncol(maize_chr_9)) + (nrow(teosinte_chr_9)*ncol(teosinte_chr_9))

maize_chr_10 <- maize_chr_10[,-(1:3)]
teosinte_chr_10 <- teosinte_chr_10[,-(1:3)]
snp_count_chr_10 <- (nrow(maize_chr_10)*ncol(maize_chr_10)) + (nrow(teosinte_chr_10)*ncol(teosinte_chr_10))

total_snp_count <- append(snp_count_chr_1, snp_count_chr_2)
total_snp_count <- append(total_snp_count, snp_count_chr_3)
total_snp_count <- append(total_snp_count, snp_count_chr_4)
total_snp_count <- append(total_snp_count, snp_count_chr_5)
total_snp_count <- append(total_snp_count, snp_count_chr_6)
total_snp_count <- append(total_snp_count, snp_count_chr_7)
total_snp_count <- append(total_snp_count, snp_count_chr_8)
total_snp_count <- append(total_snp_count, snp_count_chr_9)
total_snp_count <- append(total_snp_count, snp_count_chr_10)

total_snp_count <- as.data.frame(total_snp_count)
total_snp_count$chromosome <- c(1:10)
ggplot(total_snp_count, aes(chromosome, total_snp_count, fill=as.factor(chromosome))) + geom_bar(stat="identity")