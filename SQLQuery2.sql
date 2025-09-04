Select Gender, Count(Gender) as TotalCount,
Count(Gender)*100.0/ (Select Count(*) from stg_Churn) as Persentage
From stg_Churn
Group By Gender


Select Contract, Count(Contract) as TotalCount,
Count(Contract)*1.0/ (Select Count(*) from stg_Churn) as Persentage
From stg_Churn
Group By Contract


Select Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue)/ (Select Sum(Total_Revenue) from Stg_Churn) * 100 as RevPercentage
From Stg_Churn
Group by Customer_Status


Select State, Count (State) as TotalCount,
Count(state)*100.0/(Select Count(*) from Stg_Churn) as Percentage
From Stg_Churn
Group By State
Order By Percentage desc


Select Distinct Internet_Type
from Stg_Churn

