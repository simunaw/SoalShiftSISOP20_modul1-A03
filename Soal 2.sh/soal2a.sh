#!/bin/bash

< /dev/urandom tr -dc  A-Z-a-z-0-9 | head -c${1:-28}; echo;
