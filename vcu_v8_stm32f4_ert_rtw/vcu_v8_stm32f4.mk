###########################################################################
## Makefile generated for component 'vcu_v8_stm32f4'. 
## 
## Makefile     : vcu_v8_stm32f4.mk
## Generated on : Thu Jul 25 09:51:45 2024
## Final product: $(RELATIVE_PATH_TO_ANCHOR)/vcu_v8_stm32f4.elf
## Product type : executable
## 
###########################################################################

###########################################################################
## MACROS
###########################################################################

# Macro Descriptions:
# PRODUCT_NAME            Name of the system to build
# MAKEFILE                Name of this makefile
# COMPILER_COMMAND_FILE   Compiler command listing model reference header paths
# CMD_FILE                Command file

PRODUCT_NAME              = vcu_v8_stm32f4
MAKEFILE                  = vcu_v8_stm32f4.mk
MATLAB_ROOT               = D:/Matlab_23B
MATLAB_BIN                = D:/Matlab_23B/bin
MATLAB_ARCH_BIN           = $(MATLAB_BIN)/win64
START_DIR                 = C:/Users/llgui/Documents/1.Personal_Projects/23.VCU_V8_STM32F4
SOLVER                    = 
SOLVER_OBJ                = 
CLASSIC_INTERFACE         = 0
TGT_FCN_LIB               = ISO_C
MODEL_HAS_DYNAMICALLY_LOADED_SFCNS = 0
RELATIVE_PATH_TO_ANCHOR   = ..
COMPILER_COMMAND_FILE     = vcu_v8_stm32f4_comp.rsp
CMD_FILE                  = vcu_v8_stm32f4.rsp
C_STANDARD_OPTS           = 
CPP_STANDARD_OPTS         = 

###########################################################################
## TOOLCHAIN SPECIFICATIONS
###########################################################################

# Toolchain Name:          GNU Tools for ARM Embedded Processors
# Supported Version(s):    
# ToolchainInfo Version:   2023b
# Specification Revision:  1.0
# 
#-------------------------------------------
# Macros assumed to be defined elsewhere
#-------------------------------------------

# TARGET_LOAD_CMD_ARGS
# TARGET_LOAD_CMD
# MW_GNU_ARM_TOOLS_PATH
# FDATASECTIONS_FLG

#-----------
# MACROS
#-----------

LIBGCC                    = ${shell $(MW_GNU_ARM_TOOLS_PATH)/arm-none-eabi-gcc ${CFLAGS} -print-libgcc-file-name}
LIBC                      = ${shell $(MW_GNU_ARM_TOOLS_PATH)/arm-none-eabi-gcc ${CFLAGS} -print-file-name=libc.a}
LIBM                      = ${shell $(MW_GNU_ARM_TOOLS_PATH)/arm-none-eabi-gcc ${CFLAGS} -print-file-name=libm.a}
PRODUCT_NAME_WITHOUT_EXTN = $(basename $(PRODUCT))
PRODUCT_BIN               = $(PRODUCT_NAME_WITHOUT_EXTN).bin
PRODUCT_HEX               = $(PRODUCT_NAME_WITHOUT_EXTN).hex
CPFLAGS                   = -O binary
SHELL                     = %SystemRoot%/system32/cmd.exe

TOOLCHAIN_SRCS = 
TOOLCHAIN_INCS = 
TOOLCHAIN_LIBS = -lm

#------------------------
# BUILD TOOL COMMANDS
#------------------------

# Assembler: GNU ARM Assembler
AS_PATH = $(MW_GNU_ARM_TOOLS_PATH)
AS = "$(AS_PATH)/arm-none-eabi-gcc"

# C Compiler: GNU ARM C Compiler
CC_PATH = $(MW_GNU_ARM_TOOLS_PATH)
CC = "$(CC_PATH)/arm-none-eabi-gcc"

# Linker: GNU ARM Linker
LD_PATH = $(MW_GNU_ARM_TOOLS_PATH)
LD = "$(LD_PATH)/arm-none-eabi-g++"

