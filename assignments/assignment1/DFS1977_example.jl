##Dingel, DFS 1977, example of function call

##Set up Julia packages
import Pkg

##Must be run once to install packages: (https://docs.julialang.org/en/v1/stdlib/Pkg/index.html)
#run(`mkdir -p DFS77project`) ##Create a folder for this project (https://docs.julialang.org/en/v1.0.0/manual/running-external-programs/)
#for package in ["CSV","LaTeXStrings","Interpolations","Plots"]
#  Pkg.add(package)
#end

Pkg.activate("./DFS77project") ##Add packages to this project 
using CSV,DelimitedFiles,LaTeXStrings,Interpolations,Plots,Random #Load packages

include("DFS1977functions.jl")


Random.seed!(1234) # set seed
N = 150; # no. of varieties
a =hcat(ones(N,1),0.25*ones(N,1) + rand(N,1));
a[:,2] = sort(a[:,2])
b = 0.5*rand(N) + 0.5*ones(N)
b = b / sum(b)
L = ones(2)
g = 1.0;

writedlm("DFS1977_example_a.txt",a)
writedlm("DFS1977_example_b.txt",b)

DFS1977fig1(a,b,L)
z_bar, A_bar,z_bar_star,A_bar_star,omega_bar = DFS1977solver(a,b,L,g)
println("Solution: z_bar_star = ", z_bar_star, " z_bar = ", z_bar, " omega_bar = ", omega_bar)
z_bar, A_bar,z_bar_star,A_bar_star,omega_bar = DFS1977solver(a,b,L,0.9)
println("Solution: z_bar_star = ", z_bar_star, " z_bar = ", z_bar, " omega_bar = ", omega_bar)
