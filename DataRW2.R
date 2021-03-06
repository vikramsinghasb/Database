rm(list=ls())
setwd("C:/Users/Admin/Desktop/ProjectsR/DataBase/All")
files <- list.files(pattern = ".xlsx")
files

library(readxl)
library(dplyr)

for (i in 1:length(files)) {
  filename=files[i]
  infile <- read_xlsx(files[i],sheet = 1,col_names = TRUE,n_max = 0, trim_ws = TRUE)
  mydata <- data.frame(FName=character(),LName=character(),Mobile1=numeric(),Mobile2=numeric(),
                         DIRECT_LINE=numeric(),CATEGORY=character(),COMPANY=character(),EMAIL=character(),WEBSITE=character(),Gender=character(),DOB=numeric(),Age=character(),Current_Employer=character(),Experience=numeric(),Qualification=character(),Current_Designation=character(),Status=character(),Channel=character(),stringsAsFactors=FALSE)
  names(mydata)=c("FName","LName","Mobile1","Mobile2","DIRECT_LINE","CATEGORY","COMPANY","EMAIL","WEBSITE","Gender","DOB","Age","Current_Employer ","Experience","Qualification","Current_Designation","Status","Channel")
  data <- cbind(infile,mydata)
  
  names(data)[names(data)=="CUSTOMER_NAME"] <- "NAME"
  names(data)[names(data)=="ATH3_NAME_LINE_1"] <- "NAME"
  names(data)[names(data)=="ATH3_ADDR_1"] <- "ADRESS1"
  names(data)[names(data)=="ATH3_ADDR_2"] <- "ADRESS2"
  names(data)[names(data)=="ATH3_ADDR_3"] <- "ADRESS3"
  names(data)[names(data)=="ATH3_ADDR_4"] <- "ADRESS4"
  names(data)[names(data)=="ATH3_CITY"] <- "C1TY"
  names(data)[names(data)=="ATH3_ZIP_CODE"] <- "PINCODE"
  names(data)[names(data)=="Phone1"] <- "PHONE1"
  names(data)[names(data)=="Phone2"] <- "PHONE2"
  names(data)[names(data)=="PTH2_068_RES_TEL_NBR"] <- "RESIDENT PHONE"
  names(data)[names(data)=="PTH2_069_MOBILE_PAGER_NBR"] <- "MOBILE"
  names(data)[names(data)=="PTH2_321_OFFICE_FAX"] <- "FAX"
  names(data)[names(data)=="PTH2_322_OFFICE_TELEPHONE"] <- "OFF1CE_TELEPHONE"
  names(data)[names(data)=="EXT"] <- "EXT"
  assign(x=files[i],value = data)
  # y <- cat(files[i], sep="\n",names(data))
    }

# install.packages(openxlsx)
# library(openxlsx)
# write.xlsx(data,"C:/Users/Admin/Desktop/ProjectsR/DataBase/All/export10.xlsx",sheetName = "Sheet1",col.names = TRUE,showNA=FALSE)

