#!/bin/bash

if test -d "/tmp/ffshare"; then
  firejail --private --dns=208.67.222.222 firefox -no-remote -private-window "https://addons.mozilla.org/en-US/firefox/addon/noscript" &
else
  mkdir /tmp/ffshare
  firejail --private --dns=208.67.222.222 firefox -no-remote -private-window "https://addons.mozilla.org/en-US/firefox/addon/noscript" &
fi
