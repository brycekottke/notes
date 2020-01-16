#!/bin/bash

if [[ "$1" == "ub" ]]; then
  echo "https://addons.mozilla.org/en-US/firefox/addon/ublock-origin" \
    |xsel -b

elif [[ $1 == "ns" ]]; then
  echo "https://addons.mozilla.org/en-US/firefox/addon/noscript" \
    |xsel -b

elif [[ $1 == "dblt" ]]; then
  echo "https://addons.mozilla.org/en-US/firefox/addon/dark-background-light-text" \
    |xsel -b

elif [[ $1 == "https" ]]; then
  echo "https://addons.mozilla.org/en-US/firefox/addon/https-everywhere" \
    |xsel -b

elif [[ "$1" == "standup" ]]; then
  echo "362739920" \
    |xsel -b

elif [[ "$1" == "git" ]]; then
  echo "cd ~/git/mindtouch/" \
    |xsel -b

elif [[ $1 == "gslf" ]]; then
  echo "https://addons.mozilla.org/en-US/firefox/addon/google-search-link-fix" \
    |xsel -b

else
  echo "please select one of the following options."
  echo "  - ub (ublock)"
  echo "  - ns (noscript)"
  echo "  - standup"
  echo "  - git"

fi
