
setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo")
miss_ipyrad<- read.table("v_cardui_missing_ind.imiss", header = TRUE)

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/stacks")
miss_stacks<- read.table("v_cardui_missing_ind.imiss", header = TRUE)

miss = data.frame(miss_ipyrad$F_MISS,miss_stacks$F_MISS)
chisq.test(miss)


setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo")
miss_ipyrad<- read.table("v_cardui_missing_ind.imiss", header = TRUE)

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/stacks")
miss_stacks<- read.table("v_cardui_missing_ind.imiss", header = TRUE)

miss = data.frame(miss_ipyrad$F_MISS,miss_stacks$F_MISS)
chisq.test(miss)
