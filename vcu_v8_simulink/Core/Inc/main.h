/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

#include "stm32f4xx_ll_system.h"
#include "stm32f4xx_ll_gpio.h"
#include "stm32f4xx_ll_exti.h"
#include "stm32f4xx_ll_bus.h"
#include "stm32f4xx_ll_cortex.h"
#include "stm32f4xx_ll_rcc.h"
#include "stm32f4xx_ll_utils.h"
#include "stm32f4xx_ll_pwr.h"
#include "stm32f4xx_ll_dma.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define CAM_CPU_Pin LL_GPIO_PIN_6
#define CAM_CPU_GPIO_Port GPIOE
#define CRANK_CPU_Pin LL_GPIO_PIN_13
#define CRANK_CPU_GPIO_Port GPIOC
#define BRV_CPU_Pin LL_GPIO_PIN_0
#define BRV_CPU_GPIO_Port GPIOA
#define LED1_Pin LL_GPIO_PIN_10
#define LED1_GPIO_Port GPIOC
#define LED2_Pin LL_GPIO_PIN_11
#define LED2_GPIO_Port GPIOC
#define LED3_Pin LL_GPIO_PIN_12
#define LED3_GPIO_Port GPIOC
#define VSS_CPU_Pin LL_GPIO_PIN_8
#define VSS_CPU_GPIO_Port GPIOB
void   MX_GPIO_Init(void);
void   MX_ADC3_Init(void);
void   MX_CAN1_Init(void);
void   MX_CAN2_Init(void);
void   MX_USB_OTG_FS_PCD_Init(void);
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
