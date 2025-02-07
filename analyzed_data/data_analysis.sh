#!/bin/bash 

# Task 2: Analyze the data

# Extract the top 10 highest temperatures and save to analyzed_data
sort -t, -k3 -nr ../raw_data/satelite_temperature_data.csv | head -n 10 > highest_temp.csv

# Extract data for a specific country and save to analyzed_data
grep "Rwanda" ../raw_data/satelite_temperature_data.csv | sort -t, -k4 -nr > humidity_data_Rwanda.csv

echo "Data analysis completed. Results saved in the analyzed_data directory."
