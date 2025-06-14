#!/bin/bash
export KITTY_HOOK=taskwarriorTUI
sleep 1
exec kitty --title taskwarriorTUI -e zsh
