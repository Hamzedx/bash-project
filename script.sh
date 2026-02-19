#! /bin/bash

#Read the ticket ID to check
read -p "Enter the incident number: " incident_num

#Check if the ticket ID is closed or not
checkt=$(grep $incident_num tickets-status|awk -F" " '{print $2}')


if [[ $checkt == "opened" ]]
then
       echo "The ticket_id is opened no need to check anything"	
	exit
else
	tick_id=$(grep $incident_num tickets-status|awk -F" " '{print $1}')
fi
echo  $tick_id



#Get the event_id if the ticket_id closed
event_id=$(grep $tick_id event-tickets | awk -F: '{print $2}')

echo $event_id

#check the event file 
check=$(grep $event_id event-status|awk -F" " '{print $2}')
echo $check
if [[ $check == "opened" ]]
then
	grep $event_id event-status|sed 's/opened/closed/' >>check-file
fi

