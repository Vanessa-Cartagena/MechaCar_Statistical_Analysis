# MechaCar_Statistical_Analysis

The MechaCar, the newest prototype from AutosRUs, is experiencing production issues that are obstructing the manufacturing team's progress. Upper management at AutosRUs has requested that Jeremy and the data analytics team evaluate the production data in order to find any insights that would be helpful to the manufacturing team.

To-do list:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

<img width="776" alt="Screen Shot 2022-10-03 at 11 51 34 AM" src="https://user-images.githubusercontent.com/105958160/193639788-32e3f4c3-190b-4fb8-961a-b886d21942b3.png">
These results indicate that the linear mpg model exhibits a non-random amount of variance from vehicle length and ground clearance. The multivariate linear regression formula for mpg yields a slope that is not zero: -.01 + 6.267 (vehicle length) +.001 (vehicle weight) +.069 (spoiler angle) + 3.546 (ground clearance) -3.411 (AWD). The dataset's R-squared value of 0.7149 demonstrates its effectiveness and is a fair correlation for the dataset.

## Summary Statistics on Suspension Coils

<img width="863" alt="Screen Shot 2022-10-03 at 1 55 00 PM" src="https://user-images.githubusercontent.com/105958160/193646109-2f58669f-578d-47e2-a324-2f1fd6c11927.png">
This sample's mean was found to be 1498.78, while the median was determined to be 1500.

<img width="882" alt="Screen Shot 2022-10-03 at 1 56 16 PM" src="https://user-images.githubusercontent.com/105958160/193646138-4f931b8a-8a2d-4d35-87b8-1c8b6a4928c1.png">
The variance of the suspension coils must not be greater than 100 pounds per square inch, according to the design specifications for the MechaCar suspension coils. With the exception of Lot 3, whose variance was 170 and above the design specification's limit of 100 psi, lots 1 and 2 all satisfy the design specifications.

## T-Tests on Suspension Coils

<img width="409" alt="Screen Shot 2022-10-03 at 2 27 55 PM" src="https://user-images.githubusercontent.com/105958160/193651681-60aafd3e-5034-41e1-a125-80fbeb1b7060.png">

### Lot 1
p-value = 1 > 0.05
<img width="516" alt="Screen Shot 2022-10-03 at 2 28 35 PM" src="https://user-images.githubusercontent.com/105958160/193701487-214b35f4-8826-4127-a7ea-bafaf871cfe8.png">

### Lot 2
p-value = 0.6072 > 0.05
<img width="513" alt="Screen Shot 2022-10-03 at 7 04 45 PM" src="https://user-images.githubusercontent.com/105958160/193701519-5a9197d4-955e-4b32-a126-8a863539aeac.png">

### Lot 3
p-value = 0.04168 < 0.05
<img width="520" alt="Screen Shot 2022-10-03 at 7 04 52 PM" src="https://user-images.githubusercontent.com/105958160/193701543-67cca072-d3ee-4032-bf12-0efc911f2d90.png">

The PSI throughout Lot 3 is statistically distinct from the population mean, as shown by the data above, where Lot3's p-value is less than 0.05 percent. As a result, the null hypothesis can be rejected. However, because Lot 1 and Lot 2 both have p-values that are over the level of significance, we can not reject the null hypothesis and can conclude that there isn't any significant difference between Lot 1 and Lot 2. Instead, Lot 1 and Lot 2's PSIs are comparable to the population mean. 

## Study Design: MechaCar vs Competition
You can provide metrics that would be interesting to a consumer when comparing the performance of MechaCar vehicles to that of vehicles from other manufacturers, such as price, city or highway fuel efficiency, horse power, maintenance costs, or safety rating.
In these times of inflation, it could be worthwhile to evaluate the performance in relation to the competition in terms of price, fuel efficiency on cities and highways, and maintenance costs. We would examine whether there are significant differences statistically between the MechaCar and competitive models in these metrics. The null hypothesis would determine that these metrics do not differ significantly from the competition whereas the alternative hypothesis would determine that the MechaCar does differ in these metrics ahead of the competition. We would need to collect price, city or highway fuel economy, and maintenance cost figures from MechCar as well as the competition to conduct this analysis. Customers that purchase MechaCars would prefer models with lower prices, easier maintenance, and better city or highway fuel efficiency. They would want this to be accurate without impairing the worth and security of their automobiles.
