/*
 * File: vcu_v8_stm32f4.h
 *
 * Code generated for Simulink model 'vcu_v8_stm32f4'.
 *
 * Model version                  : 1.1
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Thu Jul 25 09:51:42 2024
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_vcu_v8_stm32f4_h_
#define RTW_HEADER_vcu_v8_stm32f4_h_
#ifndef vcu_v8_stm32f4_COMMON_INCLUDES_
#define vcu_v8_stm32f4_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "main.h"
#endif                                 /* vcu_v8_stm32f4_COMMON_INCLUDES_ */

#include "vcu_v8_stm32f4_types.h"
#include <stddef.h>

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmStepTask
#define rtmStepTask(rtm, idx)          ((rtm)->Timing.TaskCounters.TID[(idx)] == 0)
#endif

#ifndef rtmTaskCounter
#define rtmTaskCounter(rtm, idx)       ((rtm)->Timing.TaskCounters.TID[(idx)])
#endif

/* Block states (default storage) for system '<Root>' */
typedef struct {
  int32_T clockTickCounter;            /* '<Root>/Pulse Generator' */
  int32_T clockTickCounter_f;          /* '<Root>/Pulse Generator1' */
  int32_T clockTickCounter_g;          /* '<Root>/Pulse Generator2' */
} DW_vcu_v8_stm32f4_T;

/* Parameters (default storage) */
struct P_vcu_v8_stm32f4_T_ {
  real_T PulseGenerator_Amp;           /* Expression: 1
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T PulseGenerator_Period;     /* Computed Parameter: PulseGenerator_Period
                                     * Referenced by: '<Root>/Pulse Generator'
                                     */
  real_T PulseGenerator_Duty;         /* Computed Parameter: PulseGenerator_Duty
                                       * Referenced by: '<Root>/Pulse Generator'
                                       */
  real_T PulseGenerator_PhaseDelay;    /* Expression: 0
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T PulseGenerator1_Amp;          /* Expression: 1
                                        * Referenced by: '<Root>/Pulse Generator1'
                                        */
  real_T PulseGenerator1_Period;   /* Computed Parameter: PulseGenerator1_Period
                                    * Referenced by: '<Root>/Pulse Generator1'
                                    */
  real_T PulseGenerator1_Duty;       /* Computed Parameter: PulseGenerator1_Duty
                                      * Referenced by: '<Root>/Pulse Generator1'
                                      */
  real_T PulseGenerator1_PhaseDelay;   /* Expression: 0
                                        * Referenced by: '<Root>/Pulse Generator1'
                                        */
  real_T PulseGenerator2_Amp;          /* Expression: 1
                                        * Referenced by: '<Root>/Pulse Generator2'
                                        */
  real_T PulseGenerator2_Period;   /* Computed Parameter: PulseGenerator2_Period
                                    * Referenced by: '<Root>/Pulse Generator2'
                                    */
  real_T PulseGenerator2_Duty;       /* Computed Parameter: PulseGenerator2_Duty
                                      * Referenced by: '<Root>/Pulse Generator2'
                                      */
  real_T PulseGenerator2_PhaseDelay;   /* Expression: 0
                                        * Referenced by: '<Root>/Pulse Generator2'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_vcu_v8_stm32f4_T {
  const char_T * volatile errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    struct {
      uint8_T TID[3];
    } TaskCounters;
  } Timing;
};

/* Block parameters (default storage) */
extern P_vcu_v8_stm32f4_T vcu_v8_stm32f4_P;

/* Block states (default storage) */
extern DW_vcu_v8_stm32f4_T vcu_v8_stm32f4_DW;

/* External function called from main */
extern void vcu_v8_stm32f4_SetEventsForThisBaseStep(boolean_T *eventFlags);

/* Model entry point functions */
extern void vcu_v8_stm32f4_initialize(void);
extern void vcu_v8_stm32f4_step0(void);
extern void vcu_v8_stm32f4_step1(void);
extern void vcu_v8_stm32f4_step2(void);
extern void vcu_v8_stm32f4_terminate(void);

/* Real-time Model object */
extern RT_MODEL_vcu_v8_stm32f4_T *const vcu_v8_stm32f4_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'vcu_v8_stm32f4'
 * '<S1>'   : 'vcu_v8_stm32f4/Digital Port Write'
 * '<S2>'   : 'vcu_v8_stm32f4/Digital Port Write1'
 * '<S3>'   : 'vcu_v8_stm32f4/Digital Port Write2'
 * '<S4>'   : 'vcu_v8_stm32f4/Digital Port Write/ECSoC'
 * '<S5>'   : 'vcu_v8_stm32f4/Digital Port Write/ECSoC/ECSimCodegen'
 * '<S6>'   : 'vcu_v8_stm32f4/Digital Port Write1/ECSoC'
 * '<S7>'   : 'vcu_v8_stm32f4/Digital Port Write1/ECSoC/ECSimCodegen'
 * '<S8>'   : 'vcu_v8_stm32f4/Digital Port Write2/ECSoC'
 * '<S9>'   : 'vcu_v8_stm32f4/Digital Port Write2/ECSoC/ECSimCodegen'
 */
#endif                                 /* RTW_HEADER_vcu_v8_stm32f4_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
