#!/usr/bin/bash

cat | sed -n '/^;- /s///p'
