Getting and cleaning data course project
==============================

The R script used to generate the tidy dataset can be found in [tidy_dataset.txt](./tidy_dataset.txt). It was written to be self-contained, so it's not necessary to download the files datasets prior to running it. The only pre-requisite is that the `plyr` and `dplyr` libraries be installed in the local computer.

## The run analysis script

The script starts by downloading the datasets used in the course (using the [`downloadDatasets`](./run_analysis.R#L5) function), if they don't exist in the local disk. That simplifies the execution of the analysis script since it will make sure that the files are stored in the folder structure that the script expects.

Once the datasets are in the local disk, they're loaded into memory (using the [`mergeXYSubject`](./run_analysis.R#L32) function). All three data files (subject, X, Y) are first loaded into local variables, then the activity names are loaded as well, so that we can "join" them to the activity set descriptive value for the activity (instead of a number from 1-6), creating a data frame in the process. Once that is done, we use the names of all the features (loaded from the `features.txt` file), and filter them only to those that are related to mean or standard deviation measurements, as directed in the project instructions (by using a regular expression to find only those names that contain `mean()` or `std()`. Once we have the features that we want in our final dataset, we normalize the feature names by removing `()` and `-` characters (since some R operations don't play well with those) and add the columns relative to the filtered features to the resulting data frame.

After the datasets are loaded and merged (using a simple `rbind` call), the data is grouped by the subject and activity type and then averaged for the other columns (in the [`averageActivities`](./run_analysis.R#L83) function). Notice that the function creates and evaluates the summarization expression dynamically, so that we wouldn't need to write all the expressions in the R script, which would result in a very long expression.

The final step is to write the dataset to the file, which results in the [tidy dataset](./tidy_dataset.txt) in this repository.
