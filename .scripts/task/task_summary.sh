#!/bin/bash

# Taskwarrior commands to run
echo "Today's planning"
task +TODAY

echo "--------------------------------------"

echo "Task due in the next week"
task due_soon_today

echo "--------------------------------------"

echo "Event in the next week"
task scheduled
echo "--------------------------------------"

echo "Project summary"
task summary

echo "--------------------------------------"

echo "Calendar"
task calendar

echo "--------------------------------------"

