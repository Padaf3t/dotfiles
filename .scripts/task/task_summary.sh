#!/bin/bash

# Taskwarrior commands to run
echo "Tags:"
echo ""
echo "scheduled, recurring, next, today"
echo "urgent, high, med, low, vlow"
echo "phone, email, message"
echo "idea, thought"
echo "me, gf, fam, friends"
echo ""
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
