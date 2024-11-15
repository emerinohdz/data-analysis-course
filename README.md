# Data Analysis - Fashion Merchant Case Study

## Dependencies

* [Nix](https://nixos.org/download/)

## Getting started

Create nix develop environment with all required dependencies

    nix develop

This will automatically create a venv environment if it doesn't exist and will activate it. You can then install the python dependencies:

    pip install -r requirements.txt

## Work on jupyter notebook

Make sure to provide an `.env` file with the location of the folder that hosts the data sets

    echo 'DATA_ROOT_PATH=/My/Path/To/Data' > .env

You can then run Jupyter Notebook

    jupyter notebook