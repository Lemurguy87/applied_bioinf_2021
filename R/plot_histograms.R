
setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/stacks")

par(mfrow=c(3,3))
pdf("histograms_stacks.pdf")
qual<- read.table("v_cardui_site_quality.lqual", header = TRUE)
hist(qual$QUAL, main="Site quality")

miss<- read.table("v_cardui_missing_ind.imiss", header = TRUE)
hist(miss$F_MISS, main="Missingnes per individual")

miss_site<- read.table("v_cardui_missing_site.lmiss", header = TRUE)
hist(miss_site$F_MISS, main="Missingness per site")

site_mean_depth<- read.table("v_cardui_site_mean_depth_analysis.ldepth.mean", header = TRUE)
hist(site_mean_depth$MEAN_DEPTH, main="Site mean depth")

site_depth<- read.table("v_cardui_site_depth.ldepth", header = TRUE)
hist(site_depth$SUM_DEPTH, main="Depth per site")

het<- read.table("v_cardui_het_ind.het", header = TRUE)
hist(het$F, main="Inbreeding coefficient per individual")
dev.off()