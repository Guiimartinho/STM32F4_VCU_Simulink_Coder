/*
 * File: vcu_v8_stm32f4.c
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

#include "vcu_v8_stm32f4.h"
#include "rtwtypes.h"

/* Block states (default storage) */
DW_vcu_v8_stm32f4_T vcu_v8_stm32f4_DW;

/* Real-time model */
static RT_MODEL_vcu_v8_stm32f4_T vcu_v8_stm32f4_M_;
RT_MODEL_vcu_v8_stm32f4_T *const vcu_v8_stm32f4_M = &vcu_v8_stm32f4_M_;
static void rate_monotonic_scheduler(void);

/*
 * Set which subrates need to run this base step (base rate always runs).
 * This function must be called prior to calling the model step function
 * in order to remember which rates need to run this base step.  The
 * buffering of events allows for overlapping preemption.
 */
void vcu_v8_stm32f4_SetEventsForThisBaseStep(boolean_T *eventFlags)
{
  /* Task runs when its counter is zero, computed via rtmStepTask macro */
  eventFlags[1] = ((boolean_T)rtmStepTask(vcu_v8_stm32f4_M, 1));
  eventFlags[2] = ((boolean_T)rtmStepTask(vcu_v8_stm32f4_M, 2));
}

/*
 *         This function updates active task flag for each subrate
 *         and rate transition flags for tasks that exchange data.
 *         The function assumes rate-monotonic multitasking scheduler.
 *         The function must be called at model base rate so that
 *         the generated code self-manages all its subrates and rate
 *         transition flags.
 */
static void rate_monotonic_scheduler(void)
{
  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (vcu_v8_stm32f4_M->Timing.TaskCounters.TID[1])++;
  if ((vcu_v8_stm32f4_M->Timing.TaskCounters.TID[1]) > 2) {/* Sample time: [1.5s, 0.0s] */
    vcu_v8_stm32f4_M->Timing.TaskCounters.TID[1] = 0;
  }

  (vcu_v8_stm32f4_M->Timing.TaskCounters.TID[2])++;
  if ((vcu_v8_stm32f4_M->Timing.TaskCounters.TID[2]) > 4) {/* Sample time: [2.5s, 0.0s] */
    vcu_v8_stm32f4_M->Timing.TaskCounters.TID[2] = 0;
  }
}

/* Model step function for TID0 */
void vcu_v8_stm32f4_step0(void)        /* Sample time: [0.5s, 0.0s] */
{
  GPIO_TypeDef * portNameLoc;
  real_T rtb_PulseGenerator;
  int32_T c;

  {                                    /* Sample time: [0.5s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* DiscretePulseGenerator: '<Root>/Pulse Generator' */
  rtb_PulseGenerator = (vcu_v8_stm32f4_DW.clockTickCounter <
                        vcu_v8_stm32f4_P.PulseGenerator_Duty) &&
    (vcu_v8_stm32f4_DW.clockTickCounter >= 0) ?
    vcu_v8_stm32f4_P.PulseGenerator_Amp : 0.0;
  if (vcu_v8_stm32f4_DW.clockTickCounter >=
      vcu_v8_stm32f4_P.PulseGenerator_Period - 1.0) {
    vcu_v8_stm32f4_DW.clockTickCounter = 0;
  } else {
    vcu_v8_stm32f4_DW.clockTickCounter++;
  }

  /* End of DiscretePulseGenerator: '<Root>/Pulse Generator' */

  /* MATLABSystem: '<S5>/Digital Port Write' */
  portNameLoc = GPIOC;
  if (rtb_PulseGenerator != 0.0) {
    c = 1024;
  } else {
    c = 0;
  }

  LL_GPIO_SetOutputPin(portNameLoc, (uint32_T)c);
  LL_GPIO_ResetOutputPin(portNameLoc, ~(uint32_T)c & 1024U);

  /* End of MATLABSystem: '<S5>/Digital Port Write' */
}

/* Model step function for TID1 */
void vcu_v8_stm32f4_step1(void)        /* Sample time: [1.5s, 0.0s] */
{
  GPIO_TypeDef * portNameLoc;
  real_T rtb_PulseGenerator1;
  int32_T c;

  /* DiscretePulseGenerator: '<Root>/Pulse Generator1' */
  rtb_PulseGenerator1 = (vcu_v8_stm32f4_DW.clockTickCounter_f <
    vcu_v8_stm32f4_P.PulseGenerator1_Duty) &&
    (vcu_v8_stm32f4_DW.clockTickCounter_f >= 0) ?
    vcu_v8_stm32f4_P.PulseGenerator1_Amp : 0.0;
  if (vcu_v8_stm32f4_DW.clockTickCounter_f >=
      vcu_v8_stm32f4_P.PulseGenerator1_Period - 1.0) {
    vcu_v8_stm32f4_DW.clockTickCounter_f = 0;
  } else {
    vcu_v8_stm32f4_DW.clockTickCounter_f++;
  }

  /* End of DiscretePulseGenerator: '<Root>/Pulse Generator1' */

  /* MATLABSystem: '<S7>/Digital Port Write' */
  portNameLoc = GPIOC;
  if (rtb_PulseGenerator1 != 0.0) {
    c = 2048;
  } else {
    c = 0;
  }

  LL_GPIO_SetOutputPin(portNameLoc, (uint32_T)c);
  LL_GPIO_ResetOutputPin(portNameLoc, ~(uint32_T)c & 2048U);

  /* End of MATLABSystem: '<S7>/Digital Port Write' */
}

/* Model step function for TID2 */
void vcu_v8_stm32f4_step2(void)        /* Sample time: [2.5s, 0.0s] */
{
  GPIO_TypeDef * portNameLoc;
  real_T rtb_PulseGenerator2;
  int32_T c;

  /* DiscretePulseGenerator: '<Root>/Pulse Generator2' */
  rtb_PulseGenerator2 = (vcu_v8_stm32f4_DW.clockTickCounter_g <
    vcu_v8_stm32f4_P.PulseGenerator2_Duty) &&
    (vcu_v8_stm32f4_DW.clockTickCounter_g >= 0) ?
    vcu_v8_stm32f4_P.PulseGenerator2_Amp : 0.0;
  if (vcu_v8_stm32f4_DW.clockTickCounter_g >=
      vcu_v8_stm32f4_P.PulseGenerator2_Period - 1.0) {
    vcu_v8_stm32f4_DW.clockTickCounter_g = 0;
  } else {
    vcu_v8_stm32f4_DW.clockTickCounter_g++;
  }

  /* End of DiscretePulseGenerator: '<Root>/Pulse Generator2' */

  /* MATLABSystem: '<S9>/Digital Port Write' */
  portNameLoc = GPIOC;
  if (rtb_PulseGenerator2 != 0.0) {
    c = 4096;
  } else {
    c = 0;
  }

  LL_GPIO_SetOutputPin(portNameLoc, (uint32_T)c);
  LL_GPIO_ResetOutputPin(portNameLoc, ~(uint32_T)c & 4096U);

  /* End of MATLABSystem: '<S9>/Digital Port Write' */
}

/* Model initialize function */
void vcu_v8_stm32f4_initialize(void)
{
  /* (no initialization code required) */
}

/* Model terminate function */
void vcu_v8_stm32f4_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