# C++ Compiler: GNU ARM C++ Compiler
CPP_PATH = $(MW_GNU_ARM_TOOLS_PATH)
CPP = "$(CPP_PATH)/arm-none-eabi-g++"

# C++ Linker: GNU ARM C++ Linker
CPP_LD_PATH = $(MW_GNU_ARM_TOOLS_PATH)
CPP_LD = "$(CPP_LD_PATH)/arm-none-eabi-g++"

# Archiver: GNU ARM Archiver
AR_PATH = $(MW_GNU_ARM_TOOLS_PATH)
AR = "$(AR_PATH)/arm-none-eabi-ar"

# MEX Tool: MEX Tool
MEX_PATH = $(MATLAB_ARCH_BIN)
MEX = "$(MEX_PATH)/mex"

# Binary Converter: Binary Converter
OBJCOPYPATH = $(MW_GNU_ARM_TOOLS_PATH)
OBJCOPY = "$(OBJCOPYPATH)/arm-none-eabi-objcopy"

# Hex Converter: Hex Converter
OBJCOPYPATH = $(MW_GNU_ARM_TOOLS_PATH)
OBJCOPY = "$(OBJCOPYPATH)/arm-none-eabi-objcopy"

# Executable Size: Executable Size
EXESIZEPATH = $(MW_GNU_ARM_TOOLS_PATH)
EXESIZE = "$(EXESIZEPATH)/arm-none-eabi-size"

# Download: Download
DOWNLOAD =

# Execute: Execute
EXECUTE = $(PRODUCT)

# Builder: GMAKE Utility
MAKE_PATH = %MATLAB%\bin\win64
MAKE = "$(MAKE_PATH)/gmake"


#-------------------------
# Directives/Utilities
#-------------------------

ASDEBUG             = -g
AS_OUTPUT_FLAG      = -o
CDEBUG              = -g
C_OUTPUT_FLAG       = -o
LDDEBUG             = -g
OUTPUT_FLAG         = -o
CPPDEBUG            = -g
CPP_OUTPUT_FLAG     = -o
CPPLDDEBUG          = -g
OUTPUT_FLAG         = -o
ARDEBUG             =
STATICLIB_OUTPUT_FLAG =
MEX_DEBUG           = -g
RM                  = @del /f/q
ECHO                = @echo
MV                  = @move
RUN                 =

#----------------------------------------
# "Faster Builds" Build Configuration
#----------------------------------------

ARFLAGS              = ruvs
ASFLAGS              = -MMD -MP -MF"$(@:%.o=%.dep)" -MT"$@"  \
                       -Wall \
                       -x assembler-with-cpp \
                       $(ASFLAGS_ADDITIONAL) \
                       $(DEFINES) \
                       $(INCLUDES) \
                       -c
OBJCOPYFLAGS_BIN     = -O binary $(PRODUCT) $(PRODUCT_BIN)
CFLAGS               = $(FDATASECTIONS_FLG) \
                       -Wall \
                       -MMD -MP -MF"$(@:%.o=%.dep)" -MT"$@"  \
                       -c \
                       -O0
CPPFLAGS             = -std=gnu++14 \
                       -fno-rtti \
                       -fno-exceptions \
                       $(FDATASECTIONS_FLG) \
                       -Wall \
                       -MMD -MP -MF"$(@:%.o=%.dep)" -MT"$@"  \
                       -c \
                       -O0
CPP_LDFLAGS          = -Wl,--gc-sections \
                       -Wl,-Map="$(PRODUCT_NAME).map"
CPP_SHAREDLIB_LDFLAGS  =
DOWNLOAD_FLAGS       =
EXESIZE_FLAGS        = $(PRODUCT)
EXECUTE_FLAGS        =
OBJCOPYFLAGS_HEX     = -O ihex $(PRODUCT) $(PRODUCT_HEX)
LDFLAGS              = -Wl,--gc-sections \
                       -Wl,-Map="$(PRODUCT_NAME).map"
MEX_CPPFLAGS         =
MEX_CPPLDFLAGS       =
MEX_CFLAGS           =
MEX_LDFLAGS          =
MAKE_FLAGS           = -f $(MAKEFILE)
SHAREDLIB_LDFLAGS    =



