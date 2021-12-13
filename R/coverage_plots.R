

cov_106 <- read.table("106_sorted_mapping_coverage", header = TRUE)

cov_106_split <- split(cov_106, cov_106$rname)

plot((cov_106_split[["LR999924.1"]][["coverage"]]),main="LR999924.1")

plot(cov_106$coverage, pch=1:16, col=1:15)
legend("topleft",legend=cov_106$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

#pool individuals together and get densities of coverage per chromosome
