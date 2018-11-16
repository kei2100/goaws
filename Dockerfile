FROM circleci/golang:1.11.2

RUN cd /home/circleci \
  && curl -O https://bootstrap.pypa.io/get-pip.py \
  && python get-pip.py --user \
  && export PATH=/home/circleci/.local/bin:$PATH \
  && pip install awscli --upgrade --user \
  && pip install awsebcli --upgrade --user \
  && rm get-pip.py \

