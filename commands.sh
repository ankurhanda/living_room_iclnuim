#!/bin/bash
module load openexr
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/apps/openexr/2.0.1/lib
export LD_LIBRARY_PATH
`head -n $1 /home/ahanda/living_room_baked/livingroomlcmlog-2013-08-07.03.posesRenderingCommands.sh | tail -n 1`
