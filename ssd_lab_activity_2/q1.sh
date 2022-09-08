#!/bin/bash

tail -n +$(((`cat $1 | wc -l` / 2) +1 )) $1 | head -n 1