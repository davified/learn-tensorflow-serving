# Learn tensorflow serving on GCP ML engine

Getting started:
- Create virtual environment: `virtualenv --python=/usr/bin/python2.7 cmle-env` (the GCP tutorial used Python2.7, so I followed the same. Sorry about that) 
- Install dependencies: `pip install -r requirements.txt`

To train, deploy and predict on Cloud ML engine, see shell scripts in `./cloudml-samples-master/census/estimator/`:
- `./train.sh`
- `./deploy.sh`
- `./predict_example.sh`

tutorial link: https://cloud.google.com/ml-engine/docs/tensorflow/getting-started-training-prediction
