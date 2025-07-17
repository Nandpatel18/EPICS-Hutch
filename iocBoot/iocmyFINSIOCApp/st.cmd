#!../../bin/linux-aarch64/Kimball-Gun

#- You may have to change Kimball-Gun to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/Kimball-Gun.dbd"
Kimball_Gun_registerRecordDeviceDriver(pdbbase) 

## Load record instances
#dbLoadRecords("../../db/Kimball-Gun.db","user=Hutch")

iocInit()

## Start any sequence programs
#seq sncKimball-Gun,"user=Hutch"
