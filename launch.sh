#!/usr/bin/env bash

THEME="minimal"

killall polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

CONFIG_DIR=$(dirname $0)/themes/$THEME/config.ini
polybar main -c $CONFIG_DIR &
