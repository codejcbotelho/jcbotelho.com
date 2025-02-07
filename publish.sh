#!/bin/bash

aws s3 cp ./ s3://jcbotelho.com --recursive --acl public-read --exclude ".git/*" --exclude ".gitignore" --exclude "publish.sh" --exclude "README.md" --exclude "docs/*" --exclude "replaces/*" --exclude "clone.sh" --exclude "replaces.sh" --exclude "run.sh" --exclude "css/scss/*" --exclude "exemple/*"
aws cloudfront create-invalidation --distribution-id E1XSEZ5D2XM7HJ --paths "/*"
