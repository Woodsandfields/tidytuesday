TidyTuesday\_2019\_01\_22: Comparing two counties
================
Karine G
28 janvier 2019

A TidyTuesday social project about prisons with the Vera Institute
------------------------------------------------------------------

This is my personal \#TidyTuesday \#01.

\#TidyTuesday is a weekly event meant for the R4DS (R for Data Science) community. You can read more here: <https://github.com/rfordatascience/tidytuesday>. Its purpose is to help the student community to build more technical practice, not to work on their data analysis skills.

This week, the \#TidyTuesday community was given a dataset from the [Vera Institute Github](https://github.com/vera-institute/incarceration_trends). As I just flex my student muscles again after a long pause in my learning of R and DS, and besides have very little free time on my hands outside my occupational and family activities, I decided that this week would be the occasion for me to play around with the whole \#TidyTuesday concept and the datasets of the week while using the R environment again and devising an overall strategy for personal progress over the coming months.

In that perspective, and while well aware of the social objectives and praising them much (data for good), I decided to cut down my ambition to comparing a few figures from two counties out of a fictional perspective, - and pay there my tribute to a lovely movie. Indeed, this week's topic is a very sensitive one, and I would find it even less sensible if I just played around with prison figures for just the sake of learning without producing meaningful graphs in the end. So, fiction will do, as fiction puts everyone on an equal footing, data students and convicts/inmates/etc.: we all indulge into watching a good movie on occasion, don't we ?

My selection of datasets.
-------------------------

A particularity of Vera Institute's data collection is that it details figures on a county-level, not a state-level. Meanwhile, one issue it points at is ["The Growth of Jails in Rural America"](https://www.vera.org/publications/out-of-sight-growth-of-jails-rural-america).

The [movie *My Cousin Vinny* is a 1992 American comedy film](https://en.wikipedia.org/wiki/My_Cousin_Vinny) directed by Jonathan Lynn and starring Joe Pesci and Marisa Tomei. The scene is supposed to take place in the Beechum county, Alabama, but was mostly shot in the Jasper County, Georgia. Two teenagers from New York are convicted and trialed for a murder they didn't commit in a rural area and ask a lawyer from their family to come and help them.

So, my two counties will be Beechum, Alabama, and Jasper, Georgia. Again, this is all about data practice, and winking at fiction.

There are two kinds of datasets provided, of which I'll choose the one about pretrial trends.

``` r
my_df <- read.table("pretrial_population.csv", sep=",")
#summary(pretrial_pop)
```

Including Plots
---------------

You can also embed plots, for example:

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
