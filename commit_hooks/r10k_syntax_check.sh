#!/bin/bash
#
# This script assumes you have installed r10k and will perform a syntax check on the Puppetfile if existing

# Disable this check for now - r10k.yaml is managed by the r10k module
exit 0

echo "Performing a syntax check on the r10k Puppetfile:"
r10k puppetfile check

if [[ $? -ne 0 ]]
then
	exit 1
fi
