# Supplemental material 
Experiments from our evaluation.

The repository is structured as follows:

For each benchmark (Synthetic, XMark, DBLP, nested TPC-H) we have subdirectories for every used system (OurDB, Trino, DuckDB, AsterixDB).
Due to data privacy reasons, we did not include the Twitter dataset.

In every benchmark directory we stored the queries for all three systems in the corresponding subdirectories.

Since Trino and AsterixDB need schema definitions before it can operate on Parquet files, we added additional subdirectories to those directories for the initialization.

## Datasets
The datasets are uploaded to the following Google Drive folder: [Google Drive Link](https://drive.google.com/file/d/1UqwFbuywMErdgau1_JWN8QwzjMwpXle4/view?usp=sharing)

## Instructions for OurDB with Github Package:
Pull the docker image:
> docker pull ghcr.io/nestedparquetsubmission/ourdb-npq-release:9c49bb47b

Run this command in the directory of the required files:
> docker run --privileged -it -v ${PWD}:/ourdb ghcr.io/nestedparquetsubmission/ourdb-npq-release:9c49bb47b

Inside the Docker container navigate to the directory:
> cd /ourdb

Then, run the following command to start the CLI:
> /usr/local/bin/ourdb-sql

## Run Script
The queries expect the data to be located in the current directory.
