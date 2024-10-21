# Supplemental material 
Experiments from our evaluation.

The repository is structured as follows:

For each benchmark (Generated, XMark, DBLP, nested TPC-H) we have subdirectories for every used system (OurDB, Trino, DuckDB).
Due to data privacy reasons, we did not include the Twitter dataset.

In every benchmark directory we stored the queries for all three systems in the corresponding subdirectories.

Since Trino needs schema definitions before it can operate on Parquet files, we added additional subdirectories to the Trino directories for the initialization.

## Datasets
The datasets are uploaded to the following Google Drive folder: https://drive.google.com/drive/folders/1s0vcv5kSuuzcYA_fOtv8wu6CNJrdbt77?usp=share_link

## Instructions for OurDB with Github Package:
Pull the docker image:
> docker pull ghcr.io/nestedparquetsubmission/ourdb-npq-release:30637e184

Run this command in the directory of the required files:
> docker run --privileged -it -v ${PWD}:/ourdb ghcr.io/nestedparquetsubmission/ourdb-npq-release:30637e184

Inside the Docker container navigate to the directory:
> cd /ourdb

Then, run the following command to start the CLI:
> /usr/local/bin/ourdb-sql

## Run Script
The queries expect the data to be located in the current directory.
