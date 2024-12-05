library(survival)
library(survminer)

library(readxl)


data_colorectal <- read_excel ('E:/Skripsi_Bismillah/Data Skripsi Survival/colorectal_survival.xlsx')
head(data_colorectal)

y1 <- data_colorectal$Age
y2 <- data_colorectal$Sex
y3 <- data_colorectal$MStatus
y4 <- data_colorectal$Edu_status
y5 <- data_colorectal$Family_history
y6 <- data_colorectal$Alcohol
y7 <- data_colorectal$Tobacco
y8 <- data_colorectal$Imaging
y9 <- data_colorectal$Location
y10 <- data_colorectal$Hist_type
y11 <- data_colorectal$Hist_grade
y12 <- data_colorectal$TNM_stage
y13 <- data_colorectal$Clinical_stage
y14 <- data_colorectal$Lymph_node
y15 <- data_colorectal$Vascular_Invasion
y16 <- data_colorectal$Residual_Tumor
y17 <- data_colorectal$CEA_baseline
y18 <- data_colorectal$Dist_metastasis
y19 <- data_colorectal$Liver
y20 <- data_colorectal$Lung
y21 <- data_colorectal$Peritonuem
y22 <- data_colorectal$VSTATUS
y23 <- data_colorectal$statusfn
y24 <- data_colorectal$Chemotherapy
y25 <- data_colorectal$Surgery
y26 <- data_colorectal$Radiotherapy

T_colorectal <- data_colorectal$TIME
Y_colorectal <- data_colorectal$survive

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ data_colorectal$Age, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ data_colorectal$Age, data = data)
summary(res.cox)

data_colorectal$Sex <- factor(data_colorectal$Sex, levels = c("0", "1"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Sex, data = data_colorectal)
summary(cox_model)

data_colorectal$MStatus <- factor(data_colorectal$MStatus, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ MStatus, data = data_colorectal)
summary(cox_model)

data_colorectal$Edu_status <- factor(data_colorectal$Edu_status, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Edu_status, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Hist_grade <- factor(data_colorectal$Hist_grade, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Hist_grade, data = data_colorectal)
summary(cox_model)

data_colorectal$TNM_stage <- factor(data_colorectal$TNM_stage, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ TNM_stage, data = data_colorectal)
summary(cox_model)

data_colorectal$Clinical_stage <- factor(data_colorectal$Clinical_stage, levels = c("1", "2", "3"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Clinical_stage, data = data_colorectal)
summary(cox_model)

data_colorectal$Family_history <- factor(data_colorectal$Family_history, levels = c("0", "1"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Family_history, data = data_colorectal)
summary(cox_model)

data_colorectal$Hist_type <- factor(data_colorectal$Hist_type, levels = c("1", "2"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Hist_type, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)

data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)


fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ Y_colorectal, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ Y_colorectal, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y1, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y1, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y2, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y2, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y3, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y3, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y4, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y4, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y5, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y5, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y6, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y6, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y7, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y7, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y8, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y8, data = data)
summary(res.cox)


data_colorectal$Location <- factor(data_colorectal$Location, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_colorectal, Y_colorectal) ~ Location, data = data_colorectal)
summary(cox_model)
fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y9, data = data)
ggsurvplot(fit1, data = data)


res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y9, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y10, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y10, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y11, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y11, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y12, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y12, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y13, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y13, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y14, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y14, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y15, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y15, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y16, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y16, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y17, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y17, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y18, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y18, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y19, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y19, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y20, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y20, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y21, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y21, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y22, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y22, data = data)
summary(res.cox)



fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y24, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y24, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y25, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y25, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_colorectal,Y_colorectal) ~ y26, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_colorectal,Y_colorectal) ~ y26, data = data)
summary(res.cox)

res.cox<-coxph(Surv(T_colorectal,Y_colorectal) ~ y1+y2+y3+y4+y5+y6+y7+y8+y9+y10+y11+y12+y13+y14+y15+y16+y17+y18+y19+y20+y21+y22+y23+y24+y25+y26, data = data)
summary(res.cox)
res.cox


data_esophageal <- read_excel ('F:/Skripsi_Bismillah/Data Skripsi Survival/esophageal_survival.xlsx')
head(data_esophageal)

family_history <- data_esophageal$family_history
Duration_all <- data_esophageal$Duration_all
CT_Scan <- data_esophageal$CT_Scan
US <- data_esophageal$US
Dist_metas <- data_esophageal$Dist_metas
Adj_organ <- data_esophageal$Adj_organ
Chemotherapy <- data_esophageal$Chemotherapy
Radiotherapy <- data_esophageal$Radiotherapy
Hospital_stay <- data_esophageal$Hospital_stay
Status_patient <- data_esophageal$Status_patient

