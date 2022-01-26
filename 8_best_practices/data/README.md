# data

## raw

This is where you perform your data dumps (i.e. when you receive data, just store it in here). It should be considered an *immutable* directory and you should only ever add files to it. You should *never* change or delete files unless you are absolutely sure that no code depends on them and you will never need the data again.

Adopting this attitude helps the reproducibility of your project: an outsider should be able to obtain your results just by running your code on the raw data.

Some solid opinions related to this idea can be found [here](https://drivendata.github.io/cookiecutter-data-science/#data-is-immutable), and you can also read about the concept of a [data lake](https://en.wikipedia.org/wiki/Data_lake) (which makes good sense for academic projects).

## prepared

Here you can store data that has been *cleaned*. Ideally the cleaning process will retain the same information that was present in the raw data, but fix up annoying artifacts (string substitutions, date formats etc.). If the raw data is MASSIVE, then you may not have the luxury of being able to store all the information twice, and so could consider skipping this directory.

## processed

This directory stores data used as direct input for your models: for instance, a matrix of costs to use in the objective function of a matching optimization model. It should be in a format that can be easily loaded into your modelling scripts.

## models

It will quite often be useful to store your fitted machine learning or solved optimization models, so that you can access their states (without having to re-run them) when you think of an additional step in your analysis. You can store them here.

## results

Self-explanatory!
