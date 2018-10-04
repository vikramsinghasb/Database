rm(list = ls())
setwd("C:/Users/Admin/Desktop/ProjectsR/DataBase/Test/")

library(readxl)
filenames <- list.files(pattern = "xlsx")
filenames

## Reading data files as creating seperate Dataframes
datfr1=read_xlsx(filenames[1],sheet = 1)
datfr2=read_xlsx(filenames[2],sheet = 1)
datfr3=read_xlsx(filenames[3],sheet = 1)
datfr4=read_xlsx(filenames[4],sheet = 1,col_types = c("text", "text", "text", 
                                                      "text", "numeric", "numeric", "text", 
                                                      "numeric", "numeric", "numeric", 
                                                      "text", "text", "text", "text"))
datfr5=read_xlsx(filenames[5],sheet = 1)
datfr6=read_xlsx(filenames[6],sheet = 1)
datfr7=read_xlsx(filenames[7],sheet = 1)
datfr8=read_xlsx(filenames[8],sheet = 1)
datfr9=read_xlsx(filenames[9],sheet = 1)
datfr10=read_xlsx(filenames[10],sheet = 1)
datfr11=read_xlsx(filenames[11],sheet = 1)
datfr12=read_xlsx(filenames[12],sheet = 1,col_types = c("numeric", "text", "text", 
                                                        "numeric", "numeric"))
datfr13=read_xlsx(filenames[13],sheet = 1)
datfr14=read_xlsx(filenames[14],sheet = 1)
datfr15=read_xlsx(filenames[15],sheet = 1,col_types = c("text", "text", "text","numeric", 
                                                       "numeric", "numeric", "numeric", 
                                                       "text", "text", "text", "text", "text", 
                                                       "text", "numeric", "numeric", "text"))
datfr16=read_xlsx(filenames[16],sheet = 1)
datfr17=read_xlsx(filenames[17],sheet = 1,col_types = c("numeric", "text", "text", 
                                                        "date", "numeric", "numeric", "text"))

datfr18=read_xlsx(filenames[18],sheet = 1,col_types = c("numeric", "text", "text", 
                                                        "date", "text", "numeric", "text", 
                                                        "text", "numeric", "text", "text", 
                                                        "text", "text", "text", "text"))
datfr19=read_xlsx(filenames[19],sheet = 1)
datfr20=read_xlsx(filenames[20],sheet = 1)



## Assigning Header and Alligning to Master set

names(datfr1) <- c("NAME" ,"ADDRESS1" ,"ADDRESS2" ,"ADDRESS3" ,"CITY" ,"PINCODE" ,"PHONE1" ,"PHONE2" ,"FAX" ,"OFFICE_TELEPHONE" ,"EXT")
names(datfr2) <- c("NAME" ,"ADDRESS1" ,"ADDRESS2" ,"ADDRESS3" ,"CITY" ,"PINCODE" ,"PHONE1" ,"PHONE2" ,"FAX" ,"OFFICE_TELEPHONE" ,"EXT")
datfr3 <- datfr3[,1:2]
names(datfr3) <- c("NAME" ,"MOBILE1")
names(datfr4) <- c("CATEGORY" ,"BRANCH" ,"COMPANY" ,"ADDRESS1" ,"ADDRESS2" ,"ADDRESS3" ,"CITY" ,"PINCODE" ,"PHONE1" ,"FAX" ,"EMAIL" ,"WEBSITE" ,"NAME","KEYWORDS")
names(datfr5) <- c("NAME" ,"PHONE1")
names(datfr6) <- c("NAME" ,"ADDRESS1" ,"ADDRESS2" ,"ADDRESS3" ,"CITY" ,"PINCODE" ,"PHONE1" ,"PHONE2" ,"LANDLINE" ,"MOBILE1" ,"FAX" ,"OFFICE_TELEPHONE" ,"EXT")
names(datfr7) <- c("NAME" ,"MOBILE1")
datfr8 <- datfr8[,3:7]
names(datfr8) <-c("MOBILE1","NAME","ADDRESS1","CITY","PHONE1")
datfr9 <- datfr9[,3:7]
names(datfr9) <-c("MOBILE1","NAME","ADDRESS1","CITY","PHONE1")
datfr10 <- datfr10[,3:7]
names(datfr10) <-c("MOBILE1","NAME","ADDRESS1","CITY","PHONE1")
datfr11 <- datfr11[,3:7]
names(datfr11) <-c("MOBILE1","NAME","ADDRESS1","CITY","PHONE1")
datfr12 <- datfr12[,2:5]
names(datfr12) <-c("NAME","CITY","PINCODE","MOBILE1")
names(datfr13) <- c("FNAME" ,"MNAME" ,"LNAME" ,"NAME","ADDRESS1" ,"AREA" ,"CITY" ,"PINCODE" ,"EMAIL" ,"STDCODE" ,"LANDLINE" ,"MOBILE1" ,"SEX" ,"CAR MODEL","PURCHASE YEAR")
names(datfr14) <- c("NAME" ,"PHONE1")
names(datfr16) <- c("NAME" ,"ADDRESS1" ,"ADDRESS2" ,"ADDRESS3" ,"CITY" ,"PINCODE" ,"PHONE1" ,"PHONE2" ,"LANDLINE" ,"MOBILE1" ,"FAX" ,"OFFICE_TELEPHONE" ,"EXT")


# str(datfr17)
# datfr17 <- datfr17[,2:7]
# datfr17$DOB <- as.Date(datfr17$DOB)
# str(datfr17)
# 
# names(datfr18) <- c("NAME" ,"SEX" ,"DOB" ,"LANLINE" ,"MOBILE1" ,"EMAIL" ,"ADDRESS1" ,"AGE" ,"QUALIFICATION" ,"CURRENT DESIGNATION" ,"SALARY" ,"CITY" ,"CURRENT EMPLOYER" ,"EXPERIENCE")
names(datfr19) <- c("NAME" ,"ADDRESS1" ,"ADDRESS2" ,"ADDRESS3" ,"CITY" ,"PINCODE" ,"PHONE1" ,"PHONE2" ,"LANDLINE" ,"MOBILE1" ,"FAX" ,"OFFICE_TELEPHONE" ,"EXT")
names(datfr20) <- c("NAME" ,"ADDRESS1" ,"ADDRESS2" ,"ADDRESS3" ,"CITY" ,"PINCODE" ,"PHONE1" ,"PHONE2" ,"LANDLINE" ,"MOBILE1" ,"FAX" ,"OFFICE_TELEPHONE" ,"EXT")


library(dplyr)

Hyd_All <- list (data.frame(datfr1) ,data.frame(datfr2) ,data.frame(datfr3) ,data.frame(datfr4)
                ,data.frame(datfr5),data.frame(datfr6),data.frame(datfr7),data.frame(datfr8),data.frame(datfr9)
                ,data.frame(datfr10),data.frame(datfr11),data.frame(datfr12),data.frame(datfr13),data.frame(datfr14)
                ,data.frame(datfr15),data.frame(datfr16),data.frame(datfr19),data.frame(datfr20))

Hyd_Final <- rbind_list(Hyd_All)
Hyd_Final <- Hyd_Final[1:30]
write.table(Hyd_Final,file="Output_011018_Hyd.txt",sep = "|")

test <- distinct(Hyd_Final)
write.table(test,file="NoDup_Output_Hyd.txt",sep = "|")