###########################################################################
## OUTPUT INFO
###########################################################################

PRODUCT = $(RELATIVE_PATH_TO_ANCHOR)/vcu_v8_stm32f4.elf
PRODUCT_TYPE = "executable"
BUILD_TYPE = "Top-Level Standalone Executable"

###########################################################################
## INCLUDE PATHS
###########################################################################

INCLUDES_BUILDINFO = 

INCLUDES = $(INCLUDES_BUILDINFO)

###########################################################################
## DEFINES
###########################################################################

DEFINES_ = -D__MW_TARGET_USE_HARDWARE_RESOURCES_H__ -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -DMW_TIMEBASESOURCE=TIM14
DEFINES_BUILD_ARGS = -DCLASSIC_INTERFACE=0 -DALLOCATIONFCN=0 -DTERMFCN=1 -DONESTEPFCN=1 -DMAT_FILE=0 -DMULTI_INSTANCE_CODE=0 -DINTEGER_CODE=0 -DMT=1
DEFINES_CUSTOM = 
DEFINES_OPTS = -DTID01EQ=0
DEFINES_SKIPFORSIL = -DXCP_CUSTOM_PLATFORM -DXCP_MEM_DAQ_RESERVED_POOL_BLOCKS_NUMBER=10 -D__FPU_PRESENT=1U -D__FPU_USED=1U -DMW_FREERTOS -DMW_EXTMODE_STACKSIZE=1024 -DSTACK_SIZE=512 -DRT -DOS_STKSIZE=128
DEFINES_STANDARD = -DMODEL=vcu_v8_stm32f4 -DNUMST=3 -DNCSTATES=0 -DHAVESTDIO -DMODEL_HAS_DYNAMICALLY_LOADED_SFCNS=0

DEFINES = $(DEFINES_) $(DEFINES_BUILD_ARGS) $(DEFINES_CUSTOM) $(DEFINES_OPTS) $(DEFINES_SKIPFORSIL) $(DEFINES_STANDARD)

###########################################################################
## SOURCE FILES
###########################################################################

SRCS = $(START_DIR)/vcu_v8_stm32f4_ert_rtw/vcu_v8_stm32f4.c $(START_DIR)/vcu_v8_stm32f4_ert_rtw/vcu_v8_stm32f4_data.c C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/shared/supportpackages/stm32/src/overrideHALDelay.c C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/shared/supportpackages/stm32/src/platform_timer.c C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/target/shared/freertos/src/mw_freertos_init.c C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/target/shared/freertos/src/mw_thread.c C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/target/shared/freertos/src/mw_timer.c C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/target/shared/freertos/src/mw_semaphore.c $(START_DIR)/vcu_v8_simulink/Core/Src/main.c $(START_DIR)/vcu_v8_simulink/Core/Src/freertos.c $(START_DIR)/vcu_v8_simulink/Core/Src/stm32f4xx_it.c $(START_DIR)/vcu_v8_simulink/Core/Src/stm32f4xx_hal_msp.c $(START_DIR)/vcu_v8_simulink/Core/Src/stm32f4xx_hal_timebase_tim.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_gpio.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc_ex.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_adc.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ramfunc.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma_ex.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_exti.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_rcc.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_utils.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_exti.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_can.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pcd.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pcd_ex.c $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_usb.c $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/croutine.c $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/list.c $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/queue.c $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.c $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/tasks.c $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/timers.c $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c $(START_DIR)/vcu_v8_simulink/Core/Src/system_stm32f4xx.c $(START_DIR)/vcu_v8_simulink/STM32CubeIDE/Application/User/Core/syscalls.c $(START_DIR)/vcu_v8_simulink/STM32CubeIDE/Application/User/Core/sysmem.c $(START_DIR)/vcu_v8_simulink/STM32CubeIDE/Application/User/Startup/startup_stm32f407vetx.s

MAIN_SRC = $(START_DIR)/vcu_v8_stm32f4_ert_rtw/ert_main.c

ALL_SRCS = $(SRCS) $(MAIN_SRC)

###########################################################################
## OBJECTS
###########################################################################

