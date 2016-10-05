Code Scripts

- `eda-script.R` reads in the `Advertising.csv` data set, and computes summary statistics and histograms of `TV` and `Sales`. The summary statistics are saved in the file `data/eda-output.txt`. The histogram charts are saved in PNG and PDF formats and are in `images` folder.

- `regression-script.R` reads in the `Advertising.csv` data set, and computes the linear regression of TV ads on Sales via `lm()` as well as the summary of regression analysis. The scatterplot of the analysis with the a fitted regression line is saved in PDF and PNG formats and in `images` folder. The R objects from the regression analysis are saved in the file `data/regression.RData`.  
