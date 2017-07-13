EC2_REGION=us-east-1
EC2_INSTANCEID=i-01311fdfc65141764
EC2_URL=$(shell aws --region $(EC2_REGION) ec2 describe-instances --instance-ids $(EC2_INSTANCEID) --query "Reservations[*].Instances[*].PublicIpAddress" --output=text)

mkfile_path=$(abspath $(lastword $(MAKEFILE_LIST)))
CURRENT_DIR=$(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

# sync code
syncup:
	rsync -e "ssh -i ~/.ssh/deeplearning" -avz --exclude-from=".gitignore" . udacity@$(EC2_URL):~/jupyter/$(CURRENT_DIR)
syncdown:
	rsync -e "ssh -i ~/.ssh/deeplearning" -avz --exclude-from=".gitignore" udacity@$(EC2_URL):~/jupyter/$(CURRENT_DIR)/ .
# start/stop instance
ec2stop:
	aws --region $(EC2_REGION) ec2 stop-instances --instance-ids $(EC2_INSTANCEID)
ec2start:
	aws --region $(EC2_REGION) ec2 start-instances --instance-ids $(EC2_INSTANCEID)
ec2status:
	aws --region $(EC2_REGION) ec2 describe-instance-status --instance-ids $(EC2_INSTANCEID)

# ssh into machine and forward jupyter port
ssh:
	ssh -i ~/.ssh/deeplearning -L 8888:localhost:8888 udacity@$(EC2_URL)