OBJS = vcu_v8_stm32f4.o vcu_v8_stm32f4_data.o overrideHALDelay.o platform_timer.o mw_freertos_init.o mw_thread.o mw_timer.o mw_semaphore.o main.o freertos.o stm32f4xx_it.o stm32f4xx_hal_msp.o stm32f4xx_hal_timebase_tim.o stm32f4xx_ll_gpio.o stm32f4xx_hal_adc.o stm32f4xx_hal_adc_ex.o stm32f4xx_ll_adc.o stm32f4xx_hal_rcc.o stm32f4xx_hal_rcc_ex.o stm32f4xx_hal_flash.o stm32f4xx_hal_flash_ex.o stm32f4xx_hal_flash_ramfunc.o stm32f4xx_hal_gpio.o stm32f4xx_hal_dma_ex.o stm32f4xx_hal_dma.o stm32f4xx_hal_pwr.o stm32f4xx_hal_pwr_ex.o stm32f4xx_hal_cortex.o stm32f4xx_hal.o stm32f4xx_hal_exti.o stm32f4xx_ll_rcc.o stm32f4xx_ll_utils.o stm32f4xx_ll_exti.o stm32f4xx_hal_can.o stm32f4xx_hal_tim.o stm32f4xx_hal_tim_ex.o stm32f4xx_hal_pcd.o stm32f4xx_hal_pcd_ex.o stm32f4xx_ll_usb.o croutine.o event_groups.o list.o queue.o stream_buffer.o tasks.o timers.o cmsis_os2.o heap_4.o port.o system_stm32f4xx.o syscalls.o sysmem.o startup_stm32f407vetx.o

MAIN_OBJ = ert_main.o

ALL_OBJS = $(OBJS) $(MAIN_OBJ)

###########################################################################
## PREBUILT OBJECT FILES
###########################################################################

PREBUILT_OBJS = 

###########################################################################
## LIBRARIES
###########################################################################

LIBS = C:/ProgramData/MATLAB/SupportPackages/R2023b/3P.instrset/cmsis_dsp.instrset/Lib/GCC/arm_cortexm4ldfsp_math/libCMSISDSP.a C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/shared/supportpackages/stm32/lib/GCC/libmw_pdmfilter_m4_spfp.lib

###########################################################################
## SYSTEM LIBRARIES
###########################################################################

SYSTEM_LIBS = 

###########################################################################
## ADDITIONAL TOOLCHAIN FLAGS
###########################################################################

#---------------
# C Compiler
#---------------

CFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard
CFLAGS_BASIC = $(DEFINES) $(INCLUDES) @$(COMPILER_COMMAND_FILE)

CFLAGS += $(CFLAGS_SKIPFORSIL) $(CFLAGS_BASIC)

#-----------------
# C++ Compiler
#-----------------

CPPFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard
CPPFLAGS_BASIC = $(DEFINES) $(INCLUDES) @$(COMPILER_COMMAND_FILE)

CPPFLAGS += $(CPPFLAGS_SKIPFORSIL) $(CPPFLAGS_BASIC)

#---------------
# C++ Linker
#---------------

CPP_LDFLAGS_ = --specs=nano.specs
CPP_LDFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard --entry Reset_Handler --specs=nosys.specs  -T"C:\Users\llgui\Documents\1.Personal_Projects\23.VCU_V8_STM32F4\vcu_v8_simulink\STM32CubeIDE\STM32F407VETX_FLASH.ld"

CPP_LDFLAGS += $(CPP_LDFLAGS_) $(CPP_LDFLAGS_SKIPFORSIL)

#------------------------------
# C++ Shared Library Linker
#------------------------------

CPP_SHAREDLIB_LDFLAGS_ = --specs=nano.specs
CPP_SHAREDLIB_LDFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard --entry Reset_Handler --specs=nosys.specs  -T"C:\Users\llgui\Documents\1.Personal_Projects\23.VCU_V8_STM32F4\vcu_v8_simulink\STM32CubeIDE\STM32F407VETX_FLASH.ld"

CPP_SHAREDLIB_LDFLAGS += $(CPP_SHAREDLIB_LDFLAGS_) $(CPP_SHAREDLIB_LDFLAGS_SKIPFORSIL)

