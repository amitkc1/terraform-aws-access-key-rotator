help:
	@printf "\033[32mTerraform-makefile v$(version)\033[0m\n\n"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help

init:
	terraform init

clean:
	terraform state rm aws_iam_access_key.access_key

replace-aws-key: init
	 @read -p "Enter ACCESS Key ID to rotate: " ACCESS_KEY_ID; \
	 terraform import aws_iam_access_key.access_key $${ACCESS_KEY_ID}
	 terraform apply --auto-approve -replace=aws_iam_access_key.access_key