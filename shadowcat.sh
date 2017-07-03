#!/bin/bash

$(cat /etc/shadow && echo "Command succeeded.";) || echo "Command failed"; exit 1;