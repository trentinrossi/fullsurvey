#!/bin/bash

echo setting question host

question_host_name="question_service"

matches_in_hosts="$(grep -n $question_host_name /etc/hosts | cut -f1 -d:)"

if [ ! -z "$matches_in_hosts" ]
then
    echo "host $question_host_name already exists."    
else
    echo "Adding new host $question_host_name"
    echo "127.0.0.1  $question_host_name" >> /etc/hosts
fi

echo setting respondent host

respondent_host_name="respondent_service"

matches_in_hosts="$(grep -n $respondent_host_name /etc/hosts | cut -f1 -d:)"

if [ ! -z "$matches_in_hosts" ]
then
    echo "host $respondent_host_name already exists."    
else
    echo "Adding new host $respondent_host_name"
    echo "127.0.0.1  $respondent_host_name" >> /etc/hosts
fi

echo setting survey host

survey_host_name="survey_service"

matches_in_hosts="$(grep -n $survey_host_name /etc/hosts | cut -f1 -d:)"

if [ ! -z "$matches_in_hosts" ]
then
    echo "host $survey_host_name already exists."    
else
    echo "Adding new host $survey_host_name"
    echo "127.0.0.1  $survey_host_name" >> /etc/hosts
fi