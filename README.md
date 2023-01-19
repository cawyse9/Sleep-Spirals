# Sleep-Spirals: Visualization of human circadian rhythms generated from accelerometry data




## Background</summary>
<img align="right" width=300 src="https://user-images.githubusercontent.com/29300100/195515257-780e10eb-f95e-45d9-95ed-c7a42a74e612.png">
Circadian rhythms are patterns in behaviour and physiology that recur on a 24 hour time period, such as the sleep-wake cycle and daily changes in body temperature.  Advances in wrist-worn sensor technology and data analytics allow physical activity, sleep and circadian rhythms to be monitored unobtrusively over long time periods. Visualization of the patterns and levels of daily physical activity over long time periods can be used to inform research participants about circadian rhythms and to provide them with tangible evidence of the effect of interventions. 
 </details>
 
##  Objectives
To describe a novel data visualization for communicating longitudinal rhythms in physical activity.

##  Methods
<img align="right" width=170 src="https://user-images.githubusercontent.com/29300100/195515689-7d6a3329-e15d-4f60-a135-1f171d68037d.png">
Daily physical activity was monitored using a triaxial accelerometer (Geneactiv, UK) worn on the wrist for 7 days.
$~$
Data are measurements of gravity (g) in three axes (x, y, z) sampled at 100Hz.  The Euclidean norm (square root of the sum of the squares) of these measurements was used to summarise the information at each time point and the data were binned to 1 minute or 1 hour epochs.  These data are taken to approximate human activity over 24h.  The R package ggplot2 was used to contruct polar plots of activity against time with epoch represented by tiles or segments.  The level of activity was shown by a colour gradient using the viridis package. Axes and tick mark labels were customised to improve the aesthetic quality of the plot.  This allowed the changes in daily locomotor activity and variations in circadian rhythms over the 7 days of recording to be visualized.

The R-code is here:  

[Processing and cleaning accelerometery raw data](/analysis/Spirals_data_cleaning.R)  

[Plotting a sleep spiral in segments or tiles](/analysis/Spirals_plotting.R)  

[Batch plotting sprials](https://github.com/cawyse9/Sleep-Spirals/blob/main/analysis/Spirals_batch%20plot.R)  





Novel methods for monitoring circadian rhythms could be useful clinical tools in the management of many chronic diseases. Capturing clinical information through data visualisations such as sleep spirals is an innovative way of engaging patients in treatment and of incentivising lifestyle change.

## Acknowledgements
<img align="right" height=80 src="https://user-images.githubusercontent.com/29300100/195516741-adf8db9d-c284-4667-967b-9469ca2428b5.png"> <img align="right" height=80 src="https://user-images.githubusercontent.com/29300100/195517055-f7731b8e-8d6b-4915-88ea-52e9427d8a04.png">


Dr Lorna Lopez, School of Biology, Maynooth University, Maynooth  
Dr Grace O’Malley, School of Physiotherapy, Royal College of Surgeons in Ireland, Beaux Lane House, Dublin

