#!../../bin/linux-aarch64/Kimball-Gun

#- You may have to change Kimball-Gun to something else
#- everywhere it appears in this file

#< envPaths

# Load the DBD (database definition) and register support
dbLoadDatabase "../../dbd/Kimball-Gun.dbd"
Kimball_Gun_registerRecordDeviceDriver(pdbbase)

# Init the FINS UDP driver
finsUDPInit("L0", "192.168.1.2", 9600, 0)

# Load your custom database (we'll create finsTest.db next)
dbLoadRecords("../../db/finsTest.db", "PORT=L0")

# Start the IOC
iocInit

## Start any sequence programs
#seq sncKimball-Gun,"user=Hutch"
