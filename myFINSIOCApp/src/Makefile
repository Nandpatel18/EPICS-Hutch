TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = myFINSIOC
# myFINSIOC.dbd will be created and installed
DBD += myFINSIOC.dbd

# myFINSIOC.dbd will be made up from these files:
myFINSIOC_DBD += base.dbd /opt/epics/EPICS-FINS/dbd/finsUDP.dbd
myFINSIOC_LIBS += finsUDP asyn $(EPICS_BASE_IOC_LIBS)
# Include dbd files from all support applications:
#myFINSIOC_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#myFINSIOC_LIBS += xxx

# myFINSIOC_registerRecordDeviceDriver.cpp derives from myFINSIOC.dbd
myFINSIOC_SRCS += myFINSIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
myFINSIOC_SRCS_DEFAULT += myFINSIOCMain.cpp
myFINSIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#myFINSIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
myFINSIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

