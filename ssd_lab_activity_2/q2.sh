#!/bin/bash

grep /usr /etc/shells | sed 's:.*/::'