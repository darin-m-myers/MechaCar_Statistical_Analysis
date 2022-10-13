# MechaCar_Statistical_Analysis
## Purpose
The purpose of this analysis is to determine relationhsips between the values provided in the data source dealing with various metrics for car quality.

## Linear Regression to Predict MPG
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - intercept
    - vehicle_length
    - ground_clearance
2. Is the slope of the linear model considered to be zero? Why or why not?
    - The slope of the model would be considered to be *not zero* as there are variables that contribute a non-random amount of variance to the mpg values
3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - Yes. The r-squared value of the model is high at 0.71 and the p-value is signifigant since it is well below 0.05 at 5.35e-11 which means at least one of the variables is significantly realated to the mpg.

## Summary Statistics on Suspension Coils
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    -The overall summary shows that in general the variance is below the 100 lbs per square inch threshold. However when reviewing each individual lot, Lot3 fails this design spec as the variance is over 100 lbs per square inch at 170.

## T-Tests on Suspension Coils
-The p-value over all manufacturing lots is not significantly different from the population mean of 1500, though it is only slightly above 0.5 at 0.06028. This means that overall, the sample of three lots is a fairly good representation of the population of data.
-Lot1 with a p-value of 1 and Lot2 with a p-value pf 0.6072 do not vary significatnly from 1500, however Lot3, with a p-value of 0.04168 does vary signifigantly from 1500. Lot3 variance is high which is contributing to the overall variance of the samples from the population data.

# Study Design: MechaCar vs Competition
The saftey rating of a vehicle is significantly imporant to the customer. If a car is not safe to drive, it doesn't matter how cheap it is to buy or how many miles per gallon it gets on the highway. In this study, the saftey rating metric will be tested in comparison to the competition. The null hypothesis is that the saftey rating of the MechaCar is not significantly different from the competition. The alternative hypothesis is tha the saftey rating of the MechaCar *is* significantly different from the competition. In order to test this hypothesis, the saftey raitings of a sample of the MechaCar and a sample of the competition vehicles will be compared using a two sample t-Test to determine if their saftey ratings are significantly different. In order to run this test, safety rating data from both MechaCar testing and from Competition testing will be needed with similar constraints.