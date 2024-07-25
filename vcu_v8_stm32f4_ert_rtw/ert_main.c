/*
 * File: ert_main.c
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

#include <stdio.h>
#include <stdlib.h>
#include "vcu_v8_stm32f4.h"
#include "vcu_v8_stm32f4_private.h"
#include "rtwtypes.h"
#include "limits.h"
#include "main.h"
#include "mw_freertos.h"
#define UNUSED(x)                      x = x
#define NAMELEN                        16

/* Function prototype declaration*/
void exitFcn(int sig);
void *terminateTask(void *arg);
void *baseRateTask(void *arg);
void *subrateTask(void *arg);
volatile boolean_T stopRequested = false;
volatile boolean_T runModel = true;
SemaphoreHandle_t stopSem;
SemaphoreHandle_t baserateTaskSem;
SemaphoreHandle_t subrateTaskSem[2];
int taskId[2];
mw_thread_t schedulerThread;
mw_thread_t baseRateThread;
void *threadJoinStatus;
int terminatingmodel = 0;
mw_thread_t subRateThread[2];
int subratePriority[2];
void *subrateTask(void *arg)
{
  int tid = *((int *) arg);
  int subRateId;
  subRateId = tid + 1;
  while (runModel) {
    mw_osSemaphoreWaitEver(&subrateTaskSem[tid]);
    if (terminatingmodel)
      break;

#ifdef MW_RTOS_DEBUG

    printf(" -subrate task %d semaphore received\n", subRateId);

#endif

    switch (subRateId) {
     case 1:
      vcu_v8_stm32f4_step1();

      /* Get model outputs here */
      break;

     case 2:
      vcu_v8_stm32f4_step2();

      /* Get model outputs here */
      break;

     default:
      break;
    }
  }

  mw_osThreadExit((void *)0);
  return NULL;
}

void *baseRateTask(void *arg)
{
  int_T i;
  runModel = (rtmGetErrorStatus(vcu_v8_stm32f4_M) == (NULL));
  while (runModel) {
    mw_osSemaphoreWaitEver(&baserateTaskSem);

#ifdef MW_RTOS_DEBUG

    printf("*base rate task semaphore received\n");
    fflush(stdout);

#endif

    for (i = 1
         ; i <= 2; i++) {
      if (rtmStepTask(vcu_v8_stm32f4_M, i)
          ) {
        mw_osSemaphoreRelease(&subrateTaskSem[ i - 1
                              ]);
      }
    }

    vcu_v8_stm32f4_step0();

    /* Get model outputs here */
    stopRequested = !((rtmGetErrorStatus(vcu_v8_stm32f4_M) == (NULL)));
  }

  terminateTask(arg);
  mw_osThreadExit((void *)0);
  return NULL;
}

void exitFcn(int sig)
{
  UNUSED(sig);
  rtmSetErrorStatus(vcu_v8_stm32f4_M, "stopping the model");
  runModel = 0;
}

void *terminateTask(void *arg)
{
  UNUSED(arg);
  terminatingmodel = 1;

  {
    int i;

    /* Signal all periodic tasks to complete */
    for (i=0; i<2; i++) {
      CHECK_STATUS(mw_osSemaphoreRelease(&subrateTaskSem[i]), 0,
                   "mw_osSemaphoreRelease");
      CHECK_STATUS(mw_osSemaphoreDelete(&subrateTaskSem[i]), 0,
                   "mw_osSemaphoreDelete");
    }

    /* Wait for all periodic tasks to complete */
    for (i=0; i<2; i++) {
      CHECK_STATUS(mw_osThreadJoin(subRateThread[i], &threadJoinStatus), 0,
                   "mw_osThreadJoin");
    }

    runModel = 0;
  }

#if !defined(MW_FREERTOS) && !defined(USE_RTX)

  (void) systemClock;

#endif

  ;

  /* Terminate model */
  vcu_v8_stm32f4_terminate();
  mw_osSemaphoreRelease(&stopSem);
  return NULL;
}

int main(int argc, char **argv)
{
  subratePriority[0] = 39;
  subratePriority[1] = 38;

#if !defined(MW_FREERTOS) && defined(MW_MULTI_TASKING_MODE) && (MW_MULTI_TASKING_MODE == 1)

  MW_ASM (" SVC #1");

#endif

  ;

  // Peripheral initialization imported from STM32CubeMX project;
  HAL_Init();
  SystemClock_Config();
  PeriphCommonClock_Config();
  MX_GPIO_Init();
  MX_ADC3_Init();
  MX_CAN1_Init();
  MX_CAN2_Init();
  MX_USB_OTG_FS_PCD_Init();
  rtmSetErrorStatus(vcu_v8_stm32f4_M, 0);

  /* Initialize model */
  vcu_v8_stm32f4_initialize();

  /* Call RTOS Initialization function */
  mw_RTOSInit(0.5, 2);

  /* Wait for stop semaphore */
  mw_osSemaphoreWaitEver(&stopSem);

#if (MW_NUMBER_TIMER_DRIVEN_TASKS > 0)

  {
    int i;
    for (i=0; i < MW_NUMBER_TIMER_DRIVEN_TASKS; i++) {
      CHECK_STATUS(mw_osSemaphoreDelete(&timerTaskSem[i]), 0,
                   "mw_osSemaphoreDelete");
    }
  }

#endif

  return 0;
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
