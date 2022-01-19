#!/bin/bash



find ./ -mtime +30 -name "*txt" | xargs rm
