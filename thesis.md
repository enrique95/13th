---
output:
  html_document: default
  pdf_document: default
  title: "Abolition of Slavery in the US and its effects on Agricultural Output"
---
University Degree in Economics\
Academic Year 2018-2019\
*Bachelor Thesis*

"Abolition of Slavery in the US and its effects on Agricultural Output"\

------------------------------------------------------------------------

\
Juan Enrique García González\

Pablo Martinelli Lasheras\
Madrid\

![image](imagenes/creativecommons.png){width="4.2cm"}\
This work is licensed under Creative Commons **Attribution -- Non
Commercial -- Non Derivatives**

Dedication {#dedication .unnumbered}
==========

I would like to thank my parents for their patient, continuous support
throughout my career, both mentally and financially. I would like to
also thank my colleague Iván Logrosán for his resourceful ideas as well
as Pablo Martinelli for his meaningful tutoring. At last but no least I
would like to thank the rest of Carlos III University staff that had
helped me making this bachelor thesis possible, specially the library
staff.

Introduction
============

Motivation of work and goals
----------------------------

The matter of slavery was one of the topics that contributed to the
upsurge in the 70s of the study of economic history as a topic closer to
the empirical approach. This impact on this field of economics and the
importance of the event itself in history are the motivations of this
study. The research will analyze the practice of slavery and its effects
in a very crucial period: the decades before and after the passing in
1865 of the 13th Amendment, which determined the abolition of slavery in
the United States of America.

Literature review
-----------------

There are two main trends that deal with the different effects that had
slavery on agricultural production. The first position states that
slavery did have a positive effect, by using production systems with
enslaved labor force that were more efficient than the family-based
farms. One very important concept that belonged to slavery-specific
production and is crucial to explain the efficency of slavery was the
so-called \"gang system\". This system consisted of individual, well
monitored processes, in which the slavers could easily allocate their
enslaved workhand. Every gang consisted of 10-20 men and they were
commanded by another slave. Fogel and Engerman address the \"gang
system\" efficiency proposals in @fogel1995time and @explaining, arguing
that the core of the \"gang system\" effect was driven by the size of
farms, specially in the cotton plantations, and it yielded a fairly
large efficiency in this field compared to its free workhand
counterpart.

The second position argues that slavery did not have a positive effect
on agricultural production. Wright claims that slavery did not existed
just for the sake of being a medium of labor, but as a whole political
and ideological system, that distinguished the \"slaver\" South from the
\"free\" North in a deep level, and thus prevented the adoption of
better ways of production. The slaves were used for crops in which farm
labor productivity had to be enough to cover the price of the slave
[@wright2013slavery 29--30], although in the North productivity in the
crops was not high enough to support slaves.

According to Wright, the use of slavery was advantageous in the early
times of American history. It allowed farmers to prepare the \"yet to
tame\" conquered land in a short time, minimized the risk of loss in
case of a poor harvest season and fully maximized the profits from a
bountiful harvest. These characteristics shaped the agricultural sector
of the South and made it lag behind eventually with the North.

Another relevant event, tied tightly to the phenomenon of slavery is the
American Civil War (1861-1865). [@feigenbaum2018capital] make an
analysis of the effect of the Sherman march on the land that suffered
it. This study shows that the march deeply affected the production
factors of the territories affected by big substantial changes in their
allocations.

Approach of the study
---------------------

This study will first start with the methodology used for researching
this topic, beginning with the presentation of the data and ending with
the empirical approach of the research. Next will follow the reasoned
analysis of the results and their reliability. Lastly, the conclusion
will deal with the discussion of the end results and their implications
with the literature.

Methodology
===========

Data
----

The data was obtained from the works of @haines10 hosted in @nhgis,
except for the information on agricultural prices in 1870, which was
personally gathered from the *Agriculture* section of @histstat.

The empirical work will use county-level agricultural and demographic
data from the US Census of 1860 and 1870. This data includes variables
such as livestock, non-crop agricultural production, production of
several crops in particular, farm data and demographic data. This study
focuses on typical crop productions that used mostly enslaved workhand,
such as cotton or tobacco [^1].

This fact can be noticed visually by taking a look at the figures
[2.1](#fig:cottoncomp){reference-type="ref" reference="fig:cottoncomp"}
and [2.2](#fig:tobaccocomp){reference-type="ref"
reference="fig:tobaccocomp"} below. The scope of this study was expected
be higher, unfortunately, there is a surprising decrease of detailed
agricultural information in the 1870 Census. This means that some
valuable information such as prices had to be obtained from other
sources, as stated previously. Nevertheless, there is enough information
to compute the effects on the total agricultural production and some
sets of particular productions.

![Comparison of cotton production per total production ratio with
enslaved population
ratio[]{label="fig:cottoncomp"}](cottoncomp){#fig:cottoncomp
width="110%"}

![Comparison of tobacco production per total production ratio with
enslaved population
ratio[]{label="fig:tobaccocomp"}](tobaccocomp){#fig:tobaccocomp
width="110%"}

For the demographic data, three variables were retrieved. Firstly the
ratio of foreign-born population over total population. This is in order
to estimate the effect of immigrant population on agricultural
production, as opposed to the other great source of handwork: slavery.
Some suspicions may arise from this data, as it does not make any
distinction among population characteristics. However,
@wright1970economics and @russel1941effects back this proceeding,
arguing that women and children also participated in the labor of family
farms. The workload may be unequal compared to their male, adult
relatives, but certainly not enough to assume it was a \"men only\" job.

The second variable used is the population growth ratio. This was
computed in order to estimate the effects of the American Civil War.
Unfortunately, there is not enough data in county levels in order to
make an exhaustive estimation of the damages of war, so this was the
best choice available. The data was computed using male population older
than 10 in 1860 and male population over 21 in 1870. Although the ages
seem a bit young for war[^2], there are some sources that demonstrate
that the number of child recruits was actually very high
[@murphy1993boys], so it would not be unsound to add them in the
estimations.

Other sources point out the role of women in the Civil War
[@blanton2002they], although at the time of computing the conscription
of women the numbers are very low. The amount of women that joined the
military \"informally\" could increase that value, yet the own
uncertainty of that circumstance makes it very difficult to use them as
a reliable estimator of the effects of war. Nevertheless, this might not
be the best approach to estimate the damages of war, as
@feigenbaum2018capital show that the demographic change might not be
enough to estimate the lagging behind of Southern agriculture. Although
the scope of their work is limited to the states of Georgia, North
Carolina and South Carolina and might not be replicated to the rest of
the Southern states or the South as a whole.

Lastly, the most important: slaves. The slave figures were retrieved for
every type of slave registered in the census. This means that the data
includes people of all sex and ages. This may also seem puzzling as with
the data for foreign-born population, but @fogel1994without [73] also
backs this approach, stating that \"nearly one third of slave laborers
were untrained children and about an eighth were elderly, crippled, or
disadvantaged in some way. Women represented a much larger proportion of
field laborers among slaves than among free farmers.\". This is
compelling evidence to include these other population sectors. Slave
data is used in the regressions as the ratio of enslaved population per
total population.

In order to keep the panel data consistent, many territories of 1870
that do not appear in the 1860 Census were dropped from the data. Also,
the agricultural data measured in dollars in 1870 was standardized to
1860 levels using the information on the section *Prices and Price
Indexes* in @histstat [^3] to keep consistent and comparable values.

As the information is gathered in county levels, the number of
observations in this database is sufficiently large to allow for precise
econometric estimation. The nature of the data may be considered
quasi-experimental, due to the fact that this change on the production
of agriculture was caused by an institutional change, affecting a
particular group of states with particular features. This characteristic
of the data makes the differences in differences model very adequate for
this study.

The differences in differences model will analyze the effect of slavery
abolition in the Southern states, keeping as a counter-factual the
agricultural production in the Northern states, which developed an
agriculture free of slave workforce. The scope of this data may also
contribute to estimate properly heterogeneous effects.

This data was constructed and analyzed using the program R [@R] and its
many packages, mentioned in the bibliography. This work was written
using LaTeX  [@latex2e].

Implementation
--------------

In order to estimate the Differences in Differences model this work
follows the indications of @stock2003introduction,
@wooldridge2007difference, @torres2010getting, UC3M Applied Economics
lectures and the articles of @cohen2003effects and @felfe2015can.

### OLS estimation {#sec:OLS estimation}

The following OLS equation will be used as a framework to estimate the
effects of this policy change (slavery abolition) on agricultural
output. All the classical assumptions are held and the standard errors
are heteroskedasticity robust:
$$Y_{i,j,t}=\beta_{0}+\beta_{1}SLAVES_{i,j}+\beta_{2}AMEN_{i,j,t}+\beta_{3}(SLAVES_{i,j}\cdot AMEN_{i,j,t})+\delta_{i,j,t}X$$
where:

-   $Y$ is the dependent variable. In the following studies, this
    variable will be linked to different agricultural outputs:

    -   $AGOUT3$ is the total agricultural output measured in dollars

    -   $COTTONRAT$ is the ratio of cotton production per total
        agricultural output

    -   $TOBACCORAT$ is the ratio of tobacco production per total
        agricultural output

-   $i$ is the county indicator.

-   $j$ is the state indicator, which takes a value of 1 if the
    observation takes place in a Confederate state, namely Alabama,
    Arkansas, Florida, Georgia, Kentucky, Louisiana, Mississippi,
    Missouri, North Carolina, South Carolina, Tennessee, Texas and
    Virginia.

-   $t$ is the time indicator.

-   $\beta_{0}$ is the constant.

-   $\beta_{1}$ is the estimator of the variable $SLAVES$, which is the
    percentage of enslaved population per total population.

-   $\beta_{2}$ is the estimator of the dummy variable $AMEN$, that
    takes a value of 1 if the observation belongs to the period after
    the introduction of the 13th Amendment, namely 1870.

-   $\beta_{3}$ is the estimator of the interaction term
    $SLAVES \cdot AMEN$ or diff. in diff. estimator. For the rest of the
    study this variable will be named as $DID$

-   $X$ is the set of explanatory variables:

    -   MACHINE is the value in dollars of machinery and implements.

    -   LIVESTOCK is the value in dollars of livestock.

    -   FARMS is the number of farms.

    -   FORATIO is the ratio of foreign born people over total
        population.

    -   POPGROWTH is the growth ratio of male population between the
        1860 census and 1870 census.

In order to use this equation as a Cobb-Douglas production function that
allows to interpret the estimators as elasticities, the previous general
equation is transformed into this one:

$$ln(Y)_{i,j,t}=\beta_{0}+\beta_{1}SLAVES_{i,j}+\beta_{2}AMEN_{i,j,t}+\beta_{3}(SLAVES_{i,j}\cdot AMEN_{i,j,t})+\delta_{i,j,t}ln(X)$$

where the variables are still the same as previously explained but
through a logarithmic transformation, except for the ratios, which are
not transformed.

### Panel under Fixed Effects model

After the OLS model two other models were created including fixed and
random effects estimators.

For these models, the base equation is the following:
$$Y_{i,j,t}=\beta_{1}X_{i,j,t} + a_{i,j}$$

Here $Y_{i,j,t}$ and $X$ keep the same meaning as before, being $X$ the
set of the different explanatory variables not constant over time plus
the variables used to estimate the Diff-in-Diff. At last, $a_{i}$ is the
unobserved effect. $a_{i,t}$ can also be considered
$a_{i}=\beta_{0}+\beta_{2}Z_{i}$, where $\beta_{0}$ is the intersect and
$\beta_{2}Z_{i}$ is the set of variables that stay constant over time
while changing from one county to another [@stock2003introduction 349].

As in the OLS section, this framework equation is also transformed:
$$ln(Y)_{i,j,t}=\beta_{1}ln(X)_{i,j,t} + a_{i,j}$$ In order to discern
which model is more suitable, a Hausman Test is done comparing the fixed
and random effects estimators. The results are shown in the table
[\[tab:phtest\]](#tab:phtest){reference-type="ref"
reference="tab:phtest"} below. They prove that there is enough evidence
to safely reject the null hypothesis of the random effects model being
insignificantly different from the fixed effects model. Then a fixed
effects [^4] model is chosen.

        $\chi^{2}$      p-value   parameter method         alternative
  --- ------------ ------------ ----------- -------------- ---------------------------
    1       374.40   \< 2.2e-16           6 Hausman Test   one model is inconsistent

  : Hausman test for Fixed Effects vs Random
  Effects[]{label="tab:phtest"}

The estimations of both OLS and FE models are gathered in

Results
=======

Countrywide effects
-------------------

In the case of total agricultural production Table
[\[tab:agoutnopop\]](#tab:agoutnopop){reference-type="ref"
reference="tab:agoutnopop"} shows the result of the OLS: $$\begin{split}
ln(AGOUT3)_{i,j,t} &=\beta_{0}+\beta_{1}SLAVES_{i,j}+\beta_{2}AMEN_{i,j,t}+\beta_{3}DID_{i,j,t}+\delta_{1}ln(MACHINE)_{i,j,t}+
\\
&\delta_{2}ln(LIVESTOCK)_{i,j,t}+\delta_{3}ln(FARMS)_{i,j,t}+\delta_{4}FORATIO_{i,j,t}
\end{split}$$

and FE regression:$$\begin{split}
ln(AGOUT3)_{i,j,t} &=\beta_{2}AMEN_{i,j,t}+\beta_{3}DID_{i,j,t}+\delta_{1}ln(MACHINE)_{i,j,t}+
\\
&\delta_{2}ln(LIVESTOCK)_{i,j,t}+\delta_{3}ln(FARMS)_{i,j,t}+\delta_{4}FORATIO_{i,j,t} + a_{i,j}
\end{split}$$

Here, the equations show the elasticities of the different production
factors of agricultural production. The most interesting part comes from
the DID estimator $\beta_{3}$ in Table
[\[tab:agoutnopop\]](#tab:agoutnopop){reference-type="ref"
reference="tab:agoutnopop"}, where it shows a positive elasticity in the
OLS estimation while a negative elasticity in the FE model. This may
seem contradicting, so in the section there are some indications that
may help to discern which effect should be taken into account. In this
case, and according to the conclusions reached in the aforementioned
section, the effects of the FE are the main conductors of the study.
This elasticity of $-0.592$ shows that for the policy change (slavery
abolition), the aggregate agricultural output decreased around 60%.
Besides this, the estimator $\beta_{1}$ takes a value of $0.940$,
meaning that for an increase of 1% in the slave ratio the agricultural
output will increase by 0.90%.

For the case of cotton production per total the equations are the
following: $$\begin{split}
ln(COTTONRAT)_{i,j,t} &=\beta_{0}+\beta_{1}SLAVES_{i,j}+\beta_{2}AMEN_{i,j,t}+\beta_{3}DID_{i,j,t}+\delta_{1}ln(MACHINE)_{i,j,t}
\\
&+\delta_{2}ln(LIVESTOCK)_{i,j,t}+\delta_{3}ln(FARMS)_{i,j,t}+\delta_{4}FORATIO_{i,j,t}
\end{split}$$

$$\begin{split}
ln(COTTONRAT)_{i,j,t} &=\beta_{2}AMEN_{i,j,t}+\beta_{3}DID_{i,j,t}+\delta_{1}ln(MACHINE)_{i,j,t}+
\\
&\delta_{2}ln(LIVESTOCK)_{i,j,t}+\delta_{3}ln(FARMS)_{i,j,t}+\delta_{4}FORATIO_{i,j,t} + a_{i,j}
\end{split}$$

whose estimations are gathered in Table
[\[tab:cotnopop\]](#tab:cotnopop){reference-type="ref"
reference="tab:cotnopop"}. Here $\beta_{3}$ takes similar values in both
OLS and FE models, so it is easy to say that the abolition of slavery
reduced the ratio of cotton production per total agricultural production
by 22%. In the case of the SLAVES estimator, the result is
$\beta_{1}=0.756$, meaning that for an increase of 1% in the slave ratio
the cotton ratio would increase by a 0.75%.

Similarly, for the tobacco ratio the models are the following:
$$\begin{split}
ln(TOBACCORAT)_{i,j,t} &=\beta_{0}+\beta_{1}SLAVES_{i,j}+\beta_{2}AMEN_{i,j,t}+\beta_{3}DID_{i,j,t}+\delta_{1}ln(MACHINE)_{i,j,t}
\\
&+\delta_{2}ln(LIVESTOCK)_{i,j,t}+\delta_{3}ln(FARMS)_{i,j,t}+\delta_{4}FORATIO_{i,j,t}
\end{split}$$

$$\begin{split}
ln(TOBACCORAT)_{i,j,t} &=\beta_{2}AMEN_{i,j,t}+\beta_{3}DID_{i,j,t}+\delta_{1}ln(MACHINE)_{i,j,t}+
\\
&\delta_{2}ln(LIVESTOCK)_{i,j,t}+\delta_{3}ln(FARMS)_{i,j,t}+\delta_{4}FORATIO_{i,j,t} + a_{i,j}
\end{split}$$

whose estimations are also gathered in Table
[\[tab:tobnopop\]](#tab:tobnopop){reference-type="ref"
reference="tab:tobnopop"}. In this case the outcomes are more dissimilar
than in the cotton case, being the FE estimator more \"conservative\"
with the effects of abolition. It estimates an elasticity of
$\beta_{3}=-0.023$ or that for a change in the policy the ratio of
tobacco output per total agricultural output decreases by a 2.3%. This
is by far the lowest negative effect of slavery abolition on any
agricultural product analyzed here. Also, the role of the estimator
$\beta_{1}$ is very small, taking just a value of $0.085$, meaning that
for an increase of 1% in the slave ratio the tobacco ratio would only
increase by 0.085%. This goes in line with @wright2013slavery [29], that
argues that the growth of tobacco was not the most suited for the slave
kind of work.

Heterogeneous treatment effects
-------------------------------

There is a sizable amount of literature that deal with the analysis of
heterogeneous treatment effects on the different groups using
quasi-experimental data. Two articles that address this concept and were
used to guide this part of the study were [@felfe2015can] and
[@NBERw9708]. The group that this work will be focused on is the
Southern or Confederate States. These states were already defined in the
section, so the equations used for the OLS and FE estimations will be
the following: $$\begin{split}
ln(AGOUT3)_{i,1,t} &=\beta_{0}+\beta_{1}SLAVES_{i,1}+\beta_{2}AMEN_{i,1,t}+\beta_{3}DID_{i,1,t}
\\
&+\delta_{1}MACHINE_{i,1,t}+\delta_{2}LIVESTOCK_{i,1,t}+\delta_{3}FARMS_{i,1,t}+\delta_{4}FORATIO_{i,1,t}
\end{split}$$

$$\begin{split}
ln(AGOUT3)_{i,1,t} &=\beta_{2}AMEN_{i,1,t}+\beta_{3}DID_{i,1,t}+\delta_{1}ln(MACHINE)_{i,1,t}+
\\
&\delta_{2}ln(LIVESTOCK)_{i,1,t}+\delta_{3}ln(FARMS)_{i,1,t}+\delta_{4}FORATIO_{i,1,t} + a_{i,1}
\end{split}$$

The results of this regression, which are gathered in Table
[\[tab:agoutnopop\]](#tab:agoutnopop){reference-type="ref"
reference="tab:agoutnopop"}, show a similar trend as with the whole
country. Once again the estimates of $\beta_{3}$ are different from the
OLS to the FE model and once again the estimator from the FE model is
used as a reference. Here, it takes a value of -0.530, meaning that with
the abolition of slavery the Confederate states lost more than 50% of
the total agricultural output. Slave ratio also has a higher effect than
in the countrywide production, with a estimation of $\beta_{1}=1.611$,
showing that with an increase of 1% in the slave ratio the aggregate
output would hike by a 1.611%.

Now, for the cotton production, the equations are very similar as
before:

$$\begin{split}
ln(COTTONRAT)_{i,1,t} &=\beta_{0}+\beta_{1}SLAVES_{i,1}+\beta_{2}AMEN_{i,1,t}+\beta_{3}DID_{i,1,t}
\\
&+\delta_{1}MACHINE_{i,1,t}+\delta_{2}LIVESTOCK_{i,1,t}+\delta_{3}FARMS_{i,1,t}+\delta_{4}FORATIO_{i,1,t}
\end{split}$$

$$\begin{split}
ln(COTTONRAT)_{i,1,t} &=\beta_{2}AMEN_{i,1,t}+\beta_{3}DID_{i,1,t}+\delta_{1}ln(MACHINE)_{i,1,t}+
\\
&\delta_{2}ln(LIVESTOCK)_{i,1,t}+\delta_{3}ln(FARMS)_{i,1,t}+\delta_{4}FORATIO_{i,1,t} + a_{i,1}
\end{split}$$

and having the same problem with the estimators in OLS and FE as before.
Here the rule of thumb is also followed, so according to table
[\[tab:cotnopopcsa\]](#tab:cotnopopcsa){reference-type="ref"
reference="tab:cotnopopcsa"}, $\beta_{3}=-0.107$. This means that with
the slavery abolition policy, the ratio of cotton production per total
agricultural production decreased by a 10%. The effect of slavery also
increases a small amount compared to the countrywide production. In this
case $\beta_{1}=0.810$ shows that the increase of the slave ratio by 1%
would also increase the cotton ratio by 0.81%.

At last, the analysis for tobacco production come from these models,
also very similar as previous steps: $$\begin{split}
ln(TOBACCORAT)_{i,1,t} &=\beta_{0}+\beta_{1}SLAVES_{i,1}+\beta_{2}AMEN_{i,1,t}+\beta_{3}DID_{i,1,t}
\\
&+\delta_{1}MACHINE_{i,1,t}+\delta_{2}LIVESTOCK_{i,1,t}+\delta_{3}FARMS_{i,1,t}+\delta_{4}FORATIO_{i,1,t}
\end{split}$$

$$\begin{split}
ln(TOBACCORAT)_{i,1,t} &=\beta_{2}AMEN_{i,1,t}+\beta_{3}DID_{i,1,t}+\delta_{1}ln(MACHINE)_{i,1,t}+
\\
&\delta_{2}ln(LIVESTOCK)_{i,1,t}+\delta_{3}ln(FARMS)_{i,1,t}+\delta_{4}FORATIO_{i,1,t} + a_{i,1}
\end{split}$$

Here the results of the estimators also vary from the OLS model to the
FE one and once again the FE estimator is also preferred. The
$\beta_{3}$ estimator in table
[\[tab:tobnopopcsa\]](#tab:tobnopopcsa){reference-type="ref"
reference="tab:tobnopopcsa"} takes a value of -0.530, which means that
after the abolition of slavery the ratio of tobacco production per total
production plummeted by more than a 50%. For the slave effect, it seems
that is even smaller than in the countrywide environment, with an
elasticity of 0.044. This only reinforces the statement of
@wright2013slavery on tobacco production.

Robustness check {#sec:Robustness check}
----------------

At first, the main concern that may arise from an analysis in the
1860-70 period in the USA is, of course, the effects of the American
Civil War. In order to see whether the estimations are affected by any
kind of bias, the base OLS regression now includes the variable of
population growth:

$$\begin{split}
Y_{i,j,t} &=\beta_{0}+\beta_{1}SLAVES_{i,j}+\beta_{2}AMEN_{i,j,t}+\beta_{3}DID_{i,j,t}+\delta_{1}ln(MACHINE)_{i,j,t}+
\\
&\delta_{2}ln(LIVESTOCK)_{i,j,t}+\delta_{3}ln(FARMS)_{i,j,t}+\delta_{4}FORATIO_{i,j,t}
\\
&+\delta_{5}POPGROWTH_{i,j}
\end{split}$$

And according to tables [\[tab:agout\]](#tab:agout){reference-type="ref"
reference="tab:agout"}, [\[tab:cot\]](#tab:cot){reference-type="ref"
reference="tab:cot"}, [\[tab:tob\]](#tab:tob){reference-type="ref"
reference="tab:tob"},
[\[tab:agoutcsa\]](#tab:agoutcsa){reference-type="ref"
reference="tab:agoutcsa"} and
[\[tab:cotcsa\]](#tab:cotcsa){reference-type="ref"
reference="tab:cotcsa"} the estimator $\delta_{5}$ is not significant in
any of the instances, except for the tobacco ratio in the Southern
states (Table [\[tab:tobcsa\]](#tab:tobcsa){reference-type="ref"
reference="tab:tobcsa"}), in which the estimator is only significant at
10% but the coefficient is almost insignificant.

A visual comparison of different maps, one displaying agricultural
outputs and other displaying the population change, corroborates that
intuition of population change not being relevant to agricultural
production:

![Comparison of cotton production with population
growth[]{label="fig:cottonpopcomp"}](cottonpopcomp){#fig:cottonpopcomp
width="110%"}

![Comparison of total agricultural production with population
growth[]{label="fig:agoutpopcomp"}](agoutpopcomp){#fig:agoutpopcomp
width="110%"}

![Comparison of tobacco production with population growth in the
Confederate
States[]{label="fig:tobaccopopsouthcomp"}](tobaccopopsouthcomp){#fig:tobaccopopsouthcomp
width="110%"}

Here in figure [3.3](#fig:tobaccopopsouthcomp){reference-type="ref"
reference="fig:tobaccopopsouthcomp"} it can be seen a small correlation
in some parts of West Florida. However, for the main tobacco grower
regions of Kentucky and Virginia this hypothesis is not maintained.

This may prove right the hypothesis of population change not being one
of the main drivers of the effect of war on agricultural output of
@feigenbaum2018capital. In fact, war horrors are tragic from a
humanitarian standpoint, but from an economic perspective, they are just
large shocks on the national economy from which it eventually recovers.
This is the case of postwar Europe, that in 1947 already caught up
prewar productive capital levels, according to @eichengreen2008european
[52]. Feigenbaum et al. point out other factors as the main drivers of
the war shocks, such as an undeveloped financial sector. Unfortunately,
there is not sufficient data to estimate the effects of the financial
sector in the after war period.

Another question arises, which is what model should be chosen. The
literature says that FE is preferred to a pooled OLS model, but in any
case this work includes empirical evidence to corroborate the general
consensus. In this case an F-test for individual effects was performed.
The null hypothesis states that there are not significant effects, while
the alternative hypothesis states that there are indeed significant
effects. The test results are gathered in the table
[\[tab:pFtest\]](#tab:pFtest){reference-type="ref"
reference="tab:pFtest"} below:

         df1    df2   F-statistic      p-value method                          alternative
  --- ------ ------ ------------- ------------ ------------------------------- ---------------------
    1   1905   1825          2.31   \< 2.2e-16 F test for individual effects   significant effects

  : F-test for Pooled OLS vs Fixed Effects[]{label="tab:pFtest"}

It shows that with a p-value lower than 1% the null hypothesis is
rejected, so in case of doubt, the FE model can be considered less
biased than the OLS and its conclusions are preferred.

Conclusion
==========

Now that the results are shown and explained it is time to discuss them
and explain their implications. These results are the empirical evidence
that slavery did have a positive effect on agricultural production and
the abolition of slavery meant a negative effect on the agricultural
production. In fact, these results corroborate overwhelmingly the
proposals of Fogle and Engerman. They show the big importance of
enslaved labor on the Cobb-Douglas production function, with
considerably high elasticities for slaves. This means that their
hypothesis of enslaved labor was right and this kind of labor was
efficient and more than with free workhand.

The DID model also shows that once the 13th Amendment was passed, this
efficient system was eliminated and that meant a decrease and lag behind
of the Southern agriculture, which is the sector of the US that relied
the most on slavery. This does not mean that the position of Wright is
wrong. In fact, many results have proved right many of his points, such
as the reduced efficiency of slavery in tobacco production. Furthermore,
these results only cover the 1860-1870 period, and probably for a wider
period they could change and give a different interpretation for the
abolition of slavery.

Another issue that can support the position of Wright is the possible
underestimation of war effects. Although it is true that in the section
the effect of population growth was not significant, it is likely that
there are more significant ways to measure the impacts of war besides
the war casualties. Nevertheless, the data available for such an early
period in history is quite limited, and so are the possibilities of
replicating historical environments with more accuracy and using more
tools to support the results.

To conclude this discussion, although the evidence here points out that
slavery in the 19th Century was a more efficient system than the free
worker system, it is worth mentioning that this fact does not justify or
condone slavery. In fact, this drives away many weak arguments of
economic profitability and shifts the debate to a more important matter:
individual freedom, a defining characteristic of the United States of
America.

Appendix I {#sec:Appendix I .unnumbered}
==========

Estimations with no population growth {#estimations-with-no-population-growth .unnumbered}
-------------------------------------

  --------------------------------- --------------- --------------------------------
                                                    
                                                    
                                                    
                                                    
                                                    
                                         *OLS*                    *FE*
                                                    
                                          (1)                     (2)
                                                    
  Slave ratio                        0.940$^{***}$  
                                       p = 0.000    
  Before the 13th Amendment             0.00001              0.075$^{***}$
                                       p = 1.000              p = 0.00000
  Diff-in-diff estimator             0.279$^{***}$          $-$0.592$^{***}$
                                      p = 0.00000              p = 0.000
  Implements and machinery (logs)    0.374$^{***}$           0.186$^{***}$
                                       p = 0.000               p = 0.000
  Livestock (logs)                   0.367$^{***}$           0.218$^{***}$
                                       p = 0.000               p = 0.000
  Number of farms (logs)             0.287$^{***}$           0.421$^{***}$
                                       p = 0.000               p = 0.000
  Foreign people ratio                   0.089              $-$0.696$^{**}$
                                       p = 0.121               p = 0.015
  Constant                           2.261$^{***}$  
                                       p = 0.000    
                                                    
  Observations                           3,738                   3,738
  R$^{2}$                                0.955                   0.699
  Adjusted R$^{2}$                       0.955                   0.384
  F Statistic                                        707.601$^{***}$ (df = 6; 1825)
                                                    
  *Note:*                                           
  --------------------------------- --------------- --------------------------------

  : Total agricultural production[]{label="tab:agoutnopop"}

  --------------------------------- -------------------------------- -------------------------------
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     
                                                 *OLS*                            *FE*
                                                                     
                                                  (1)                              (2)
                                                                     
  Slave ratio                                0.756$^{***}$           
                                               p = 0.000             
  Before the 13th Amendment                      0.002                            0.002
                                               p = 0.819                        p = 0.734
  Diff-in-diff estimator                    $-$0.226$^{***}$                $-$0.229$^{***}$
                                               p = 0.000                        p = 0.000
  Implements and machinery (logs)           $-$0.033$^{***}$                    $-$0.008
                                               p = 0.000                        p = 0.271
  Livestock (logs)                           0.029$^{***}$                      $-$0.003
                                              p = 0.00000                       p = 0.770
  Number of farms (logs)                         0.007                         0.016$^{*}$
                                               p = 0.255                        p = 0.097
  Foreign people ratio                           0.014                            0.005
                                               p = 0.588                        p = 0.964
  Constant                                      $-$0.050             
                                               p = 0.176             
                                                                     
  Observations                                   3,738                            3,738
  R$^{2}$                                        0.409                            0.085
  Adjusted R$^{2}$                               0.407                          $-$0.875
  F Statistic                        368.020$^{***}$ (df = 7; 3730)   28.094$^{***}$ (df = 6; 1825)
                                                                     
  *Note:*                                                            
  --------------------------------- -------------------------------- -------------------------------

  : Cotton production per total agricultural
  production[]{label="tab:cotnopop"}

  --------------------------- ------------------------------- ------------------------------
                                                              
                                                              
                                                              
                                                              
                                                              
                                           *OLS*                           *FE*
                                                              
                                            (1)                            (2)
                                                              
  Slave ratio                          0.085$^{***}$          
                                         p = 0.000            
  Before the 13th Amendment              $-$0.003                         0.002
                                         p = 0.287                      p = 0.206
  Diff-in-diff estimator             $-$0.050$^{***}$                $-$0.023$^{***}$
                                        p = 0.00003                    p = 0.00003
  Implements and machinery            $-$0.005$^{**}$                    $-$0.001
                                         p = 0.012                      p = 0.642
  Livestock                          $-$0.008$^{***}$                     0.0004
                                         p = 0.001                      p = 0.832
  Number of farms                      0.019$^{***}$                    $-$0.0003
                                         p = 0.000                      p = 0.881
  Foreign people ratio               $-$0.039$^{***}$                    $-$0.013
                                        p = 0.0005                      p = 0.614
  Constant                             0.055$^{***}$          
                                        p = 0.0005            
                                                              
  Observations                             3,738                          3,738
  R$^{2}$                                  0.053                          0.021
  Adjusted R$^{2}$                         0.051                         $-$1.005
  F Statistic                  29.618$^{***}$ (df = 7; 3730)   6.433$^{***}$ (df = 6; 1825)
                                                              
  *Note:*                                                     
  --------------------------- ------------------------------- ------------------------------

  : Tobacco production per total agricultural
  production[]{label="tab:tobnopop"}

### Heterogeneity {#heterogeneity .unnumbered}

  --------------------------------- ---------------------------------- -------------------------------
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                  *OLS*                             *FE*
                                                                       
                                                   (1)                               (2)
                                                                       
  Slave ratio                                 1.611$^{***}$            
                                                p = 0.000              
  Before the 13th Amendment                   0.097$^{***}$                     0.066$^{***}$
                                                p = 0.003                        p = 0.0002
  Diff-in-diff estimator                     $-$0.324$^{***}$                 $-$0.530$^{***}$
                                                p = 0.0002                        p = 0.000
  Implements and machinery (logs)             0.354$^{***}$                     0.147$^{***}$
                                                p = 0.000                         p = 0.000
  Livestock (logs)                            0.195$^{***}$                     0.336$^{***}$
                                                p = 0.000                         p = 0.000
  Number of farms (logs)                      0.454$^{***}$                     0.332$^{***}$
                                                p = 0.000                         p = 0.000
  Foreign people ratio                       $-$0.581$^{***}$                       0.521
                                               p = 0.00003                        p = 0.144
  Constant                                    3.381$^{***}$            
                                                p = 0.000              
                                                                       
  Observations                                    2,035                             2,035
  R$^{2}$                                         0.869                             0.749
  Adjusted R$^{2}$                                0.869                             0.478
  F Statistic                        1,926.934$^{***}$ (df = 7; 2027)   486.082$^{***}$ (df = 6; 977)
                                                                       
  *Note:*                                                              
  --------------------------------- ---------------------------------- -------------------------------

  : Total agricultural production in confederate
  states[]{label="tab:agoutnopopcsa"}

  --------------------------------- -------------------------------- ------------------------------
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     
                                                 *OLS*                            *FE*
                                                                     
                                                  (1)                             (2)
                                                                     
  Slave ratio                                0.810$^{***}$           
                                               p = 0.000             
  Before the 13th Amendment                      0.010                          $-$0.001
                                               p = 0.601                       p = 0.790
  Diff-in-diff estimator                    $-$0.252$^{***}$                $-$0.107$^{***}$
                                              p = 0.00000                     p = 0.00000
  Implements and machinery (logs)           $-$0.052$^{***}$                 0.029$^{***}$
                                               p = 0.000                      p = 0.00000
  Livestock (logs)                           0.050$^{***}$                     $-$0.0005
                                              p = 0.00001                      p = 0.957
  Number of farms (logs)                         0.003                      $-$0.024$^{***}$
                                               p = 0.740                       p = 0.002
  Foreign people ratio                          $-$0.072                        $-$0.049
                                               p = 0.352                       p = 0.586
  Constant                                      $-$0.102             
                                               p = 0.223             
                                                                     
  Observations                                   2,035                           2,035
  R$^{2}$                                        0.283                           0.279
  Adjusted R$^{2}$                               0.280                          $-$0.500
  F Statistic                        114.206$^{***}$ (df = 7; 2027)   63.136$^{***}$ (df = 6; 977)
                                                                     
  *Note:*                                                            
  --------------------------------- -------------------------------- ------------------------------

  : Cotton production per total agricultural production in confederate
  states[]{label="tab:cotnopopcsa"}

  --------------------------------- ------------------------------- -----------------------------
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                 *OLS*                          *FE*
                                                                    
                                                  (1)                            (2)
                                                                    
  Slave ratio                                0.044$^{***}$          
                                               p = 0.005            
  Before the 13th Amendment                    $-$0.005                         0.002
                                               p = 0.514                      p = 0.362
  Diff-in-diff estimator                    $-$0.046$^{**}$               $-$0.026$^{***}$
                                               p = 0.018                      p = 0.001
  Implements and machinery (logs)                0.003                        $-$0.003
                                               p = 0.452                      p = 0.218
  Livestock (logs)                         $-$0.013$^{***}$                     0.004
                                               p = 0.004                      p = 0.285
  Number of farms (logs)                     0.026$^{***}$                    $-$0.002
                                               p = 0.000                      p = 0.591
  Foreign people ratio                           0.012                        $-$0.017
                                               p = 0.695                      p = 0.622
  Constant                                     $-$0.001             
                                               p = 0.975            
                                                                    
  Observations                                   2,035                          2,035
  R$^{2}$                                        0.040                          0.033
  Adjusted R$^{2}$                               0.037                        $-$1.013
  F Statistic                        12.203$^{***}$ (df = 7; 2027)   5.541$^{***}$ (df = 6; 977)
                                                                    
  *Note:*                                                           
  --------------------------------- ------------------------------- -----------------------------

  : Tobacco production per total agricultural production in confederate
  states[]{label="tab:tobnopopcsa"}

Estimations with population growth {#estimations-with-population-growth .unnumbered}
----------------------------------

  ---------------------------------- --------------- --------------------------------
                                                     
                                                     
                                                     
                                                     
                                                     
                                          *OLS*                    *FE*
                                                     
                                           (1)                     (2)
                                                     
  Slave ratio                         0.931$^{***}$  
                                        p = 0.000    
  Before the 13th Amendment               0.001               0.075$^{***}$
                                        p = 0.916              p = 0.00000
  Diff-in-diff estimator              0.277$^{***}$          $-$0.592$^{***}$
                                       p = 0.00000              p = 0.000
  Implements and machinery (logs)     0.376$^{***}$           0.186$^{***}$
                                        p = 0.000               p = 0.000
  Livestock (logs)                    0.364$^{***}$           0.218$^{***}$
                                        p = 0.000               p = 0.000
  Number of farms (logs)              0.285$^{***}$           0.421$^{***}$
                                        p = 0.000               p = 0.000
  Foreign people ratio                 0.108$^{*}$           $-$0.696$^{**}$
                                        p = 0.075               p = 0.015
  Population growth rate 1860-1870      $-$0.015     
                                        p = 0.333    
  Constant                            2.285$^{***}$  
                                        p = 0.000    
                                                     
  Observations                            3,738                   3,738
  R$^{2}$                                 0.955                   0.699
  Adjusted R$^{2}$                        0.955                   0.384
  F Statistic                                         707.601$^{***}$ (df = 6; 1825)
                                                     
  *Note:*                                            
  ---------------------------------- --------------- --------------------------------

  : Total agricultural production including population
  growth[]{label="tab:agout"}

  ---------------------------------- -------------------------------- --------------------------------
                                                                      
                                                                      
                                                                      
                                                                      
                                                                      
                                                  *OLS*                             *FE*
                                                                      
                                                   (1)                              (2)
                                                                      
  Slave ratio                                 0.743$^{***}$                    0.740$^{***}$
                                                p = 0.000                        p = 0.000
  Before the 13th Amendment                       0.008                            0.006
                                                p = 0.294                        p = 0.427
  Diff-in-diff estimator                     $-$0.219$^{***}$                 $-$0.206$^{***}$
                                                p = 0.000                        p = 0.000
  Implements and machinery (logs)           $-$0.00000$^{***}$        
                                                p = 0.0003            
  Livestock (logs)                            0.00000$^{*}$           
                                                p = 0.052             
  Number of farms (logs)                         0.00000              
                                                p = 0.946             
  Foreign people ratio                           $-$0.006             
                                                p = 0.832             
  Population growth rate 1860-1870               $-$0.001             
                                                p = 0.868             
  Constant                                        0.001                           $-$0.001
                                                p = 0.850                        p = 0.893
                                                                      
  Observations                                    3,750                            3,750
  R$^{2}$                                         0.403                            0.400
  Adjusted R$^{2}$                                0.402                            0.400
  F Statistic                         315.388$^{***}$ (df = 8; 3741)   832.846$^{***}$ (df = 3; 3746)
                                                                      
  *Note:*                                                             
  ---------------------------------- -------------------------------- --------------------------------

  : Cotton production per total agricultural production including
  population growth[]{label="tab:cot"}

  ---------------------------------- -------------------------------- --------------------------------
                                                                      
                                                                      
                                                                      
                                                                      
                                                                      
                                                  *OLS*                             *FE*
                                                                      
                                                   (1)                              (2)
                                                                      
  Slave ratio                                 0.743$^{***}$                    0.740$^{***}$
                                                p = 0.000                        p = 0.000
  Before the 13th Amendment                       0.008                            0.006
                                                p = 0.294                        p = 0.427
  Diff-in-diff estimator                     $-$0.219$^{***}$                 $-$0.206$^{***}$
                                                p = 0.000                        p = 0.000
  Implements and machinery (logs)           $-$0.00000$^{***}$        
                                                p = 0.0003            
  Livestock (logs)                            0.00000$^{*}$           
                                                p = 0.052             
  Number of farms (logs)                         0.00000              
                                                p = 0.946             
  Foreign people ratio                           $-$0.006             
                                                p = 0.832             
  Population growth rate 1860-1870               $-$0.001             
                                                p = 0.868             
  Constant                                        0.001                           $-$0.001
                                                p = 0.850                        p = 0.893
                                                                      
  Observations                                    3,750                            3,750
  R$^{2}$                                         0.403                            0.400
  Adjusted R$^{2}$                                0.402                            0.400
  F Statistic                         315.388$^{***}$ (df = 8; 3741)   832.846$^{***}$ (df = 3; 3746)
                                                                      
  *Note:*                                                             
  ---------------------------------- -------------------------------- --------------------------------

  : Tobacco production per total agricultural production including
  population growth[]{label="tab:tob"}

### Heterogeneity {#heterogeneity-1 .unnumbered}

  ---------------------------------- ------------------ -------------------------------
                                                        
                                                        
                                                        
                                                        
                                                        
                                           *OLS*                     *FE*
                                                        
                                            (1)                       (2)
                                                        
  Slave ratio                          1.337$^{***}$    
                                         p = 0.000      
  Before the 13th Amendment             0.047$^{*}$              0.066$^{***}$
                                         p = 0.069                p = 0.0002
  Diff-in-diff estimator                   0.016               $-$0.530$^{***}$
                                         p = 0.825                 p = 0.000
  Implements and machinery (logs)      0.319$^{***}$             0.147$^{***}$
                                         p = 0.000                 p = 0.000
  Livestock (logs)                     0.349$^{***}$             0.336$^{***}$
                                         p = 0.000                 p = 0.000
  Number of farms (logs)               0.349$^{***}$             0.332$^{***}$
                                         p = 0.000                 p = 0.000
  Foreign people ratio                $-$0.767$^{***}$               0.521
                                         p = 0.005                 p = 0.144
  Population growth rate 1860-1870        $-$0.020      
                                         p = 0.505      
  Constant                             2.547$^{***}$    
                                         p = 0.000      
                                                        
  Observations                             2,035                     2,035
  R$^{2}$                                  0.919                     0.749
  Adjusted R$^{2}$                         0.918                     0.478
  F Statistic                                            486.082$^{***}$ (df = 6; 977)
                                                        
  *Note:*                                               
  ---------------------------------- ------------------ -------------------------------

  : Total agricultural production in confederate states including
  population growth[]{label="tab:agoutcsa"}

  ---------------------------------- ------------------ ------------------------------
                                                        
                                                        
                                                        
                                                        
                                                        
                                           *OLS*                     *FE*
                                                        
                                            (1)                      (2)
                                                        
  Slave ratio                          0.115$^{***}$    
                                         p = 0.006      
  Before the 13th Amendment           $-$0.069$^{***}$             $-$0.001
                                         p = 0.000                p = 0.790
  Diff-in-diff estimator               0.616$^{***}$           $-$0.107$^{***}$
                                         p = 0.000               p = 0.00000
  Implements and machinery (logs)     $-$0.027$^{***}$          0.029$^{***}$
                                         p = 0.001               p = 0.00000
  Livestoc (logs)k                         0.008                  $-$0.0005
                                         p = 0.207                p = 0.957
  Number of farms (logs)                   0.009               $-$0.024$^{***}$
                                         p = 0.152                p = 0.002
  Foreign people ratio                 $-$0.046$^{*}$              $-$0.049
                                         p = 0.069                p = 0.586
  Population growth rate 1860-1870         0.002        
                                         p = 0.805      
  Constant                             0.140$^{***}$    
                                         p = 0.0002     
                                                        
  Observations                             2,035                    2,035
  R$^{2}$                                  0.694                    0.279
  Adjusted R$^{2}$                         0.693                   $-$0.500
  F Statistic                                            63.136$^{***}$ (df = 6; 977)
                                                        
  *Note:*                                               
  ---------------------------------- ------------------ ------------------------------

  : Cotton production per total agricultural production in confederate
  states including population growth[]{label="tab:cotcsa"}

  ---------------------------------- ------------------- -----------------------------
                                                         
                                                         
                                                         
                                                         
                                                         
                                            *OLS*                    *FE*
                                                         
                                             (1)                      (2)
                                                         
  Slave ratio                         $-$0.002$^{***}$   
                                         p = 0.00000     
  Before the 13th Amendment               $-$0.0001                  0.002
                                          p = 0.230                p = 0.362
  Diff-in-diff estimator                0.0004$^{*}$           $-$0.026$^{***}$
                                          p = 0.079                p = 0.001
  Implements and machinery (logs)      0.0001$^{***}$              $-$0.003
                                         p = 0.00001               p = 0.218
  Livestock (logs)                    $-$0.0001$^{***}$              0.004
                                          p = 0.004                p = 0.285
  Number of farms (logs)               0.0001$^{***}$              $-$0.002
                                         p = 0.0004                p = 0.591
  Foreign people ratio                $-$0.001$^{***}$             $-$0.017
                                         p = 0.0005                p = 0.622
  Population growth rate 1860-1870     $-$0.0001$^{*}$   
                                          p = 0.056      
  Constant                                 0.0002        
                                          p = 0.472      
                                                         
  Observations                              2,035                    2,035
  R$^{2}$                                   0.269                    0.033
  Adjusted R$^{2}$                          0.266                  $-$1.013
  F Statistic                                             5.541$^{***}$ (df = 6; 977)
                                                         
  *Note:*                                                
  ---------------------------------- ------------------- -----------------------------

  : Tobacco production per total agricultural production in confederate
  states including population growth[]{label="tab:tobcsa"}

[^1]: According to @wright2013slavery [29], tobacco employed two thirds
    of African slaves.

[^2]: Considering that the American Civil War started in 1861, young men
    recorded in the Census that enlisted in the Army would be 11 years
    old and older, although it is expected that the use of child
    soldiers would have been reserved by the last struggling moments of
    the war.

[^3]: Farm products price index in 1860 was 77 and 112 in 1870, being
    100 in 1910-1914 according to @stine1933.

[^4]: From now on abbreviated as \"FE\"
