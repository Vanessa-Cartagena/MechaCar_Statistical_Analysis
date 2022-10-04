#Deliverable 1

#3 Use the library() function to load the dplyr package.
library(dplyr)

#4 Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#5 Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
colnames(MechaCar_mpg)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)

#6 Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))

#Deliverable 2

#2 In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
susp_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#3 Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary<-summarize(susp_coil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

#4 Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <-summarize(group_by(susp_coil, Manufacturing_Lot), Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary

#Deliverable 3

#1 write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(susp_coil$PSI,mu=1500)

#2 write three more RScripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(susp_coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(susp_coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(susp_coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
