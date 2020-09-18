International Macroeconomics and Trade\
BUSN 33946 & ECON 35101\
Autumn 2020\
Assignment 2\
Due: 26 Oct 2020, 8:30am

### Deliverables

For this assignment, please produce the following five outputs that are described in detail below:

1.  A table reporting a log-linear gravity regression estimated on 2000-2006 data.
    The table should have four columns, each employing a different Stata estimator to estimate the same specification:`reg`,`xtreg`,`areg`,`reghdfe`.
    Report the computation time associated with each.
2.  A table with eight columns reporting the results of regressing trade flows for 2004-2006 on these same covariates when including observations for which trade flows are zero.
    Use the Stata estimators specified below.
3.  A table reporting computation times in a race between `reghdfe`, `FixedEffectModels.jl`, and `fixest` for the non-zero trade flows for the years 1948-2006.
4.  A PDF that contains the tables listed above and responses to the questions about them that appear below.
5.  Code that produces all of the above.

Submit all your code, the TeX output, and the compiled PDFs in one ZIP file via Canvas before the deadline.\
You may consult your classmates while working on the assignment, but each individual student must submit their own (distinct) code and output.

Please allow Takashi and I to run your code on our machines by minimizing
your use of machine-specific filepaths.
Define a global variable for the filepath at the top of your scripts or, preferably, write everything using [relative filepaths](https://help.github.com/articles/about-readmes/#relative-links-and-image-paths-in-readme-files).

### Instructions

#### Download data

Grab the [`col_regfile09.zip`](http://econ.sciences-po.fr/sites/default/files/file/tmayer/data/col_regfile09.zip) file made available via the [Gravity Cookbook website](https://sites.google.com/site/hiegravity/data-sources) associated with the Head and Mayer (2014) handbook chapter.
This contains a 95 MB DTA file that is an unbalanced panel of trade flows between countries for 1948 to 2006.
You will use the following variables:
 `flow`, `distw`, `iso_o`, `year`, `iso_d`, `contig`, `comlang_off`.

#### Stata estimation

The `reg`, `xtreg`, `areg`, and `glm` packages are included in Stata by default.
Install the `reghdfe`, `ppml`, `poi2hdfe`, `ppml_panel_sg`, and `ppmlhdfe` on your machine using the `ssc install` command.
Use the `timer` function in Stata.

Warning:
I find that `outreg2` can be quite slow if you have many fixed effects.
I suggest using the `estout` package to produce TeX tables for this assignment.

##### Table 1: Log-linear estimation

Estimate a regression of log (non-zero) trade flows on log bilateral distance, a contiguity indicator, a common-language indicator, exporter-year fixed effects, and importer-year fixed effects for the years 2000-2006.
When using `reg`, you will have to create the fixed-effect dummies.
When using the `xtreg`, `areg`, and `reghdfe` commands, use the fixed-effect options to absorb them.
Report the computation time associated with each estimator.

You should find that your coefficient on log distance when using `reg` is -1.658; the standard error should be 0.00875.

Include answers to the following questions about Table 1 in your TeX file:

1.  Are the point estimates and standard errors numerically identical
    across the different estimators? Should they be?
2.  Are the number of observations and R-squared statistics identical?
    Should they be?
3.  How do the relative computation times of these estimators depend on
    the dimensionality and size of the data?

##### Table 2: Zeros

Now we examine the roles of zeros in the trade-flow matrix. Run a
regression for the years 2004-2006 with the same covariates as above.
Use Stata estimators and the following specifications to produce a table
containing 8 columns:

1.  A log-linear regression that omits observations in which flow equals zero.
2.  A log-linear regression that omits observations in which flow equals zero.
	In addition, set the dependent variable to log of flow plus one.
3.  A log-linear regression in which the dependent variable is log of flow plus one.
4.  An estimate of the same constant-elasticity specification that uses the `ppml` command to implement the [PPML estimator](http://personal.lse.ac.uk/tenreyro/LGW.html) of Silva and Tenreyro (REStat 2006). Use all observations, including zeros, in this and following three columns.
5.  An estimate of the same constant-elasticity specification that uses [the `poi2hdfe` command](https://ideas.repec.org/c/boc/bocode/s457777.html) to implement the PPML estimator.
6.  An estimate of the same constant-elasticity specification that uses [the `ppml_panel_sg` command](https://ideas.repec.org/c/boc/bocode/s458249.html) to implement the PPML estimator.
7.  An estimate of the same constant-elasticity specification that uses [the `ppmlhdfe` command](http://scorreia.com/software/ppmlhdfe/) to implement the PPML estimator.
8.  An estimate of the same constant-elasticity specification that uses [the `ppmlhdfe` command](http://scorreia.com/software/ppmlhdfe/) to implement the PPML estimator. Omit observations in which flow equals zero.

Include answers to the following questions about Table 2 in your TeX
file:

1.  Are your results sensitive to the omission of zeros?
2.  How well does making the dependent variable log(x+1) perform?
3.  Examine the residuals from your log-linear regression. Are they heteroskedastic? Report a Breusch–Pagan test statistic and a scatterplot of the residuals that addresses this question.
4.  How do the computation times compare?

#### Table 3: Comparing Stata’s reghdfe, Julia’s FixedEffectModels, R's fixest

Now estimate the log-linear specification of Table 1 using non-zero trade flows for all years (1948-2006) using `reghdfe`.
Compare the speed of this calculation to the speed of estimating it in Julia using the `FixedEffectModels` package and in R using the `fixest` package.
Use heteroskedastic-robust standard errors in all cases.

Julia:
-   Use the [StatFiles package](https://github.com/queryverse/StatFiles.jl) to load the
    DTA file.
-   Use the [FixedEffectModels package](https://github.com/matthieugomez/FixedEffectModels.jl) to estimate.
-   Use the [RegressionTables package](https://github.com/jmboehm/RegressionTables.jl) to produce tables.
-   Use the [`@time` macro](https://docs.julialang.org/en/v1/manual/performance-tips/index.html) in Julia to track performance.
-   Note that Julia functions are compiled the first time they are run, so the first run will be slow and you should not use the full-size data the first time you call your function.

R:
- Use the [foreign package](https://cran.r-project.org/web/packages/foreign/index.html) to load the DTA file.
- Use the [fixest package](https://cran.r-project.org/web/packages/fixest/index.html) to estimate ([short intro to fixest](https://cran.r-project.org/web/packages/fixest/vignettes/fixest_walkthrough.html), [fixest at GitHub](https://github.com/lrberge/fixest)).
- You likely know better than me how to export a pretty table from an R regression.
- R-blogger's [5 ways to measure running time of R code](https://www.r-bloggers.com/5-ways-to-measure-running-time-of-r-code/)

Include answers to the following questions in your submission:

1.  Verify that `reghdfe`, `FixedEffectModels`, and `fixest` return
    identical estimates. Are the standard errors identical?
2.  Which estimator is faster? By what magnitude?
<!-- 3.  How large are the gains from parallelizing the Julia computations in
    line with the instructions in the [FixedEffectModels.jl](https://github.com/matthieugomez/FixedEffectModels.jl) documentation? -->

