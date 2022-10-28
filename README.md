# Sleep-Spirals: Visualization of human circadian rhythms generated from accelerometry data




## Background</summary>
<img align="right" width=300 src="https://user-images.githubusercontent.com/29300100/195515257-780e10eb-f95e-45d9-95ed-c7a42a74e612.png">
Circadian rhythms are patterns in behaviour and physiology that recur on a 24 hour time period, such as the sleep-wake cycle and daily changes in body temperature. These rhythms are not simply a response to environmental changes, but are driven by endogenous timing mechanisms present in every mammalian cell [1]. Circadian clocks are disrupted when time cues such as light exposure and food intake are not synchronised with innate 24h rhythms. Studies in adults have associated circadian disruption with insulin insensitivity, weight gain and obesity [2], and there is some evidence for similar relations in children [3-5]. In addition, childhood obesity is widely associated with disrupted sleep [6], and increased evening time activity [4]. Disrupted sleep in children with obesity appears to be independent of sleep duration [7,8], which is a strong indicator of underlying circadian mechanisms. Studies of circadian rhythms in children with obesity are limited by the difficulties of applying longitudinal 24h sampling protocols, as well as uncertainly about how interventions might be implemented. Advances in wrist-worn sensor technology and data analytics allow physical activity, sleep and circadian rhythms to be monitored unobtrusively over long time periods. This tecchnology has multiple potential applications in the treatment of obesity, since reduced physical activity, sleep disruption and disrupted circadian rhythms are all components of both the pathogenesis and morbidity of this condition. Visualization of the patterns and levels of daily physical activity over long time periods can be used to inform children with
obesity about circadian rhythms and to provide them with tangible evidence of the effect of interventions. 
 </details>
 
##  Objectives
To describe a novel data visualization for communicating longitudinal rhythms in physical activity to children and their parents.

##  Methods
<img align="right" width=150 src="https://user-images.githubusercontent.com/29300100/195515689-7d6a3329-e15d-4f60-a135-1f171d68037d.png">
Following ethical approval daily physical activity was monitored in 29 children presenting for treatment of obesity at a tertiary clinic (Table 1). Data were acquired using a triaxial accelerometer (Geneactiv, UK) that the children wore on the wrist for 7 days.
$~$
Data are measurements of gravity (g) in three axes (x, y, z) sampled at 100Hz.  The Euclidean norm (square root of the sum of the squares) of these measurements was used to summarise the information at each time point and the data were binned to 1 minute or 1 hour epochs.  These data are taken to approximate human activity over 24h.  The R package ggplot2 was used to contruct polar plots of activity against time with values represented by tiles or segments.  The level of activity was shown by a colour gradient using the viridis package. Axes and tick mark labels were customised to improve the aesthetic quality of the plot.  This allowed the changes in daily locomotor activity and variations in circadian rhythms over the 7 days of recording to be visualized.

## Discussion

There is increasing evidence that disrupted circadian rhythmicity has a role in the pathophysiology of childhood obesity [3-5], possibly though primary disruption of innate circadian timing mechanisms. Circadian rhythms can be manipulated through entrainment by external timing cues such as light and food intake, raising the possibility of clinical interventions in children with obesity based on these mechanisms. Simple and effective methods for measuring circadian rhythms in children are required to facilitate investigation of the potential importance of timing cues in the treatment of children with obesity.

Sleep spirals present weekly data as a continuum, showing how disruption accumulates across days, and allowing simultaneous interpretations of physical activity levels through colour change. Sleep spirals are a novel way of educating children about their activity levels and circadian rhythms. They have potential application for engaging children in their treatment, and for conveying the impact of interventions to modify the rhythmicity and level of physical activity. Sleep spirals convey information on 3 parameters that are important in obesity (i) circadian rhythms, (ii) sleep timing and (iii) physical activity. These are simultaneously displayed using colour gradients, and visual patterns. Sleep spirals capture trends in physical activity and circadian rhythms in a single colourful data plot, that can increase children’s engagement and understanding of interventions to modify circadian rhythms, activity and sleep.

## Conclusions
Novel methods for monitoring circadian rhythms could be useful clinical tools in the management of childhood obesity. Capturing clinical information through data visualisations such as sleep spirals is an innovative way of engaging patients in treatment and of incentivising lifestyle change.

## Acknowledgements
<img align="right" height=80 src="https://user-images.githubusercontent.com/29300100/195516741-adf8db9d-c284-4667-967b-9469ca2428b5.png"> <img align="right" height=80 src="https://user-images.githubusercontent.com/29300100/195517055-f7731b8e-8d6b-4915-88ea-52e9427d8a04.png">


Dr Lorna Lopez, School of Biology, Maynooth University, Maynooth  
Dr Grace O’Malley, School of Physiotherapy, Royal College of Surgeons in Ireland, Beaux Lane House, Dublin

## References
1. Panda S. Circadian physiology of metabolism. Science. 2016; 354(6315):1008-1015
2. Roenneberg T, Allebrandt KV, Merrow M, Vetter C. Social jetlag and obesity. Curr Biol. 2012; 22(10):939-43
3. Cespedes Feliciano EM, Rifas-Shiman SL, Quante M, Redline S, Oken E, Taveras EM. Chronotype, Social Jet Lag, and Cardiometabolic Risk Factors in Early Adolescence.
JAMA Pediatr. 2019; 173(11):1049–57
4. Simon SL, Behn CD, Cree-Green M, Kaar JL, Pyle L, Hawkins SMM, Rahat H, Garcia-Reyes Y, Wright KP Jr, Nadeau KJ. Too Late and Not Enough: School Year Sleep
Duration, Timing, and Circadian Misalignment Are Associated with Reduced Insulin Sensitivity in Adolescents with Overweight/Obesity. J Pediatr. 2019; 205:257-264
5. Quante M, Cespedes Feliciano EM, Rifas-Shiman SL, Mariani S, Kaplan ER, Rueschman M, Oken E, Taveras EM, Redline S. Association of Daily Rest-Activity Patterns With
Adiposity and Cardiometabolic Risk Measures in Teens. J Adolesc Health. 2019; 65(2):224-231
6. Fatima Y, Doi SA, Mamun AA. Sleep quality and obesity in young subjects: a meta-analysis. Obes Rev. 2016;17(11):1154-1166
7. Golley RK, Maher CA, Matricciani L, Olds TS. Sleep duration or bedtime? Exploring the association between sleep timing behaviour, diet and BMI in children and adolescents.
Int J Obes (Lond). 2013; 37(4):546-51
8. RStudio Team (2020). RStudio: Integrated Development for R. RStudio, PBC, Boston, MA URL http://www.rstudio.com/.

