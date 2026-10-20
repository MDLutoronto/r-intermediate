---
title: Setup
layout: home
staff:
    - name: Nadia Muhe
      link: https://library.utoronto.ca/staff/nadia-muhe
maintainer:
    - name: Nadia Muhe
      link: https://library.utoronto.ca/staff/nadia-muhe
created_date: 2026-10-15
nav_order: 1
parent: Intermediate R
---

## Setup

### R and RStudio

R is a free programming language for data analysis. RStudio is a free program that makes R easier to use. You need to install both, and R must be installed first.

For installation steps, see this [R & RStudio](https://mdlutoronto.github.io/r-intro/01-r-and-rstudio/) lesson. 


### Creating a project in RStudio

To create a project, click on **Project** in the top-right corner, then select **New Project**. You can create a new project in a new folder or an existing folder. 

To create a new project in a new folder, select **New Directory**. Then click **New Project**, enter the name of the new folder under *Directory Name* and select where to save this new folder by clicking **Browse** and choosing a destination. Finally, click **Create Project**. 

To create a new project in an existing folder, select **Existing Directory**. Click **Browse** and select the existing folder. Finally, click **Create Project**. 


### Packages

Use `install.packages()` to install the required packages. You only need to run this line of code once. 

```
# Install packages
install.packages(c("dplyr", "tidyr", "glue"))
```

Use `library()` to load each individual package. You need to load each required package every time you open RStudio. 

```
# Load packages
library(dplyr)   # To manipulate and combine data
library(tidyr)   # To reshape data
library(glue)    # To print variables easily
```


**Technique:** [Converting data formats](https://mdlutoronto.github.io/tutorials-search/?technique=Converting+data+formats), [Cleaning data](https://mdlutoronto.github.io/tutorials-search/?technique=Cleaning+data), [Extracting data](https://mdlutoronto.github.io/tutorials-search/?technique=Extracting+data)\
**Tools:** [R](https://mdlutoronto.github.io/tutorials-search/?tool=R)\
**Data Format:** [Statistics](https://mdlutoronto.github.io/tutorials-search/?dataFormat=Statistics)