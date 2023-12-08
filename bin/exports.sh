#!/bin/bash

# Mostly constants
export h1="Content-Type: application/json"
export h2="Accept: application/json"
export WORKSPACE=`pwd`

# Get values from user or parameter store
# The following credentials can be stored in parameter store and retrieved dynamically 
# Example to retrieve form an AWS store "$(aws ssm get-parameter --region xx --with-decryption --output text --query Parameter.Value --name /Parameter.name)

export accountName="Training-test-TEST"
export accountId="trainingtesttest-T5U0HX"
export authToken="BOOMI_TOKEN.gogey63372@marksia.com:5b85a1bd-aea9-4c87-92d5-3b1e8836a0d3"
export regressionTestAuthToken=""
export gitComponentRepoURL="https://github.com/REDEVL4/Boomi.git"
export gitComponentUserName="REDEVL4"
export gitComponentUserEmail="G!@!@Re44Y"
export gitComponentCommitPath="/tree/master/"
export sonarHostURL=""
export sonarHostToken=""
export sonarProjectKey="BoomiSonar"
export gitComponentRepoName="BoomiComponents" # Top level folder of the GIT REPO
export sonarRulesFile="conf/BoomiSonarRules.xml"

# Keys that can change
export VERBOSE="false" # Bash verbose output; set to true only for testing, will slow execution.
export SLEEP_TIMER=0.2 # Delays curl request to the platform to set the rate under 5 requests/second
export gitComponentOption="CLONE" # This clones the repo; else default is to create a release tag. Check gitPush.sh file
export SONAR_HOST=""  # If sonar scanner is installed locally then will use the local sonar scanner. Check the sonarScanner.sh file

# Derived keys
export baseURL=https://api.boomi.com/api/rest/v1/$accountId
export regressionTestURL=https://connect.boomi.com/ws/simple # URL for regression test suite framework.
