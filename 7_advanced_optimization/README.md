# Pre-assignment 7

*Note.* Any Julia version >= 1.6 is fine for my session.

0. I am assuming you already have `Gurobi` installed. If not, please install it following the instructions in Pre-assignment 6.

1. Now we install `Mosek`, which is a commercial solver for solving conic convex optimization:
   * Go to https://www.mosek.com/downloads/, scroll to *Default Installers (Preferred)*, then download and install the version based on your operating system.
   
   * After that we need to get an academic license for using it. Go to https://www.mosek.com/license/request/?i=acp  and using your MIT email address, request an academic license. `Mosek` will email you (usually within minutes) the license file with instructions on how to install it. Install the license accordingly.
   
   * Now open `Julia` REPL. Press `]` to enter package installation mode and input the following: 
     `add MosekTools, Mosek, Convex, JuMP, Images, DelimitedFiles, Gadfly`
   
     which besides `Mosek` installs some other packages that we will use. 
   
   * After the installation is done, press `BACKSPACE` to go back to `REPL` mode and input the following: 
   
     `using  MosekTools, Mosek, Convex, JuMP, Images, DelimitedFiles, Gadfly`
     
     If installed properly, it will output nothing. **Take a screenshot of the `REPL` containing the two lines of code mentioned above and upload it as the pre-assignment 7.**
     
### Those who have Apple's M1 chip
If you have a computer with Apple's new M1 chip, then Mosek would not compile there (see [link](https://themosekblog.blogspot.com/2020/11/apple-silicon-m1-plans.html)). In such a case (or if you have any issue installing `Mosek` or `MosekTools`) alternatively please install `COSMO`, which is an opensource solver for conic problems, by running the following in Julia:

(Press `]` to enter package installation mode)

`add COSMO, Convex, JuMP, Images, DelimitedFiles, Gadfly`

and then test it using

(Press `BACKSPACE` to go back to `REPL` mode)

`using COSMO, Convex, JuMP, Images, DelimitedFiles, Gadfly`

**Take a screenshot of the `REPL` containing the two lines of code mentioned above and upload it as the pre-assignment 7.**
     
### Any other issue?
If you have any issue during the installation phase, please send me an email to `sdgupta@mit.edu` or on zoom chat (you can find me under the name `Shuvomoy Das Gupta` if you are logged in zoom using your MIT account).
