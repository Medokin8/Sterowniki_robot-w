/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
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
#include "stm32l4xx_hal.h"

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

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define HC_Echo_1_Pin GPIO_PIN_0
#define HC_Echo_1_GPIO_Port GPIOC
#define HC_Trig_1_Pin GPIO_PIN_1
#define HC_Trig_1_GPIO_Port GPIOC
#define HC_Trig_3_Pin GPIO_PIN_3
#define HC_Trig_3_GPIO_Port GPIOC
#define Acc_CS_Pin GPIO_PIN_6
#define Acc_CS_GPIO_Port GPIOA
#define HC_Echo_2_Pin GPIO_PIN_7
#define HC_Echo_2_GPIO_Port GPIOA
#define HC_Trig_2_Pin GPIO_PIN_4
#define HC_Trig_2_GPIO_Port GPIOC
#define HC_Echo_3_Pin GPIO_PIN_5
#define HC_Echo_3_GPIO_Port GPIOC
#define HC_Echo_4_Pin GPIO_PIN_1
#define HC_Echo_4_GPIO_Port GPIOB
#define HC_Trig_4_Pin GPIO_PIN_2
#define HC_Trig_4_GPIO_Port GPIOB
#define Buzzer_Pin GPIO_PIN_7
#define Buzzer_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */