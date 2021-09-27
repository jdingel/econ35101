International Macroeconomics and Trade\
BUSN 33946 & ECON 35101\
Autumn 2021\
Assignment 1\
Due: 18 Oct 2021, 8:30am


Your assignment is to write a function that solves a discrete approximation of Dornbusch, Fischer & Samuelson - A Ricardian Model with a Continuum of Goods (*AER* 1977).
You will employ it to do comparative statics.
You may do so in **Julia** or **Matlab**.
Submit both your code and output via Canvas before the deadline.
You may consult your classmates while working on the assignment, but each individual student must submit their own (distinct) code and output.

Your function should take four arguments:
the productivities *a*,
the Cobb-Douglas shares *b*,
the country sizes *L*,
and
the iceberg trade cost *g*.
In Julia's syntax, here are the types and dimensions of these arguments:
```
function DFS1977solver(a::Array{Float64,2},b::Array{Float64,1},L::Array{Float64,1},g::Float64)
```

Your function should perform basic error checking before producing
output:

-   verify that *a* has dimension *N*-by-2 (where *N*&gt;2) and is
    non-negative
-   let the first column of *a* represent foreign, the second column
    home
-   verify that *A* = *a*\[:,1\]./*a*\[:,2\] is monotone decreasing
    (equation 1 in DFS)
-   verify that *b* is a vector of dimension *N* (the same length as
    *A*), strictly positive, and that sum(*b*)==1
-   verify that *g* is a scalar in (0,1\] (as assumed in DFS III.B)

I will test your function by passing arrays *a*, *b*, *L*, and *g* to your function and verifying that the output is correct.
Note that these arrays have fixed dimensionality but may be of arbitrary length.
In particular, I might approximate the continuum of goods by using a grid of *N* = 100 or 1000 points.
Make sure your solver can handle this.
If I pass arrays *a* and *b* with incompatible lengths, your function should return an error.

Before writing your solver function, write a function that plots the
*A(z)* and *B(z;L\*/L)* functions that appear in equations (1) and (10')
of DFS to produce a version of DFS Figure 1. 
Pass the *a\[\]* and *b\[\]* provided in the [DFS1977\_example\_a.txt](DFS1977_example_a.txt) and [DFS1977\_example\_b.txt](DFS1977_example_b.txt) files to your function (along with *L=L\*=1*) and include the resulting image output in your submission.
It should look like [Figure\_1.png](Figure_1.png).

Write your solver function, which, given *a*, *b*, *L*, and *g*, solves for the value
![LaTeX:\\overline{\\omega}](https://canvas.uchicago.edu/equation_images/%255Coverline%257B%255Comega%257D)
that satisfies equation (11) \[in the case *g=1*\] or equation (22)
\[generally\], as best can be done given the discrete approximation of
the support of *z*. 
Verify that your solution for the *a\[\]* and *b\[\]* provided in the TXT files matches those provided in [DFS1977\_example.pdf](DFS1977_example.pdf) when *g=1* and *g=0.9*.

In class, we said that Home's gains from trade can be written as an
integral that depends on 
![LaTeX: \\tilde{z}](https://canvas.uchicago.edu/equation_images/%255Ctilde%257Bz%257D "\tilde{z}"),
*b(z)*, *a(z)*, *a\*(z)*, and
![LaTeX:\\omega](https://canvas.uchicago.edu/equation_images/%255Comega "\omega").
Similarly for Foreign. 
Write a function that computes Home welfare and Foreign welfare in equilibrium as a function of *a*, *b*, *L*, and *g*.
I will feed two different *a\[\]* arrays to your function to confirm that both countries experience an increase in welfare when Foreign experiences uniform technological progress.

What is the relationship between the volume of trade and each country's
gains from trade in this model?
Use your solver to produce an example of different equilibria (with the same *L*, *L\**, and *g&lt;1*) that exhibit the same volume of trade and different gains from trade.
If you also hold fixed the *b* schedule, can you produce such an example? 
Why or why not?
What can be said about the magnitude of the gains from trade in this model if we observe the equilibrium volume of trade and do not observe autarky prices?

**Programming help**

If you have considerable difficulty getting started in Julia or Matlab, after consulting your classmates, you should ask Takashi for help.
Here are a few notes on getting started in Julia:

-   I recommend that you read the QuantEcon.org lectures on [Programming in Julia](https://lectures.quantecon.org/jl/index_learning_julia.html) to get started.
-   To install Julia on your own machine, download Julia 1.6 from
    <https://julialang.org/downloads>. The first ten lines
    of [DFS1977\_example.jl](DFS1977_example.jl) show how to install packages. 
	You might also consider those that are [dependencies for the QuantEcon package](https://github.com/QuantEcon/QuantEcon.jl/blob/master/REQUIRE) and those listed as [Useful
    Libraries](https://lectures.quantecon.org/jl/julia_libraries.html)
    by QuantEcon.
    Package installation can take a few minutes. Don't panic.
