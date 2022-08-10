## International Macroeconomics and Trade

BUSN 33946 & ECON 35101\
Rodrigo Adao & Jonathan Dingel\
Autumn 2022

This is a graduate course in international trade.
It introduces the fundamental concepts and tools of international trade and economic geography to prepare students to tackle research questions in these areas.
This course is the first in the Economics Department's second-year Trade and Growth sequence.

We will meet in person consistent with University policies.

### Logistics

Email: <rodrigo.adao@chicagobooth.edu> & <jdingel@chicagobooth.edu>\
Office: Harper 381 & 380\
Office hours: By appointment, please email <!-- \ Teaching assistant: TBA\ -->
Course materials: [github.com/jdingel/econ35101](http://github.com/jdingel/econ35101) and
[canvas.uchicago.edu](https://canvas.uchicago.edu/courses/43957)\
Class schedule: Wednesdays 8:30 AM - 11:30 AM

### Assessment

Grades will be based on comprehension checks (15%), assignments (60%),
and a final exam (25%).

-   Comprehension checks should require little more than comprehending
    the assigned readings.

-   We will give three types of assignments, which require more time and
    creativity:

    1.  Economics: We will ask you to derive a theoretical result or
        survey an empirical literature.

    2.  Programming: We will ask you to write a function that solves for
        equilibrium or estimates a parameter. See comments on
        computation below.

    3.  Referee reports: We will ask you to write a referee report on a
        recent working paper.

-   In addition to course material, the final exam may ask you to propose an original research idea, so you should be thinking about these during our class (and for the rest of your life!).

Comprehension checks and assignments will be posted to this GitHub repository.
Submit your work via the Canvas site.

### Computation

Scientific computation is important.
We hope that you have already been exposed to the basics.
Please glance at Jesus Fernandez-Villaverde's "[Computational Methods for Economists](https://www.sas.upenn.edu/~jesusfv/teaching.html)" course.
Jonathan's workflow is outlined in my [project template](https://github.com/jdingel/projecttemplate).

You have choices to make.
See "[A Comparison of Programming Languages in
Economics](https://github.com/jesusfv/Comparison-Programming-Languages-Economics)."
[Jonathan recommends](https://tradediversion.net/2018/09/17/why-i-encourage-econ-phd-students-to-learn-julia/)
the [Julia language](http://www.julialang.org).
Julia's advantages are that it is open source and typically faster than Matlab.
Its downside is that it is a young language, so its syntax is evolving.
To get started doing economics in Julia, see Perla, Sargent, and Stachurski's
"[Lectures in Quantitative Economics](https://lectures.quantecon.org/jl/)."
You may submit Julia or Matlab code as homework solutions.
Please confer with us before submitting code written in other languages.

Standards for transparency and replicability are rising quickly.
The AEA has appointed a [Data Editor](https://github.com/AEADataEditor/) who will verify that code works [prior](https://www.aeaweb.org/journals/policies/data-code) to accepting papers for publication.
Please write code for this class that is transparent and self-contained.

### Other resources

-   We borrow considerably from Arnaud Costinot and Dave Donaldson's PhD [class
    materials](https://dave-donaldson.com/teaching/)

-   We will link to relevant [Trade
    Diversion](https://tradediversion.net) blog posts

-   Alan Deardorff's [Glossary of International
    Economics](http://www-personal.umich.edu/~alandear/glossary/)

### Presentation and writing

Graduate students often underestimate the importance of good writing and presentation skills.
A job market paper must teach us something new.
Teaching means communicating your content to the audience.
A useful idea that cannot be conveyed is not a useful idea.

Clear presentations also build others’ confidence that you are a clear thinker.
As a well-known IO economist once said, “if I see typos in your slides, I know there are typos in your code.”


## Course Outline and Reading List

We have opted for a minimalist reading list.
Every reading listed below is required.
We will discuss each paper and chapter that is listed in considerable detail.
Do the readings before class each week.
If you don't have time to do all the readings before class, we have marked the highest-priority item in each week with an exclamation point.

If you’re going to be a trade economist, you ought to own the following
books:

-   Avinash Dixit and Victor Norman, [*Theory of International Trade: A
    Dual, General Equilibrium
    Approach*](https://catalog.lib.uchicago.edu/vufind/Record/11215357), 1980.

-   Elhanan Helpman and Paul R. Krugman, [*Market Structure and Foreign
    Trade: Increasing Returns, Imperfect Competition, and the
    International
    Economy*](https://catalog.lib.uchicago.edu/vufind/Record/656072), 1985.

-   Robert C. Feenstra, [*Advanced International Trade: Theory and
    Evidence*](https://catalog.lib.uchicago.edu/vufind/Record/10388164), 2016.

#### Week 1: Gains from Trade and Comparative Advantage 

-   Dixit and Norman textbook, chapters 1 and 3.

-   :exclamation: Deardorff, Alan V. 1980. "[The General Validity of the Law of
    Comparative
    Advantage](http://www.journals.uchicago.edu.proxy.uchicago.edu/doi/10.1086/260915)."
    *Journal of Political Economy*, 88(5): 941-957.

-   Bernhofen, Daniel, M., and John C. Brown. 2004. "[A Direct Test of
    the Theory of Comparative Advantage: The Case of
    Japan](http://www.journals.uchicago.edu.proxy.uchicago.edu/doi/10.1086/379944)",
    *Journal of Political Economy*, 112 (1): 48-67.

-   Bernhofen, Daniel, M., and John C. Brown. 2005. "[An Empirical
    Assessment of the Comparative Advantage Gains from Trade: Evidence
    from
    Japan](http://www.aeaweb.org.proxy.uchicago.edu/articles?id=10.1257/0002828053828491)."
    *American Economic Review*, 95 (1): 208-225.

#### Week 2: Deterministic Ricardian models 

-   :exclamation: Dornbusch, Rudiger, Stanley Fischer, and Paul Samuelson. 1977.
    "[Comparative Advantage, Trade, and Payments in a Ricardian Model with a Continuum of Goods](http://www.jstor.org.proxy.uchicago.edu/stable/1828066?seq=1#page_scan_tab_contents)."
    *American Economic Review*, 67(5): 823-839

-   Costinot, Arnaud. 2009. 
    "[An Elementary Theory of Comparative Advantage](http://www.jstor.org.proxy.uchicago.edu/stable/40263857)." 
    *Econometrica,* 77(4): 1165-1192.

-   Matsuyama, Kiminori. 2000. 
    "[A Ricardian Model with a Continuum of Goods under Nonhomothetic Preferences: Demand Complementarities, Income Distribution and North-South Trade](http://www.journals.uchicago.edu.proxy.uchicago.edu/doi/full/10.1086/317684)."
    *Journal of Political Economy*, 108(6): 1093-1120.

#### Week 3: Probabilistic Ricardian models 

-   :exclamation: Eaton, Jonathan and Samuel Kortum. 2002. "[Technology, Geography,
    and
    Trade](http://onlinelibrary.wiley.com.proxy.uchicago.edu/doi/abs/10.1111/1468-0262.00352)."
    *Econometrica,* 70(5): 1741-1779.

-   Costinot, Arnaud and David Donaldson, and Ivana Komunjer. 2012.
    "[What Goods Do Countries Trade? A Quantitative Exploration of
    Ricardo's
    Ideas](http://academic.oup.com.proxy.uchicago.edu/restud/issue/79/2)."
    *Review of Economic Studies,* 79(2): 581-608.

#### Week 4: Gravity and gains from trade 

-   :exclamation: Head, Keith, and Thierry Mayer. 2014. "[Gravity Equations:
    Workhorse, Toolkit, and
    Cookbook](http://www.sciencedirect.com.proxy.uchicago.edu/science/article/pii/B9780444543141000033)."
    in *Handbook of International Economics*, Vol. 4, 131-195.

-   :exclamation: Kehoe, Timothy J., Pau S. Pujolàs, Jack Rossbach. 2017.
    "[Quantitative Trade Models: Developments and  Challenges](https://www.annualreviews.org/doi/abs/10.1146/annurev-economics-080614-115502)."
    *Annual Review of Economics* 9:1, 295-325.

-   Costinot, Arnaud and Andres Rodriguez-Clare. 2014.
 "[Trade Theory
    with Numbers: Quantifying the Consequences of
    Globalization](http://www.sciencedirect.com.proxy.uchicago.edu/science/article/pii/B9780444543141000045)."
    in *Handbook of International Economics*, Vol. 4, 197-261.

-   Allen, Treb, Costas Arkolakis, and Yuta Takahashi. 2020.
 "[Universal
    Gravity](https://doi.org/10.1086/704385)," *Journal of Political
    Economy*, 128(2).

-   Feyrer, James. 2021.
 "[Distance, Trade, and Income -- The 1967 to 1975 Closing of the Suez Canal as a Natural Experiment](https://doi.org/10.1016/j.jdeveco.2021.102708)."
    *Journal of Development Economics*.

-   Feyrer, James. 2019.
 "[Trade and Income - Exploiting Time Series in Geography](https://www.aeaweb.org/articles?id=10.1257/app.20170616)."
    *American Economic Journal: Applied Economics*, 11(4): 1-35.

#### Week 5: Multiple factors of production 

-   Jones, Ronald W. and J. Peter Neary. 1984. "[The positive theory of
    international
    trade](http://www.sciencedirect.com.proxy.uchicago.edu/science/article/pii/S1573440484010042)."
    in *Handbook of International Economics*, Vol. 1, 1-62.

-   :exclamation: Feenstra textbook, chapters [1](http://assets.press.princeton.edu/chapters/s10615.pdf) and 2.

-   Davis, Donald and David Weinstein. 2001. "[An Account of Global
    Factor
    Trade.](http://www.aeaweb.org.proxy.uchicago.edu/articles?id=10.1257/aer.91.5.1423)
    *American Economic Review*, 91(5): 1423-1453.

-   Costinot, Arnaud and Jonathan Vogel. 2010. "[Matching and Inequality
    in the World
    Economy.](http://www.journals.uchicago.edu.proxy.uchicago.edu/doi/abs/10.1086/655858)"
    *Journal of Political Economy*, 118(4): 747-786.

#### Week 6: Increasing returns and home-market effects 

-   :exclamation: Krugman, Paul. 1980. "[Scale Economies, Product Differentiation, and
    the Pattern of
    Trade.](http://www.jstor.org.proxy.uchicago.edu/stable/1805774)"
    *American Economic Review*, 70(5): 950-959.

-   Fajgelbaum, Pablo, Gene M. Grossman, and Elhanan Helpman. 2011.
    "[Income Distribution, Product Quality, and International
    Trade](http://www.journals.uchicago.edu.proxy.uchicago.edu/doi/10.1086/662628)."
    *Journal of Political Economy*, 119(4): 721-765.

-   Dingel, Jonathan I. 2017. 
    "[The Determinants of Quality Specialization](http://academic.oup.com.proxy.uchicago.edu/restud/article/84/4/1551/2684498)",
    *Review of Economic Studies*, 84(4): 1551-1582.

-   Matsuyama, Kiminori. 2019. 
    "[Engel's Law in the Global Economy: Demand‐Induced Patterns of Structural Change, Innovation, and Trade](https://onlinelibrary-wiley-com.proxy.uchicago.edu/doi/10.3982/ECTA13765)",
    *Econometrica* 87: 497-528. 

-   Costinot, Arnaud, Dave Donaldson, Margaret Kyle, and Heidi
    Williams. 2019. "[The More We Die, The More We Sell? A Simple Test
    of the Home-Market Effect](https://academic.oup.com/qje/article/134/2/843/5298504)".
    *Quarterly Journal of Economics*, 134(2): 843–894.

#### Week 7: Models of agglomeration 

-   Henderson, J.V. 1974. "[The Sizes and Types of
    Cities](http://www.jstor.org.proxy.uchicago.edu/stable/1813316)."
    *American Economic Review*, 64(4): 640-656.

-   :exclamation: Ahfeldt, Gabriel M., Stephen J. Redding, Daniel M. Sturm, and
    Nikolaus Wolf. 2015. "[The Economics of Density: Evidence from the
    Berlin
    Wall](http://onlinelibrary.wiley.com.proxy.uchicago.edu/doi/abs/10.3982/ECTA10876)."
    *Econometrica,* 83(6): 2127–2189.

-   Dingel, Jonathan I. and Felix Tintelnot. 2021. "[Spatial Economics for Granular Settings](http://www.jdingel.com/research/DingelTintelnotSEGS.pdf)." Working paper.

-   Davis, Morris and Jesse Gregory. 2020. "[Place-Based Redistribution in Simple Location-Choice Models](https://www.ssc.wisc.edu/~jmgregory/md-jg-redistribution.pdf)." Working paper.

#### Week 8: Spatial sorting of skills and sectors 

-   :exclamation: Diamond, Rebecca. 2016. "[The Determinants and Welfare Implications
    of US Workers’ Diverging Location Choices by Skill:
    1980-2000](http://www.aeaweb.org.proxy.uchicago.edu/articles?id=10.1257/aer.20131706)."
    *American Economic Review*, 106(3): 479-524.

-   Davis, Donald and Jonathan I. Dingel. 2019. "[A Spatial Knowledge
    Economy](https://www.aeaweb.org/articles?id=10.1257/aer.20130249)."
    *American Economic Review*, 109 (1): 153-70.

-   Davis, Donald and Jonathan I. Dingel. 2020. "[The Comparative
    Advantage of
    Cities.](http://faculty.chicagobooth.edu/jonathan.dingel/research/DavisDingel-TheComparativeAdvantageofCities.pdf)"
    *Journal of International Economics*.

#### Week 9: Open-economy growth

-   Matsuyama, Kimonori. 1992.
 "[Agricultural Productivity, Comparative Advantage, and Economic Growth](https://doi.org/10.1016/0022-0531(92)90057-O)," *Journal of
    Economic Theory*, 58: 317-334.

-   Acemoglu, Daron and Jaume Ventura. 2002.
 "[The World Income Distribution](http://academic-oup-com.proxy.uchicago.edu/qje/article/117/2/659/1883940),"
    *The Quarterly Journal of Economics,* 117(2): 659-694.

-   Grossman, Gene M. and Elhanan Helpman. 1994.
 "[Endogenous Innovation in the Theory of Growth](https://www.aeaweb.org/articles?id=10.1257/jep.8.1.23)",
    *Journal of Economic Perspectives*, 8(1): 23-44.

-   Rivera-Batiz, Luis A. and Paul M. Romer. 1991.
 "[Economic Integration and Endogenous Growth](https://www.jstor.org/stable/2937946)," *The Quarterly
    Journal of Economics*, 106(2): 531-555.

-   :exclamation: Buera, Francisco J. and Ezra Oberfield. 2020.
 "[The Global Diffusion of Ideas](https://doi.org/10.3982/ECTA14044)," *Econometrica*.

#### Week 10: Heterogeneous firms 

-   Melitz, Marc and Daniel Trefler. 2012. "[Gains from Trade when Firms
    Matter](http://www.aeaweb.org.proxy.uchicago.edu/articles?id=10.1257/jep.26.2.91)."
    *Journal of Economic Perspectives,* 26(2): 91-118.

-   :exclamation: Melitz, Marc J. 2003. "[The Impact of Trade on Intra-Industry
    Reallocations and Aggregate Industry
    Productivity.](http://www.jstor.org.proxy.uchicago.edu/stable/1555536)"
    *Econometrica,* 71(6): 1695-1725.
