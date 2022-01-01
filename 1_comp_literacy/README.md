# Preassignment 1

Before the first class, please complete the following tasks. There are seven tasks, but most should be quick and straightforward. 

Completing the pre-assignment will ensure you have all of the accounts and software needed to follow along with the first session that covers the basics of computing literacy for optimization and statistics:
#### Computing Tools
- Executing commands in Terminal 
- Version control with Git + Github
- Distributed computing on the Engaging cluster
#### Writing and Organizational Tools
- Typesetting in LaTeX 
- Managing citations with Zotero

## Task 1: Make a Github account

We will be using Github to distribute code throughout the course. Please go to [www.github.com](www.github.com) and make a free account.

## Task 2: Install Git

Please navigate to [https://git-scm.com/book/en/v2/Getting-Started-Installing-Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) to install Git. Follow the installation instructions (you might already have it installed) for your operating system.

For Windows users, the download will include Git Bash. Git Bash is a package that installs Bash (a popular default shell on Linux and macOS), some common bash utilities, and Git on a Windows operating system. 

Open terminal (macOS/Linux) or Git Bash (Windows). "Clone" the Github for this class by entering the following command (we will talk about this more in the session):

`git clone https://github.com/kscummings/15.S60_2022.git`

This will create a copy of the Github course materials in the folder to which you cloned. **Take a screenshot of your terminal/PuTTY output after successfully cloning.**

## Task 3: (Windows only) Download PuTTY

We will be accessing Engaging through an SSH client. Windows users should navigate to [http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) to download PuTTY. Mac users will be able to access Engaging through terminal.

## Task 4: (Sloan/ORC only) Access Engaging cluster

In order to login, you first need to request an account by emailing [stshelp@mit.edu](stshelp@mit.edu).

Once your account has been created, login to Engaging.

If you're using Mac/linux, type `ssh <kerberos_user_name>@eosloan.mit.edu` into the terminal and enter your password. If you're using Windows, you will need to open PuTTY (see previous task), enter host name `eosloan.mit.edu`, and click "Open". Login with your MIT Kerberos username and password.

In this session, we will use julia on Engaging, and we need to install a few packages. Once you've logged into Engaging, check to ensure you can run the following commands (don't worry if you don't understand what we're doing here - we'll discuss during the session):

1. ```srun --pty --partition=sched_any_quicktest --cpus-per-task=1 --mem=2G bash```  (Note: this may take a few minutes depending on how busy the cluster is)
2. ```module load julia/1.5.2```
3. ```julia``` (At this point, a Julia session will open)
4. Enter the following commands:

```julia
julia> println("Hello, World!")

julia> exit()
```
5. **Take a screenshot of your commands/outputs for #1-4. This will be submitted in Canvas.**

## Task 5: Make an Overleaf account

We will be using Overleaf to cover the basics of LaTeX. Go to [www.overleaf.com](www.overleaf.com) and make a free account.

## Task 6: Download Zotero and create an account

Zotero is a tool to help organize and cite papers. Download Zotero and a browser connector here [https://www.zotero.org/download/](https://www.zotero.org/download/). Create a Zotero account here [https://www.zotero.org/user/register](https://www.zotero.org/user/register).

## Task 7: Submit screenshots on Canvas

Put the two screenshots from Tasks 2 and 4 in a single PDF file and submit on Canvas. If you are not affiliated with Sloan/ORC and do not have access to Engaging, just submit the screenshot from Task 2.

## Questions? 

Email Alex at aschmid@mit.edu.
