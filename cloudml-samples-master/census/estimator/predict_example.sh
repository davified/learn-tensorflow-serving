#!/usr/bin/env bash

set -e

source ./common.sh

# HTTP curl request
# how to get bearer token: https://cloud.google.com/blog/big-data/2017/09/performing-prediction-with-tensorflow-object-detection-models-on-google-cloud-machine-learning-engine

curl --request POST \
  --url "https://ml.googleapis.com/v1/projects/${PROJECT_ID}/models/census_dist_1/versions/v1:predict" \
  --header "authorization: Bearer $(gcloud auth print-access-token)" \
  --header 'content-type: application/json' \
  --data '{
	"instances": [
		{"age": 25, 
		 "workclass": " Private", 
		 "education": " 11th", 
		 "education_num": 7, 
		 "marital_status": " Never-married", 
		 "occupation": " Machine-op-inspct", 
		 "relationship": " Own-child", 
		 "race": " Asian", 
		 "gender": " Male", 
		 "capital_gain": 0, 
		 "capital_loss": 0, 
		 "hours_per_week": 40, 
		 "native_country": " United-States"}
	]
}'
