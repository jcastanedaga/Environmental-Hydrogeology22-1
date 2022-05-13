NPWD <- read.csv("NPWD.csv", header = TRUE, sep = ";", row.names = "ID", check.names = FALSE)
NPWD
summary(NPWD)
library(FactoMineR)
library(FactoInvestigate)
library(Factoshiny)
resN <- PCA(NPWD, quanti.sup = 13:14, quali.sup = 1, ncp = Inf)
options(ggrepel.max.overlaps = Inf)
resN$eig

re.hcpc <- HCPC(resN, kk=Inf, min = 3, max = 10, consol = TRUE)
