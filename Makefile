build:
	rm -rf public
	hugo
	
sync:
	aws s3 sync --acl "public-read" public/ s3://hugo-test-czzzk
	
build-deploy-local: build sync

all: build