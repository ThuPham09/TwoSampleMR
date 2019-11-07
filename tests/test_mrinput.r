# library(TwoSampleMR)
library(devtools)
load_all()
toggle_api("release")
a <- extract_instruments(300)
b <- extract_outcome_data(a$SNP, 7)
dat <- harmonise_data(a,b)
o1 <- dat_to_MRInput(dat, get_correlations=FALSE)
o2 <- dat_to_MRInput(dat, get_correlations=TRUE)

MendelianRandomization::mr_ivw(o1[[1]])
MendelianRandomization::mr_ivw(o2[[1]])


