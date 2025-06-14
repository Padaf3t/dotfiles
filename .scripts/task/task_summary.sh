#!/bin/bash

# Taskwarrior commands to run
echo "Tags up"
task tags

echo "--------------------------------------"

echo "Calendar"
task calendar

echo "--------------------------------------"

echo "Project summary"
task summary

echo "--------------------------------------"

echo "Event in the next week"
task scheduled

echo "--------------------------------------"

echo "Task due in the next week"
task due_soon_today

echo "--------------------------------------"

echo "Today's planning"
task +TODAY

echo "--------------------------------------"
