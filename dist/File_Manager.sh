#!/bin/bash

# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Shanti Gilbert (https://github.com/shantigilbert)
# Copyright (C) 2023 JELOS (https://github.com/JustEnoughLinuxOS)
# Copyright (C) 2023 James Adams (https://github.com/FutureJames/fileman_RGB30)

#put this file in 
# /storage/.config/modules
# or
# /storage/roms/ports

. /etc/profile
cd /storage/roms/ports/FileManagerRGB30
./FileManagerRGB30 2>&1
