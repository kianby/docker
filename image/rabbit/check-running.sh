#!/bin/bash

cat /is-rabbit-configured && netstat -an | grep -q ":::5672"