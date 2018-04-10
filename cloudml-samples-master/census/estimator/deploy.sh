#!/usr/bin/env bash

set -e

source ./common.sh

gcloud ml-engine models create ${MODEL_NAME} --regions=${REGION}

OUTPUT_PATH=$BUCKET_NAME/${JOB_NAME}
gsutil ls -r $OUTPUT_PATH/export

# get dynamic MODEL_BINARIES path from gcloud bucket
# MODEL_BINARIES=gs://tensorflow-serving-200405-2/${JOB_NAME}/export/census/1523083238/

gcloud ml-engine versions create v1 \
  --model ${MODEL_NAME} \
  --origin ${MODEL_BINARIES} \
  --runtime-version 1.4
