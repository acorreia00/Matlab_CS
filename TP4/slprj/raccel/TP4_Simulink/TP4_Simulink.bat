@echo off
set MATLAB=Z:\MatLab
"%MATLAB%\bin\win64\gmake" -f TP4_Simulink.mk  MODELLIB=TP4_Simulinklib.lib RSIM_SOLVER_SELECTION=2 EXTMODE_STATIC_ALLOC=0 EXTMODE_STATIC_ALLOC_SIZE=1000000 EXTMODE_TRANSPORT=0 TMW_EXTMODE_TESTING=0 COMBINE_OUTPUT_UPDATE_FCNS=0 INCLUDE_MDL_TERMINATE_FCN=1 MULTI_INSTANCE_CODE=0 MODELREF_TARGET_TYPE=NONE ISPROTECTINGMODEL=NOTPROTECTING OPTS="-DTGTCONN -DEXT_MODE -DON_TARGET_WAIT_FOR_START=0"
