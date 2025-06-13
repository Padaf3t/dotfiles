function taskwarrior_update_summary_overlay() {
  if [[ "$KITTY_HOOK" == "taskwarriorTUI" ]]; then
    ~/.scripts/task/task_summary.sh
  fi
}

# Attach to Zsh's post-command hook
if ! [[ "${precmd_functions[@]}" =~ "taskwarrior_update_summary_overlay" ]]; then
  autoload -Uz add-zsh-hook
  add-zsh-hook precmd taskwarrior_update_summary_overlay
fi

