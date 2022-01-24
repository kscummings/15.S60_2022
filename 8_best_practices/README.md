# Session 8: Best Practices in Scientific Computing

## Pre-Assignment

Much of this session is spent on tips for maintaining a reproducible computing environment, which involves a lot of installation! The pre-assignment will check that you can run the required installation commands, and then at the end you'll uninstall everything so we can do it again live in class.

We will be using Conda for managing dependencies and virtual environments; you should already have it installed from a previous session. To check, open a terminal:

- On Windows, open the Anaconda Prompt
- On Linux/macOS, open your regular terminal

and then run:

`$ conda --version`

If the above command doesn't output an error, then you're off to a good start and can skip to the section on **Building a Trial Environment**. If not, follow the instructions below to install Conda. **If you're on an Apple Silicon Mac**, then please read the installation notes even if the previous step worked!

Note that I'll be using Conda version 4.11.0 (the latest) in the session. Earlier versions should also be fine, but if you have trouble running the commands in this pre-assignment then updating to this version is a good troubleshooting step.

### Installing Conda (Windows/Linux/macOS)

Welcome to the confusing world of Conda installers! There are many different flavors of installer with various default settings, but you can try to use one called Miniforge.

Visit [conda-forge/miniforge](https://github.com/conda-forge/miniforge) and download + run the installer under **Miniforge3** that corresponds to your computer's architecture. Also feel free to use a package manager (e.g. APT, Pacman on Linux; Homebrew on MacOS) if it provides Miniforge.

### Installing Conda (Apple Silicon Mac)

To make things 'simpler', we'll run the Intel version of Conda in emulation mode. If `$ conda --version` indicated that Conda is already installed on your machine, run `$ conda info` and check that `platform` shows `osx-64`. If it instead says `osx-arm64`, then uninstall Conda according to the method you used to install it originally, and reinstall it as follows.

First, ensure you have Rosetta2 installed (this provides Intel emulation). From a terminal:

`$ softwareupdate --install-rosetta`

Then, download + run the x86_64 (i.e. Intel) Miniforge installer from the link in the above section.

When you've installed Conda, run `$ conda info` and check that `platform` shows `osx-64`.

### Building a Trial Virtual Environment

In the terminal you used to check Conda's version, create a new directory in your home directrory and change into it:

`$ mkdir ~/test`

`$ cd ~/test`

Create a new conda environment:

`$ conda create -n test_env -c conda-forge --override-channels`

Then activate the environment and add another channel:

`$ conda activate test_env`

`(test_env) $ conda config --env --append channels bioconda`

Show information about the environment and store it in a text file:

`(test_env) $ conda info > env_info.txt`

Install the `julia`, `python`, and `snakemake` packages into this environment.

`(test_env) $ conda install julia=1.6 python=3.8 snakemake`

Record information about the installation:

`(test env) $ conda env export --from-history > env_history.txt`

Remove the environment:

`(test_env) $ conda deactivate`
`$ conda remove -n test_env --all`

Upload your `env_info.txt` and `env_history.txt` files to Canvas under the pre-assignment.

### Contact

Depending on your system, this could be a pretty confusing pre-assignment. Any questions can be directed to <sgilmour@mit.edu> and we will figure it out!