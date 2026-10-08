# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Fitting Generalized Linear Models for Multivariate Abundance Data Use manyglm (mvabund) With (In) R Software
install.packages("mvabund")
library("mvabund")
# Estimate Fitting Generalized Linear Models for Multivariate Abundance Data Use manyglm (mvabund) With (In) R Software
manyglm = read.csv("https://raw.githubusercontent.com/timbulwidodostp/manyglm/main/manyglm/manyglm.csv",sep = ";")
pres.abs <- cbind(manyglm$Alopacce, manyglm$Alopcune, manyglm$Alopfabr, manyglm$Arctlute, manyglm$Arctperi, manyglm$Auloalbi, 
manyglm$Pardlugu, manyglm$Pardmont, manyglm$Pardnigr, manyglm$Pardpull, manyglm$Trocterr, manyglm$Zoraspin )
soil.dry <- manyglm$soil.dry
bare.sand <- manyglm$bare.sand
moss <- manyglm$moss
manyglm <- manyglm(pres.abs ~ soil.dry + bare.sand + moss, family = "binomial")
manyglm_ <- manyglm(pres.abs ~ soil.dry + bare.sand + moss, family = "poisson")
summary(manyglm)
summary(manyglm_)
# Fitting Generalized Linear Models for Multivariate Abundance Data Use manyglm (mvabund) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished