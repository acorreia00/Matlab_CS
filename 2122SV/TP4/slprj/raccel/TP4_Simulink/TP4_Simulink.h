#include "__cf_TP4_Simulink.h"
#ifndef RTW_HEADER_TP4_Simulink_h_
#define RTW_HEADER_TP4_Simulink_h_
#include <stddef.h>
#include <string.h>
#include "rtw_modelmap.h"
#ifndef TP4_Simulink_COMMON_INCLUDES_
#define TP4_Simulink_COMMON_INCLUDES_
#include <stdlib.h>
#include "rtwtypes.h"
#include "simtarget/slSimTgtSigstreamRTW.h"
#include "simtarget/slSimTgtSlioCoreRTW.h"
#include "simtarget/slSimTgtSlioClientsRTW.h"
#include "simtarget/slSimTgtSlioSdiRTW.h"
#include "sigstream_rtw.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "raccel.h"
#include "slsv_diagnostic_codegen_c_api.h"
#include "rt_logging.h"
#include "dt_info.h"
#include "ext_work.h"
#endif
#include "TP4_Simulink_types.h"
#include "multiword_types.h"
#include "rt_defines.h"
#include "rtGetInf.h"
#include "rt_nonfinite.h"
#define MODEL_NAME TP4_Simulink
#define NSAMPLE_TIMES (2) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (9) 
#define NUM_ZC_EVENTS (0) 
#ifndef NCSTATES
#define NCSTATES (5)   
#elif NCSTATES != 5
#error Invalid specification of NCSTATES defined in compiler command
#endif
#ifndef rtmGetDataMapInfo
#define rtmGetDataMapInfo(rtm) (*rt_dataMapInfoPtr)
#endif
#ifndef rtmSetDataMapInfo
#define rtmSetDataMapInfo(rtm, val) (rt_dataMapInfoPtr = &val)
#endif
#ifndef IN_RACCEL_MAIN
#endif
typedef struct { real_T lx1hnp1lxz ; real_T j04wn34vwe ; real_T b1vk0dqud5 ;
real_T fz0shdzqfg ; real_T nozmw3mj1a ; real_T hozeopvjwf ; real_T pibtkzsffk
; real_T dnfvepkgjp ; real_T bvsnzzhv2g ; } B ; typedef struct { struct {
void * LoggedData ; } emlormpoge ; int_T p440vhmhtb ; } DW ; typedef struct {
real_T pbcbybxuyp ; real_T o523mdisu3 ; real_T bwtb1zgdcz ; real_T molxhj30kf
; real_T hnucprnx3t ; } X ; typedef struct { real_T pbcbybxuyp ; real_T
o523mdisu3 ; real_T bwtb1zgdcz ; real_T molxhj30kf ; real_T hnucprnx3t ; }
XDot ; typedef struct { boolean_T pbcbybxuyp ; boolean_T o523mdisu3 ;
boolean_T bwtb1zgdcz ; boolean_T molxhj30kf ; boolean_T hnucprnx3t ; } XDis ;
typedef struct { real_T pbcbybxuyp ; real_T o523mdisu3 ; real_T bwtb1zgdcz ;
real_T molxhj30kf ; real_T hnucprnx3t ; } CStateAbsTol ; typedef struct {
real_T cealxyqhii ; } ZCV ; typedef struct { rtwCAPI_ModelMappingInfo mmi ; }
DataMapInfo ; struct P_ { real_T KC ; real_T KMRV ; real_T KP_in ; real_T KS
; real_T R1 ; real_T R2 ; real_T R3 ; real_T TC1 ; real_T TC2 ; real_T
PIDController_InitialConditionForFilter ; real_T
PIDController_InitialConditionForIntegrator ; real_T PIDController_N ; real_T
Refparaonvel3H3ref_Time ; real_T Refparaonvel3H3ref_Y0 ; real_T
Refparaonvel3H3ref_YFinal ; real_T TransferFcn1_A ; real_T TransferFcn1_C ;
real_T TransferFcn_A ; real_T TransferFcn_C ; real_T TransferFcn_A_bv5eyzqlpk
; real_T TransferFcn_C_khazapi3pb ; } ; extern const char *
RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern X rtX ; extern DW rtDW ;
extern P rtP ; extern const rtwCAPI_ModelMappingStaticInfo *
TP4_Simulink_GetCAPIStaticMap ( void ) ; extern SimStruct * const rtS ;
extern const int_T gblNumToFiles ; extern const int_T gblNumFrFiles ; extern
const int_T gblNumFrWksBlocks ; extern rtInportTUtable * gblInportTUtables ;
extern const char * gblInportFileName ; extern const int_T
gblNumRootInportBlks ; extern const int_T gblNumModelInputs ; extern const
int_T gblInportDataTypeIdx [ ] ; extern const int_T gblInportDims [ ] ;
extern const int_T gblInportComplex [ ] ; extern const int_T
gblInportInterpoFlag [ ] ; extern const int_T gblInportContinuous [ ] ;
extern const int_T gblParameterTuningTid ; extern DataMapInfo *
rt_dataMapInfoPtr ; extern rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ;
void MdlOutputs ( int_T tid ) ; void MdlOutputsParameterSampleTime ( int_T
tid ) ; void MdlUpdate ( int_T tid ) ; void MdlTerminate ( void ) ; void
MdlInitializeSizes ( void ) ; void MdlInitializeSampleTimes ( void ) ;
SimStruct * raccel_register_model ( void ) ;
#endif
