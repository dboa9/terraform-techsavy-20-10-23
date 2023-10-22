#!/bin/bash
git clone git@github.com:dboa9/terraform-techsavy-20-10-23.git
rsync -av --exclude 'terraform-techsavy-20-10-23' --exclude '.terraform' ./ ./terraform-techsavy-20-10-23/
cd terraform-techsavy-20-10-23
git add .
git commit -m "Pushing code in github repo"
git push git@github.com:dboa9/terraform-techsavy-20-10-23.git