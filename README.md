# YAAHProject

## Description of Project
This project contains bar charts for "The Evaluation of California's Homeless
Housing Assistance and Prevention (HHAP) Youth Set-Aside Funding: 2024 Interim Report" 
This project also contains the workbook for this [Tableau Dashboard](https://public.tableau.com/shared/3RTPDB8NS?:display_count=n&:origin=viz_share_link)  
Also included is the final report in pdf format

### Description of Individual Files
* %AVGEXP.csv and Threshold.csv are the data files I used for Tableau
* The workbook is the Interim Report.twbx file
* LoadFile.R contains code to load csv files to R. It also contains drafts of code for many of the bar charts
*  Please note I received the data as tables. In order to use ggplot, I transformed the data to long format using tidyr's pivot_longer
* Each Bar Chart has two versions. One version colored by Round (final bar chart) and one version colored by category (first draft)
* Overall.R contains the final bar chart (titled: Percentage of HHAP Communities Statewide who have Met the Minimum Youth Set-Aside Obligation and Expenditure by HHAP Round) 
* Overall2.R contains the final bar chart (titled: Average Percentage of Youth Set-Aside Expenditures by HHAP Round) 
* GEOTYPE_AVGExpenditures2.R contains the final bar chart (titled "Average Percentage of Youth Set-Aside
Expenditures by Urbanicity and HHAP Round" in final report) where the y-axis is the average percent youth set-aside expenditure and the x-axis is grouped by Urbanicity within each Round. Colors represent Urbanicity. 
* GEOTYPE_AVGExpenditures.R contains the first bar chart where the y-axis is the average percent youth set-aside expenditure and the x-axis is grouped by Urbanicity within each Round. Colors represent Round.
* GEOTYPE_Threshold Analysis.R contains the first bar chart colored by round (commented out) and the final bar chart (titled: Percentage of HHAP Communities Statewide who Met the Minimum Youth Set-Aside Obligation and Expenditure by Urbanicity and
HHAP Round). 
* HPI_AVGxpenditures1.R contains the first bar chart colored by Round
* HPI_AVGxpenditures2.R contains the final bar chart (titled "Average Percentage of Youth Set-Aside Expenditures by HPI Tertile and HHAP Round"
* HPI_ThresholdAnalysis.R  contains the first bar chart colored by round (commented out) and the final bar chart (titled: Percentage of HHAP Communities Statewidewho Met the Minimum Youth Set-Aside Obligation and Expenditure by HPI Tertile and HHAP Round). 
* YHDP_AVGExpenditures.R contains the final bar chart (titled: Average Percentage of Youth Set-Aside Expenditures by YHDP Status and HHAP Round)
* YHDP_ThresholdAnalyis.R contains the final bar chart (titled: Percentage of HHAP Communities Statewide Who Met the Minimum Youth Set-Aside Requirement by YHDP Status and HHAP Round)