z1 <- data_esophageal$Age
z2 <- data_esophageal$Education
z3 <- data_esophageal$Sex
z4 <- data_esophageal$Mstatus
z5 <- data_esophageal$Alcohol
z6 <- data_esophageal$Khat
z7 <- data_esophageal$Tobacco
z8 <- data_esophageal$family_history
z9 <- data_esophageal$Diff_swallowing
z10 <- data_esophageal$Pain_swallowing
z11 <- data_esophageal$Weight_loss
z12 <- data_esophageal$Vomiting
z13 <- data_esophageal$Heart_burn
z14 <- data_esophageal$Cough
z15 <- data_esophageal$Chest_pain
z16 <- data_esophageal$Duration_all
z17 <- data_esophageal$Ba_swallow
z18 <- data_esophageal$Endoscopy
z19 <- data_esophageal$CT_Scan
z20 <- data_esophageal$Biopsy
z21 <- data_esophageal$CXR
z22 <- data_esophageal$US
z23 <- data_esophageal$Hist_grade
z24 <- data_esophageal$Dist_metas
z25 <- data_esophageal$Adj_organ
z26 <- data_esophageal$Gastrostomy_feeding
z27 <- data_esophageal$Surgery
z28 <- data_esophageal$T_Hital_eso
z29 <- data_esophageal$T_Thoracic_eso
z30 <- data_esophageal$Laparatomy
z31 <- data_esophageal$Chemotherapy
z32 <- data_esophageal$Radiotherapy
z33 <- data_esophageal$Hospital_stay
z34 <- data_esophageal$Status_patient
z35 <- data_esophageal$lama_rawat_inap

T_esophageal <- data_esophageal$Time_to_death
Y_esophageal <- data_esophageal$survive

data_esophageal$Education <- factor(data_esophageal$Education, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_esophageal, Y_esophageal) ~ Education, data = data_esophageal)
summary(cox_model)

data_esophageal$Mstatus <- factor(data_esophageal$Mstatus, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_esophageal, Y_esophageal) ~ Mstatus, data = data_esophageal)
summary(cox_model)

data_esophageal$Hist_grade <- factor(data_esophageal$Hist_grade, levels = c("1", "2", "3", "4", "5"))
cox_model <- coxph(Surv(T_esophageal, Y_esophageal) ~ Hist_grade, data = data_esophageal)
summary(cox_model)

data_esophageal$Dist_metas <- factor(data_esophageal$Dist_metas, levels = c("1", "2", "3", "4"))
cox_model <- coxph(Surv(T_esophageal, Y_esophageal) ~ Dist_metas, data = data_esophageal)
summary(cox_model)

data_esophageal$Adj_organ <- factor(data_esophageal$Adj_organ, levels = c("1", "2", "3", "4", "5", "6", "7"))
cox_model <- coxph(Surv(T_esophageal, Y_esophageal) ~ Adj_organ, data = data_esophageal)
summary(cox_model)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ family_history, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ family_history, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ Duration_all, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ Duration_all, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ CT_Scan, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ CT_Scan, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ US, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ US, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ Dist_metas, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ Dist_metas, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ Adj_organ, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ Adj_organ, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ Chemotherapy, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ Chemotherapy, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ Radiotherapy, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ Radiotherapy, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ Hospital_stay, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ Hospital_stay, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ Status_patient, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ Status_patient, data = data)
summary(res.cox)


fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z1, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z1, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z2, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z2, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z3, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z3, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z4, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z4, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z5, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z5, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z6, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z6, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z7, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z7, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z8, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z8, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z9, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z9, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z10, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z10, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z11, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z11, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z12, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z12, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z13, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z13, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z14, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z14, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z15, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z15, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z16, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z16, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z17, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z17, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z18, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z18, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z19, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z19, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z20, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z20, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z21, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z21, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z22, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z22, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z23, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z23, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z24, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z24, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z25, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z25, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z26, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z26, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z27, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z27, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z28, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z28, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z29, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z29, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z30, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z30, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z31, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z31, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z32, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z32, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z33, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z33, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z34, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z34, data = data)
summary(res.cox)

fit1 <- survfit(Surv(T_esophageal,Y_esophageal) ~ z35, data = data)
ggsurvplot(fit1, data = data)

res.cox <- coxph(Surv(T_esophageal,Y_esophageal) ~ z35, data = data)
summary(res.cox)


res.cox<-coxph(Surv(T_esophageal,Y_esophageal) ~ z1+z2+z3+z4+z5+z6+z7+z8+z9+z10+z11+z12+z13+z14+z15+z16+z17+z18+z19+z20+z21+z22+z23+z24+z25+z26+z27+z28+z29+z30+z31+z32+z35+z34, data = data)
summary(res.cox)
res.cox
