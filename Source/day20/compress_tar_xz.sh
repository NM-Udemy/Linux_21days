#!/bin/bash

find ./ -size +1k | xargs -I @ tar -cJf @.tar.xz @
