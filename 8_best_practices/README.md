# Session 8: Best Practices in Scientific Computing

## Pre-Assignment

Much of this session is spent on tips for maintaining a reproducible computing environment, which involves a lot of installation! The pre-assignment will check that you can run the required installation commands, and then at the end you'll uninstall everything so we can do it again live in class.

We will mainly be using Conda for managing dependencies and virtual environments; you should already have it installed from a previous session. To check, open a terminal:

- On Windows, open the Anaconda Prompt
- On Linux/macOS, open your regular terminal

and then run:

`$ conda --version`

If the above command doesn't output an error, then you're off to a good start and can skip to the section on **Building a Trial Environment**. If not, follow the instructions below to install Conda.

Note that I'll be using Conda version 4.11.0 (the latest) in the session. Earlier versions should also be fine, but if you have trouble running the commands in this pre-assignment then updating to this version is a good troubleshooting step.

### Installing Conda (Windows/Linux/macOS)

Welcome to the confusing world of Conda installers! There are many different flavors of installer with various default settings, but you can try to use one called Miniforge.

Visit [conda-forge/miniforge](https://github.com/conda-forge/miniforge) and download + run the installer under **Miniforge3** that corresponds to your machine's architecture. Also feel free to use your favorite package manager (e.g. APT, Pacman on Linux; Homebrew on MacOS) if it provides Miniforge.

### Building a Trial Virtual Environment

In the terminal you used to check Conda's version, create a new Conda environment:

`$ conda create -n test_env`

Then activate the environment and add two channels (don't worry, we will cover these in class):

`$ conda activate test_env`

`(test_env) $ conda config --env --add channels bioconda`

`(test_env) $ conda config --env --add channels conda-forge`

Show information about the environment and store it in a text file:

`(test_env) $ conda info > env_info.txt`

Install the `r`, `python`, and `snakemake` packages into this environment:

`(test_env) $ conda install r=4.0 python=3.8 snakemake`

Record information about the installation:

`(test env) $ conda env export --from-history > env_history.txt`

Remove the environment:

`(test_env) $ conda deactivate`
`$ conda remove -n test_env --all`

Upload your `env_info.txt` and `env_history.txt` files to Canvas under the pre-assignment.

### Checking Your Julia Installation

Please check that your Julia installation from Session 6 is working correctly (I'll be using version 1.7.1 in class).

### Contact

Any questions can be directed to <sgilmour@mit.edu> and we will figure it out!
