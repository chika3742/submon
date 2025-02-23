#!/usr/bin/env bash

# Watch for changes in code generation sources (build_runner, slang) and rebuild them
# This script is intended to be run in the background while developing

# Watch for changes in build_runner sources
fvm dart run build_runner watch --delete-conflicting-outputs &

# Watch for changes in slang sources
fvm dart run slang watch &

# Trap ctrl-c and interrupt signals to stop the background processes
function cleanup() {
  echo -e "\nStopping watchers..."
  pkill -g $$ # kill all processes in the same process group except self
  wait
  exit 0
}
trap cleanup SIGINT SIGTERM

# Keep the script alive to handle the signals
wait