#-----------
# Linker
#-----------

LDFLAGS_ = --specs=nano.specs
LDFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard --entry Reset_Handler --specs=nosys.specs  -T"C:\Users\llgui\Documents\1.Personal_Projects\23.VCU_V8_STM32F4\vcu_v8_simulink\STM32CubeIDE\STM32F407VETX_FLASH.ld"

LDFLAGS += $(LDFLAGS_) $(LDFLAGS_SKIPFORSIL)

#---------------------
# MEX C++ Compiler
#---------------------

MEX_CPP_Compiler_BASIC =  @$(COMPILER_COMMAND_FILE)

MEX_CPPFLAGS += $(MEX_CPP_Compiler_BASIC)

#-----------------
# MEX Compiler
#-----------------

MEX_Compiler_BASIC =  @$(COMPILER_COMMAND_FILE)

MEX_CFLAGS += $(MEX_Compiler_BASIC)

#--------------------------
# Shared Library Linker
#--------------------------

SHAREDLIB_LDFLAGS_ = --specs=nano.specs
SHAREDLIB_LDFLAGS_SKIPFORSIL = -mcpu=cortex-m4 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv4-sp-d16 -mfloat-abi=hard --entry Reset_Handler --specs=nosys.specs  -T"C:\Users\llgui\Documents\1.Personal_Projects\23.VCU_V8_STM32F4\vcu_v8_simulink\STM32CubeIDE\STM32F407VETX_FLASH.ld"

SHAREDLIB_LDFLAGS += $(SHAREDLIB_LDFLAGS_) $(SHAREDLIB_LDFLAGS_SKIPFORSIL)

###########################################################################
## INLINED COMMANDS
###########################################################################


ALL_DEPS:=$(patsubst %.o,%.dep,$(ALL_OBJS))
all:

ifndef DISABLE_GCC_FUNCTION_DATA_SECTIONS
FDATASECTIONS_FLG := -ffunction-sections -fdata-sections
endif



-include codertarget_assembly_flags.mk
-include ../codertarget_assembly_flags.mk
-include ../../codertarget_assembly_flags.mk
-include mw_gnu_arm_tools_path.mk
-include ../mw_gnu_arm_tools_path.mk
-include ../../mw_gnu_arm_tools_path.mk
-include $(ALL_DEPS)


###########################################################################
## PHONY TARGETS
###########################################################################

.PHONY : all build buildobj clean info prebuild postbuild download execute


all : build postbuild
	@echo "### Successfully generated all binary outputs."


build : prebuild $(PRODUCT)


buildobj : prebuild $(OBJS) $(PREBUILT_OBJS) $(LIBS)
	@echo "### Successfully generated all binary outputs."


prebuild : 


postbuild : $(PRODUCT)
	@echo "### Invoking postbuild tool "Binary Converter" ..."
	$(OBJCOPY) $(OBJCOPYFLAGS_BIN)
	@echo "### Done invoking postbuild tool."
	@echo "### Invoking postbuild tool "Hex Converter" ..."
	$(OBJCOPY) $(OBJCOPYFLAGS_HEX)
	@echo "### Done invoking postbuild tool."
	@echo "### Invoking postbuild tool "Executable Size" ..."
	$(EXESIZE) $(EXESIZE_FLAGS)
	@echo "### Done invoking postbuild tool."


download : postbuild


execute : download
	@echo "### Invoking postbuild tool "Execute" ..."
	$(EXECUTE) $(EXECUTE_FLAGS)
	@echo "### Done invoking postbuild tool."


###########################################################################
## FINAL TARGET
###########################################################################

#-------------------------------------------
# Create a standalone executable            
#-------------------------------------------

$(PRODUCT) : $(OBJS) $(PREBUILT_OBJS) $(LIBS) $(MAIN_OBJ)
	@echo "### Creating standalone executable "$(PRODUCT)" ..."
	$(LD) $(LDFLAGS) -o $(PRODUCT) @$(CMD_FILE) $(LIBS) $(SYSTEM_LIBS) $(TOOLCHAIN_LIBS)
	@echo "### Created: $(PRODUCT)"


