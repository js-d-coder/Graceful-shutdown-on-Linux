#!/bin/bash

pgrep $1 | grep -m 1 -oE '[0-9]+'
