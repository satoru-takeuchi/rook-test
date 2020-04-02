#!/bin/bash

for i in b c d e f g ; do sgdisk --zap-all /dev/sd${i} ; done