###########################################################################
## INTERMEDIATE TARGETS
###########################################################################

#---------------------
# SOURCE-TO-OBJECT
#---------------------

%.o : %.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : %.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : %.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : %.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : %.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : %.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : %.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/vcu_v8_stm32f4_ert_rtw/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/vcu_v8_stm32f4_ert_rtw/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/vcu_v8_stm32f4_ert_rtw/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/vcu_v8_stm32f4_ert_rtw/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/vcu_v8_stm32f4_ert_rtw/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/vcu_v8_stm32f4_ert_rtw/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/vcu_v8_stm32f4_ert_rtw/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


ert_main.o : $(START_DIR)/vcu_v8_stm32f4_ert_rtw/ert_main.c
	$(CC) $(CFLAGS) -o "$@" "$<"


vcu_v8_stm32f4.o : $(START_DIR)/vcu_v8_stm32f4_ert_rtw/vcu_v8_stm32f4.c
	$(CC) $(CFLAGS) -o "$@" "$<"


vcu_v8_stm32f4_data.o : $(START_DIR)/vcu_v8_stm32f4_ert_rtw/vcu_v8_stm32f4_data.c
	$(CC) $(CFLAGS) -o "$@" "$<"


overrideHALDelay.o : C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/shared/supportpackages/stm32/src/overrideHALDelay.c
	$(CC) $(CFLAGS) -o "$@" "$<"


platform_timer.o : C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/shared/supportpackages/stm32/src/platform_timer.c
	$(CC) $(CFLAGS) -o "$@" "$<"


mw_freertos_init.o : C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/target/shared/freertos/src/mw_freertos_init.c
	$(CC) $(CFLAGS) -o "$@" "$<"


mw_thread.o : C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/target/shared/freertos/src/mw_thread.c
	$(CC) $(CFLAGS) -o "$@" "$<"


mw_timer.o : C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/target/shared/freertos/src/mw_timer.c
	$(CC) $(CFLAGS) -o "$@" "$<"


mw_semaphore.o : C:/ProgramData/MATLAB/SupportPackages/R2023b/toolbox/target/shared/freertos/src/mw_semaphore.c
	$(CC) $(CFLAGS) -o "$@" "$<"


main.o : $(START_DIR)/vcu_v8_simulink/Core/Src/main.c
	$(CC) $(CFLAGS) -o "$@" "$<"


freertos.o : $(START_DIR)/vcu_v8_simulink/Core/Src/freertos.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_it.o : $(START_DIR)/vcu_v8_simulink/Core/Src/stm32f4xx_it.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_msp.o : $(START_DIR)/vcu_v8_simulink/Core/Src/stm32f4xx_hal_msp.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_timebase_tim.o : $(START_DIR)/vcu_v8_simulink/Core/Src/stm32f4xx_hal_timebase_tim.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_ll_gpio.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_gpio.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_adc.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_adc_ex.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_ll_adc.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_adc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_rcc.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_rcc_ex.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_flash.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_flash_ex.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_flash_ramfunc.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ramfunc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_gpio.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_dma_ex.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_dma.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_pwr.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_pwr_ex.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_cortex.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_exti.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_exti.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_ll_rcc.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_rcc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_ll_utils.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_utils.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_ll_exti.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_exti.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_can.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_can.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_tim.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_tim_ex.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_pcd.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pcd.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_hal_pcd_ex.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pcd_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f4xx_ll_usb.o : $(START_DIR)/vcu_v8_simulink/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_usb.c
	$(CC) $(CFLAGS) -o "$@" "$<"


croutine.o : $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/croutine.c
	$(CC) $(CFLAGS) -o "$@" "$<"


event_groups.o : $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c
	$(CC) $(CFLAGS) -o "$@" "$<"


list.o : $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/list.c
	$(CC) $(CFLAGS) -o "$@" "$<"


queue.o : $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/queue.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stream_buffer.o : $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.c
	$(CC) $(CFLAGS) -o "$@" "$<"


tasks.o : $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/tasks.c
	$(CC) $(CFLAGS) -o "$@" "$<"


