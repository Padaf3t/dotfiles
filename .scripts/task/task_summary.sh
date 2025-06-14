#!/bin/bash

# Taskwarrior commands to run
echo "Tags:"
echo ""
echo "event, recurring, next, today, inprogress"
echo "urgent, high, med, low, vlow"
echo "phone, email, message"
echo "idea, thought"
echo "me, gf, fam, friends"
echo ""
echo "--------------------------------------"

echo "Calendar"
task calendar

echo "--------------------------------------"

echo "Event in the next 4 weeks"
task event

echo "--------------------------------------"

echo "Task due in the next week"
task due_week

echo "--------------------------------------"

echo "Today's planning"
task today

echo "--------------------------------------"