timers.o : $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/timers.c
	$(CC) $(CFLAGS) -o "$@" "$<"


cmsis_os2.o : $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c
	$(CC) $(CFLAGS) -o "$@" "$<"


heap_4.o : $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c
	$(CC) $(CFLAGS) -o "$@" "$<"


port.o : $(START_DIR)/vcu_v8_simulink/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c
	$(CC) $(CFLAGS) -o "$@" "$<"


system_stm32f4xx.o : $(START_DIR)/vcu_v8_simulink/Core/Src/system_stm32f4xx.c
	$(CC) $(CFLAGS) -o "$@" "$<"


syscalls.o : $(START_DIR)/vcu_v8_simulink/STM32CubeIDE/Application/User/Core/syscalls.c
	$(CC) $(CFLAGS) -o "$@" "$<"


sysmem.o : $(START_DIR)/vcu_v8_simulink/STM32CubeIDE/Application/User/Core/sysmem.c
	$(CC) $(CFLAGS) -o "$@" "$<"


startup_stm32f407vetx.o : $(START_DIR)/vcu_v8_simulink/STM32CubeIDE/Application/User/Startup/startup_stm32f407vetx.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


###########################################################################
## DEPENDENCIES
###########################################################################

$(ALL_OBJS) : rtw_proj.tmw $(COMPILER_COMMAND_FILE) $(MAKEFILE)


###########################################################################
## MISCELLANEOUS TARGETS
###########################################################################

info : 
	@echo "### PRODUCT = $(PRODUCT)"
	@echo "### PRODUCT_TYPE = $(PRODUCT_TYPE)"
	@echo "### BUILD_TYPE = $(BUILD_TYPE)"
	@echo "### INCLUDES = $(INCLUDES)"
	@echo "### DEFINES = $(DEFINES)"
	@echo "### ALL_SRCS = $(ALL_SRCS)"
	@echo "### ALL_OBJS = $(ALL_OBJS)"
	@echo "### LIBS = $(LIBS)"
	@echo "### MODELREF_LIBS = $(MODELREF_LIBS)"
	@echo "### SYSTEM_LIBS = $(SYSTEM_LIBS)"
	@echo "### TOOLCHAIN_LIBS = $(TOOLCHAIN_LIBS)"
	@echo "### ASFLAGS = $(ASFLAGS)"
	@echo "### CFLAGS = $(CFLAGS)"
	@echo "### LDFLAGS = $(LDFLAGS)"
	@echo "### SHAREDLIB_LDFLAGS = $(SHAREDLIB_LDFLAGS)"
	@echo "### CPPFLAGS = $(CPPFLAGS)"
	@echo "### CPP_LDFLAGS = $(CPP_LDFLAGS)"
	@echo "### CPP_SHAREDLIB_LDFLAGS = $(CPP_SHAREDLIB_LDFLAGS)"
	@echo "### ARFLAGS = $(ARFLAGS)"
	@echo "### MEX_CFLAGS = $(MEX_CFLAGS)"
	@echo "### MEX_CPPFLAGS = $(MEX_CPPFLAGS)"
	@echo "### MEX_LDFLAGS = $(MEX_LDFLAGS)"
	@echo "### MEX_CPPLDFLAGS = $(MEX_CPPLDFLAGS)"
	@echo "### OBJCOPYFLAGS_BIN = $(OBJCOPYFLAGS_BIN)"
	@echo "### OBJCOPYFLAGS_HEX = $(OBJCOPYFLAGS_HEX)"
	@echo "### EXESIZE_FLAGS = $(EXESIZE_FLAGS)"
	@echo "### DOWNLOAD_FLAGS = $(DOWNLOAD_FLAGS)"
	@echo "### EXECUTE_FLAGS = $(EXECUTE_FLAGS)"
	@echo "### MAKE_FLAGS = $(MAKE_FLAGS)"


clean : 
	$(ECHO) "### Deleting all derived files ..."
	$(RM) $(subst /,\,$(PRODUCT))
	$(RM) $(subst /,\,$(ALL_OBJS))
	$(RM) *.dep
	$(ECHO) "### Deleted all derived files."


