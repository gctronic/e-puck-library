#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/demoGCtronic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/demoGCtronic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Asercom.c ../DataEEPROM.s ../main_c.c ../runaccelerometer.c ../runbreitenberg_adv.c ../rungrounddirection.c ../runshow.c ../runwallfollow.c ../translatorI2C.c ../../../library/motor_led/advance_one_timer/e_led.c ../../../library/motor_led/advance_one_timer/e_motors.c ../../../library/a_d/advance_ad_scan/e_ad_conv.c ../../../library/utility/utility.c ../../../library/I2C/e_I2C_master_module.c ../../../library/camera/fast_2_timer/e_common.c ../../../library/a_d/advance_ad_scan/e_acc.c ../../../library/uart/e_uart1_tx_char.s ../../../library/uart/e_uart2_tx_char.s ../../../library/uart/e_uart2_rx_char.s ../../../library/uart/e_uart1_rx_char.s ../../../library/motor_led/advance_one_timer/e_remote_control.c ../../../library/motor_led/e_init_port.c ../../../library/motor_led/advance_one_timer/e_agenda.c ../../../library/I2C/e_I2C_protocol.c ../../../library/a_d/advance_ad_scan/e_prox.c ../../../library/codec/e_sound.c ../../../library/camera/fast_2_timer/e_po6030k_registers.c ../../../library/camera/fast_2_timer/e_po3030k_registers.c ../../../library/camera/fast_2_timer/e_po8030d_registers.c ../../../library/codec/e_sub_dci_kickoff.s ../../../library/codec/e_init_dci_master.s ../../../library/codec/e_init_codec_slave.s ../../../library/a_d/advance_ad_scan/e_micro.c ../../../library/bluetooth/e_bluetooth.c ../../../library/camera/fast_2_timer/e_calc_po3030k.c ../../../library/camera/fast_2_timer/e_calc_po6030k.c ../../../library/camera/fast_2_timer/e_calc_po8030d.c ../../../library/camera/fast_2_timer/e_timers.c ../../../library/uart/e_init_uart1.s ../../../library/uart/e_init_uart2.s ../../../library/codec/e_const_sound.s ../../../library/codec/e_isr_dci.s ../../../library/camera/fast_2_timer/e_interrupt.s ../../../library/acc_gyro/e_lsm330.c ../rungyroscope.c ../runsquare.c ../rundetectsound.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/Asercom.o ${OBJECTDIR}/_ext/1472/DataEEPROM.o ${OBJECTDIR}/_ext/1472/main_c.o ${OBJECTDIR}/_ext/1472/runaccelerometer.o ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o ${OBJECTDIR}/_ext/1472/rungrounddirection.o ${OBJECTDIR}/_ext/1472/runshow.o ${OBJECTDIR}/_ext/1472/runwallfollow.o ${OBJECTDIR}/_ext/1472/translatorI2C.o ${OBJECTDIR}/_ext/1949949662/e_led.o ${OBJECTDIR}/_ext/1949949662/e_motors.o ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o ${OBJECTDIR}/_ext/904308887/utility.o ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o ${OBJECTDIR}/_ext/930121020/e_common.o ${OBJECTDIR}/_ext/1362274096/e_acc.o ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o ${OBJECTDIR}/_ext/1949949662/e_remote_control.o ${OBJECTDIR}/_ext/1259340286/e_init_port.o ${OBJECTDIR}/_ext/1949949662/e_agenda.o ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o ${OBJECTDIR}/_ext/1362274096/e_prox.o ${OBJECTDIR}/_ext/2015481517/e_sound.o ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o ${OBJECTDIR}/_ext/1362274096/e_micro.o ${OBJECTDIR}/_ext/663421589/e_bluetooth.o ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o ${OBJECTDIR}/_ext/930121020/e_timers.o ${OBJECTDIR}/_ext/64492303/e_init_uart1.o ${OBJECTDIR}/_ext/64492303/e_init_uart2.o ${OBJECTDIR}/_ext/2015481517/e_const_sound.o ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o ${OBJECTDIR}/_ext/930121020/e_interrupt.o ${OBJECTDIR}/_ext/851769008/e_lsm330.o ${OBJECTDIR}/_ext/1472/rungyroscope.o ${OBJECTDIR}/_ext/1472/runsquare.o ${OBJECTDIR}/_ext/1472/rundetectsound.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/Asercom.o.d ${OBJECTDIR}/_ext/1472/DataEEPROM.o.d ${OBJECTDIR}/_ext/1472/main_c.o.d ${OBJECTDIR}/_ext/1472/runaccelerometer.o.d ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.d ${OBJECTDIR}/_ext/1472/rungrounddirection.o.d ${OBJECTDIR}/_ext/1472/runshow.o.d ${OBJECTDIR}/_ext/1472/runwallfollow.o.d ${OBJECTDIR}/_ext/1472/translatorI2C.o.d ${OBJECTDIR}/_ext/1949949662/e_led.o.d ${OBJECTDIR}/_ext/1949949662/e_motors.o.d ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.d ${OBJECTDIR}/_ext/904308887/utility.o.d ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.d ${OBJECTDIR}/_ext/930121020/e_common.o.d ${OBJECTDIR}/_ext/1362274096/e_acc.o.d ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.d ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.d ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.d ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.d ${OBJECTDIR}/_ext/1949949662/e_remote_control.o.d ${OBJECTDIR}/_ext/1259340286/e_init_port.o.d ${OBJECTDIR}/_ext/1949949662/e_agenda.o.d ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.d ${OBJECTDIR}/_ext/1362274096/e_prox.o.d ${OBJECTDIR}/_ext/2015481517/e_sound.o.d ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.d ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.d ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.d ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.d ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.d ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.d ${OBJECTDIR}/_ext/1362274096/e_micro.o.d ${OBJECTDIR}/_ext/663421589/e_bluetooth.o.d ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.d ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.d ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.d ${OBJECTDIR}/_ext/930121020/e_timers.o.d ${OBJECTDIR}/_ext/64492303/e_init_uart1.o.d ${OBJECTDIR}/_ext/64492303/e_init_uart2.o.d ${OBJECTDIR}/_ext/2015481517/e_const_sound.o.d ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.d ${OBJECTDIR}/_ext/930121020/e_interrupt.o.d ${OBJECTDIR}/_ext/851769008/e_lsm330.o.d ${OBJECTDIR}/_ext/1472/rungyroscope.o.d ${OBJECTDIR}/_ext/1472/runsquare.o.d ${OBJECTDIR}/_ext/1472/rundetectsound.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/Asercom.o ${OBJECTDIR}/_ext/1472/DataEEPROM.o ${OBJECTDIR}/_ext/1472/main_c.o ${OBJECTDIR}/_ext/1472/runaccelerometer.o ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o ${OBJECTDIR}/_ext/1472/rungrounddirection.o ${OBJECTDIR}/_ext/1472/runshow.o ${OBJECTDIR}/_ext/1472/runwallfollow.o ${OBJECTDIR}/_ext/1472/translatorI2C.o ${OBJECTDIR}/_ext/1949949662/e_led.o ${OBJECTDIR}/_ext/1949949662/e_motors.o ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o ${OBJECTDIR}/_ext/904308887/utility.o ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o ${OBJECTDIR}/_ext/930121020/e_common.o ${OBJECTDIR}/_ext/1362274096/e_acc.o ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o ${OBJECTDIR}/_ext/1949949662/e_remote_control.o ${OBJECTDIR}/_ext/1259340286/e_init_port.o ${OBJECTDIR}/_ext/1949949662/e_agenda.o ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o ${OBJECTDIR}/_ext/1362274096/e_prox.o ${OBJECTDIR}/_ext/2015481517/e_sound.o ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o ${OBJECTDIR}/_ext/1362274096/e_micro.o ${OBJECTDIR}/_ext/663421589/e_bluetooth.o ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o ${OBJECTDIR}/_ext/930121020/e_timers.o ${OBJECTDIR}/_ext/64492303/e_init_uart1.o ${OBJECTDIR}/_ext/64492303/e_init_uart2.o ${OBJECTDIR}/_ext/2015481517/e_const_sound.o ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o ${OBJECTDIR}/_ext/930121020/e_interrupt.o ${OBJECTDIR}/_ext/851769008/e_lsm330.o ${OBJECTDIR}/_ext/1472/rungyroscope.o ${OBJECTDIR}/_ext/1472/runsquare.o ${OBJECTDIR}/_ext/1472/rundetectsound.o

# Source Files
SOURCEFILES=../Asercom.c ../DataEEPROM.s ../main_c.c ../runaccelerometer.c ../runbreitenberg_adv.c ../rungrounddirection.c ../runshow.c ../runwallfollow.c ../translatorI2C.c ../../../library/motor_led/advance_one_timer/e_led.c ../../../library/motor_led/advance_one_timer/e_motors.c ../../../library/a_d/advance_ad_scan/e_ad_conv.c ../../../library/utility/utility.c ../../../library/I2C/e_I2C_master_module.c ../../../library/camera/fast_2_timer/e_common.c ../../../library/a_d/advance_ad_scan/e_acc.c ../../../library/uart/e_uart1_tx_char.s ../../../library/uart/e_uart2_tx_char.s ../../../library/uart/e_uart2_rx_char.s ../../../library/uart/e_uart1_rx_char.s ../../../library/motor_led/advance_one_timer/e_remote_control.c ../../../library/motor_led/e_init_port.c ../../../library/motor_led/advance_one_timer/e_agenda.c ../../../library/I2C/e_I2C_protocol.c ../../../library/a_d/advance_ad_scan/e_prox.c ../../../library/codec/e_sound.c ../../../library/camera/fast_2_timer/e_po6030k_registers.c ../../../library/camera/fast_2_timer/e_po3030k_registers.c ../../../library/camera/fast_2_timer/e_po8030d_registers.c ../../../library/codec/e_sub_dci_kickoff.s ../../../library/codec/e_init_dci_master.s ../../../library/codec/e_init_codec_slave.s ../../../library/a_d/advance_ad_scan/e_micro.c ../../../library/bluetooth/e_bluetooth.c ../../../library/camera/fast_2_timer/e_calc_po3030k.c ../../../library/camera/fast_2_timer/e_calc_po6030k.c ../../../library/camera/fast_2_timer/e_calc_po8030d.c ../../../library/camera/fast_2_timer/e_timers.c ../../../library/uart/e_init_uart1.s ../../../library/uart/e_init_uart2.s ../../../library/codec/e_const_sound.s ../../../library/codec/e_isr_dci.s ../../../library/camera/fast_2_timer/e_interrupt.s ../../../library/acc_gyro/e_lsm330.c ../rungyroscope.c ../runsquare.c ../rundetectsound.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/demoGCtronic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=30F6014A
MP_LINKER_FILE_OPTION=,-Tp30F6014A.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/DataEEPROM.o: ../DataEEPROM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DataEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DataEEPROM.o.ok ${OBJECTDIR}/_ext/1472/DataEEPROM.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/DataEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DataEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../DataEEPROM.s -o ${OBJECTDIR}/_ext/1472/DataEEPROM.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/1472/DataEEPROM.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o: ../../../library/uart/e_uart1_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.ok ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_uart1_tx_char.s -o ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o: ../../../library/uart/e_uart2_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.ok ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_uart2_tx_char.s -o ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o: ../../../library/uart/e_uart2_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.ok ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_uart2_rx_char.s -o ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o: ../../../library/uart/e_uart1_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.ok ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_uart1_rx_char.s -o ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o: ../../../library/codec/e_sub_dci_kickoff.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.ok ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/codec/e_sub_dci_kickoff.s -o ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o: ../../../library/codec/e_init_dci_master.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.ok ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/codec/e_init_dci_master.s -o ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o: ../../../library/codec/e_init_codec_slave.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.ok ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/codec/e_init_codec_slave.s -o ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_init_uart1.o: ../../../library/uart/e_init_uart1.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart1.o.ok ${OBJECTDIR}/_ext/64492303/e_init_uart1.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_init_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_init_uart1.s -o ${OBJECTDIR}/_ext/64492303/e_init_uart1.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_init_uart1.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_init_uart2.o: ../../../library/uart/e_init_uart2.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart2.o.ok ${OBJECTDIR}/_ext/64492303/e_init_uart2.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_init_uart2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_init_uart2.s -o ${OBJECTDIR}/_ext/64492303/e_init_uart2.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_init_uart2.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/2015481517/e_const_sound.o: ../../../library/codec/e_const_sound.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_const_sound.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_const_sound.o.ok ${OBJECTDIR}/_ext/2015481517/e_const_sound.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_const_sound.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_const_sound.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/codec/e_const_sound.s -o ${OBJECTDIR}/_ext/2015481517/e_const_sound.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/2015481517/e_const_sound.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/2015481517/e_isr_dci.o: ../../../library/codec/e_isr_dci.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.ok ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/codec/e_isr_dci.s -o ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/930121020/e_interrupt.o: ../../../library/camera/fast_2_timer/e_interrupt.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_interrupt.o.ok ${OBJECTDIR}/_ext/930121020/e_interrupt.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/camera/fast_2_timer/e_interrupt.s -o ${OBJECTDIR}/_ext/930121020/e_interrupt.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_ICD3=1 -g  -MD "${OBJECTDIR}/_ext/930121020/e_interrupt.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
else
${OBJECTDIR}/_ext/1472/DataEEPROM.o: ../DataEEPROM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DataEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DataEEPROM.o.ok ${OBJECTDIR}/_ext/1472/DataEEPROM.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/DataEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DataEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../DataEEPROM.s -o ${OBJECTDIR}/_ext/1472/DataEEPROM.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/1472/DataEEPROM.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o: ../../../library/uart/e_uart1_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.ok ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_uart1_tx_char.s -o ${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_uart1_tx_char.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o: ../../../library/uart/e_uart2_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.ok ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_uart2_tx_char.s -o ${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_uart2_tx_char.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o: ../../../library/uart/e_uart2_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.ok ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_uart2_rx_char.s -o ${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_uart2_rx_char.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o: ../../../library/uart/e_uart1_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.ok ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_uart1_rx_char.s -o ${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_uart1_rx_char.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o: ../../../library/codec/e_sub_dci_kickoff.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.ok ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/codec/e_sub_dci_kickoff.s -o ${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/2015481517/e_sub_dci_kickoff.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o: ../../../library/codec/e_init_dci_master.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.ok ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/codec/e_init_dci_master.s -o ${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/2015481517/e_init_dci_master.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o: ../../../library/codec/e_init_codec_slave.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.ok ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/codec/e_init_codec_slave.s -o ${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/2015481517/e_init_codec_slave.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_init_uart1.o: ../../../library/uart/e_init_uart1.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart1.o.ok ${OBJECTDIR}/_ext/64492303/e_init_uart1.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_init_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_init_uart1.s -o ${OBJECTDIR}/_ext/64492303/e_init_uart1.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_init_uart1.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/64492303/e_init_uart2.o: ../../../library/uart/e_init_uart2.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64492303" 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart2.o.ok ${OBJECTDIR}/_ext/64492303/e_init_uart2.o.err 
	@${RM} ${OBJECTDIR}/_ext/64492303/e_init_uart2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64492303/e_init_uart2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/uart/e_init_uart2.s -o ${OBJECTDIR}/_ext/64492303/e_init_uart2.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/64492303/e_init_uart2.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/2015481517/e_const_sound.o: ../../../library/codec/e_const_sound.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_const_sound.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_const_sound.o.ok ${OBJECTDIR}/_ext/2015481517/e_const_sound.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_const_sound.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_const_sound.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/codec/e_const_sound.s -o ${OBJECTDIR}/_ext/2015481517/e_const_sound.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/2015481517/e_const_sound.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/2015481517/e_isr_dci.o: ../../../library/codec/e_isr_dci.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.ok ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/codec/e_isr_dci.s -o ${OBJECTDIR}/_ext/2015481517/e_isr_dci.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/2015481517/e_isr_dci.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/_ext/930121020/e_interrupt.o: ../../../library/camera/fast_2_timer/e_interrupt.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_interrupt.o.ok ${OBJECTDIR}/_ext/930121020/e_interrupt.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_AS} $(MP_EXTRA_AS_PRE)  ../../../library/camera/fast_2_timer/e_interrupt.s -o ${OBJECTDIR}/_ext/930121020/e_interrupt.o -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/_ext/930121020/e_interrupt.o.d" -I".." -I"../../../library" -I"../../../library/uart" -I"../../../library/codec"$(MP_EXTRA_AS_POST)
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/Asercom.o: ../Asercom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Asercom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Asercom.o.ok ${OBJECTDIR}/_ext/1472/Asercom.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/Asercom.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Asercom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/Asercom.o.d" -o ${OBJECTDIR}/_ext/1472/Asercom.o ../Asercom.c    
	
${OBJECTDIR}/_ext/1472/main_c.o: ../main_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o.ok ${OBJECTDIR}/_ext/1472/main_c.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/main_c.o.d" -o ${OBJECTDIR}/_ext/1472/main_c.o ../main_c.c    
	
${OBJECTDIR}/_ext/1472/runaccelerometer.o: ../runaccelerometer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/runaccelerometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/runaccelerometer.o.ok ${OBJECTDIR}/_ext/1472/runaccelerometer.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/runaccelerometer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/runaccelerometer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/runaccelerometer.o.d" -o ${OBJECTDIR}/_ext/1472/runaccelerometer.o ../runaccelerometer.c    
	
${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o: ../runbreitenberg_adv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.ok ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.d" -o ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o ../runbreitenberg_adv.c    
	
${OBJECTDIR}/_ext/1472/rungrounddirection.o: ../rungrounddirection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rungrounddirection.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rungrounddirection.o.ok ${OBJECTDIR}/_ext/1472/rungrounddirection.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/rungrounddirection.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rungrounddirection.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/rungrounddirection.o.d" -o ${OBJECTDIR}/_ext/1472/rungrounddirection.o ../rungrounddirection.c    
	
${OBJECTDIR}/_ext/1472/runshow.o: ../runshow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/runshow.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/runshow.o.ok ${OBJECTDIR}/_ext/1472/runshow.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/runshow.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/runshow.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/runshow.o.d" -o ${OBJECTDIR}/_ext/1472/runshow.o ../runshow.c    
	
${OBJECTDIR}/_ext/1472/runwallfollow.o: ../runwallfollow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/runwallfollow.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/runwallfollow.o.ok ${OBJECTDIR}/_ext/1472/runwallfollow.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/runwallfollow.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/runwallfollow.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/runwallfollow.o.d" -o ${OBJECTDIR}/_ext/1472/runwallfollow.o ../runwallfollow.c    
	
${OBJECTDIR}/_ext/1472/translatorI2C.o: ../translatorI2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/translatorI2C.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/translatorI2C.o.ok ${OBJECTDIR}/_ext/1472/translatorI2C.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/translatorI2C.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/translatorI2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/translatorI2C.o.d" -o ${OBJECTDIR}/_ext/1472/translatorI2C.o ../translatorI2C.c    
	
${OBJECTDIR}/_ext/1949949662/e_led.o: ../../../library/motor_led/advance_one_timer/e_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1949949662" 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_led.o.ok ${OBJECTDIR}/_ext/1949949662/e_led.o.err 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_led.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1949949662/e_led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1949949662/e_led.o.d" -o ${OBJECTDIR}/_ext/1949949662/e_led.o ../../../library/motor_led/advance_one_timer/e_led.c    
	
${OBJECTDIR}/_ext/1949949662/e_motors.o: ../../../library/motor_led/advance_one_timer/e_motors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1949949662" 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_motors.o.ok ${OBJECTDIR}/_ext/1949949662/e_motors.o.err 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_motors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1949949662/e_motors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1949949662/e_motors.o.d" -o ${OBJECTDIR}/_ext/1949949662/e_motors.o ../../../library/motor_led/advance_one_timer/e_motors.c    
	
${OBJECTDIR}/_ext/1362274096/e_ad_conv.o: ../../../library/a_d/advance_ad_scan/e_ad_conv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362274096" 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.ok ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.d" -o ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o ../../../library/a_d/advance_ad_scan/e_ad_conv.c    
	
${OBJECTDIR}/_ext/904308887/utility.o: ../../../library/utility/utility.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/904308887" 
	@${RM} ${OBJECTDIR}/_ext/904308887/utility.o.d 
	@${RM} ${OBJECTDIR}/_ext/904308887/utility.o.ok ${OBJECTDIR}/_ext/904308887/utility.o.err 
	@${RM} ${OBJECTDIR}/_ext/904308887/utility.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/904308887/utility.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/904308887/utility.o.d" -o ${OBJECTDIR}/_ext/904308887/utility.o ../../../library/utility/utility.c    
	
${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o: ../../../library/I2C/e_I2C_master_module.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/417766185" 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.d 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.ok ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.err 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.d" -o ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o ../../../library/I2C/e_I2C_master_module.c    
	
${OBJECTDIR}/_ext/930121020/e_common.o: ../../../library/camera/fast_2_timer/e_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_common.o.ok ${OBJECTDIR}/_ext/930121020/e_common.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_common.o.d" -o ${OBJECTDIR}/_ext/930121020/e_common.o ../../../library/camera/fast_2_timer/e_common.c    
	
${OBJECTDIR}/_ext/1362274096/e_acc.o: ../../../library/a_d/advance_ad_scan/e_acc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362274096" 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_acc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_acc.o.ok ${OBJECTDIR}/_ext/1362274096/e_acc.o.err 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_acc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362274096/e_acc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1362274096/e_acc.o.d" -o ${OBJECTDIR}/_ext/1362274096/e_acc.o ../../../library/a_d/advance_ad_scan/e_acc.c    
	
${OBJECTDIR}/_ext/1949949662/e_remote_control.o: ../../../library/motor_led/advance_one_timer/e_remote_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1949949662" 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_remote_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_remote_control.o.ok ${OBJECTDIR}/_ext/1949949662/e_remote_control.o.err 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_remote_control.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1949949662/e_remote_control.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1949949662/e_remote_control.o.d" -o ${OBJECTDIR}/_ext/1949949662/e_remote_control.o ../../../library/motor_led/advance_one_timer/e_remote_control.c    
	
${OBJECTDIR}/_ext/1259340286/e_init_port.o: ../../../library/motor_led/e_init_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1259340286" 
	@${RM} ${OBJECTDIR}/_ext/1259340286/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1259340286/e_init_port.o.ok ${OBJECTDIR}/_ext/1259340286/e_init_port.o.err 
	@${RM} ${OBJECTDIR}/_ext/1259340286/e_init_port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1259340286/e_init_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1259340286/e_init_port.o.d" -o ${OBJECTDIR}/_ext/1259340286/e_init_port.o ../../../library/motor_led/e_init_port.c    
	
${OBJECTDIR}/_ext/1949949662/e_agenda.o: ../../../library/motor_led/advance_one_timer/e_agenda.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1949949662" 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_agenda.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_agenda.o.ok ${OBJECTDIR}/_ext/1949949662/e_agenda.o.err 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_agenda.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1949949662/e_agenda.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1949949662/e_agenda.o.d" -o ${OBJECTDIR}/_ext/1949949662/e_agenda.o ../../../library/motor_led/advance_one_timer/e_agenda.c    
	
${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o: ../../../library/I2C/e_I2C_protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/417766185" 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.ok ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.err 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.d" -o ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o ../../../library/I2C/e_I2C_protocol.c    
	
${OBJECTDIR}/_ext/1362274096/e_prox.o: ../../../library/a_d/advance_ad_scan/e_prox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362274096" 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_prox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_prox.o.ok ${OBJECTDIR}/_ext/1362274096/e_prox.o.err 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_prox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362274096/e_prox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1362274096/e_prox.o.d" -o ${OBJECTDIR}/_ext/1362274096/e_prox.o ../../../library/a_d/advance_ad_scan/e_prox.c    
	
${OBJECTDIR}/_ext/2015481517/e_sound.o: ../../../library/codec/e_sound.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sound.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sound.o.ok ${OBJECTDIR}/_ext/2015481517/e_sound.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sound.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_sound.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/2015481517/e_sound.o.d" -o ${OBJECTDIR}/_ext/2015481517/e_sound.o ../../../library/codec/e_sound.c    
	
${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o: ../../../library/camera/fast_2_timer/e_po6030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.ok ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.d" -o ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o ../../../library/camera/fast_2_timer/e_po6030k_registers.c    
	
${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o: ../../../library/camera/fast_2_timer/e_po3030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.ok ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.d" -o ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o ../../../library/camera/fast_2_timer/e_po3030k_registers.c    
	
${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o: ../../../library/camera/fast_2_timer/e_po8030d_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.ok ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.d" -o ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o ../../../library/camera/fast_2_timer/e_po8030d_registers.c    
	
${OBJECTDIR}/_ext/1362274096/e_micro.o: ../../../library/a_d/advance_ad_scan/e_micro.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362274096" 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_micro.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_micro.o.ok ${OBJECTDIR}/_ext/1362274096/e_micro.o.err 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_micro.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362274096/e_micro.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1362274096/e_micro.o.d" -o ${OBJECTDIR}/_ext/1362274096/e_micro.o ../../../library/a_d/advance_ad_scan/e_micro.c    
	
${OBJECTDIR}/_ext/663421589/e_bluetooth.o: ../../../library/bluetooth/e_bluetooth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/663421589" 
	@${RM} ${OBJECTDIR}/_ext/663421589/e_bluetooth.o.d 
	@${RM} ${OBJECTDIR}/_ext/663421589/e_bluetooth.o.ok ${OBJECTDIR}/_ext/663421589/e_bluetooth.o.err 
	@${RM} ${OBJECTDIR}/_ext/663421589/e_bluetooth.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/663421589/e_bluetooth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/663421589/e_bluetooth.o.d" -o ${OBJECTDIR}/_ext/663421589/e_bluetooth.o ../../../library/bluetooth/e_bluetooth.c    
	
${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o: ../../../library/camera/fast_2_timer/e_calc_po3030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.ok ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.d" -o ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o ../../../library/camera/fast_2_timer/e_calc_po3030k.c    
	
${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o: ../../../library/camera/fast_2_timer/e_calc_po6030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.ok ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.d" -o ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o ../../../library/camera/fast_2_timer/e_calc_po6030k.c    
	
${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o: ../../../library/camera/fast_2_timer/e_calc_po8030d.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.ok ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.d" -o ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o ../../../library/camera/fast_2_timer/e_calc_po8030d.c    
	
${OBJECTDIR}/_ext/930121020/e_timers.o: ../../../library/camera/fast_2_timer/e_timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_timers.o.ok ${OBJECTDIR}/_ext/930121020/e_timers.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_timers.o.d" -o ${OBJECTDIR}/_ext/930121020/e_timers.o ../../../library/camera/fast_2_timer/e_timers.c    
	
${OBJECTDIR}/_ext/851769008/e_lsm330.o: ../../../library/acc_gyro/e_lsm330.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/851769008" 
	@${RM} ${OBJECTDIR}/_ext/851769008/e_lsm330.o.d 
	@${RM} ${OBJECTDIR}/_ext/851769008/e_lsm330.o.ok ${OBJECTDIR}/_ext/851769008/e_lsm330.o.err 
	@${RM} ${OBJECTDIR}/_ext/851769008/e_lsm330.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851769008/e_lsm330.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/851769008/e_lsm330.o.d" -o ${OBJECTDIR}/_ext/851769008/e_lsm330.o ../../../library/acc_gyro/e_lsm330.c    
	
${OBJECTDIR}/_ext/1472/rungyroscope.o: ../rungyroscope.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rungyroscope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rungyroscope.o.ok ${OBJECTDIR}/_ext/1472/rungyroscope.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/rungyroscope.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rungyroscope.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/rungyroscope.o.d" -o ${OBJECTDIR}/_ext/1472/rungyroscope.o ../rungyroscope.c    
	
${OBJECTDIR}/_ext/1472/runsquare.o: ../runsquare.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/runsquare.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/runsquare.o.ok ${OBJECTDIR}/_ext/1472/runsquare.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/runsquare.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/runsquare.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/runsquare.o.d" -o ${OBJECTDIR}/_ext/1472/runsquare.o ../runsquare.c    
	
${OBJECTDIR}/_ext/1472/rundetectsound.o: ../rundetectsound.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rundetectsound.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rundetectsound.o.ok ${OBJECTDIR}/_ext/1472/rundetectsound.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/rundetectsound.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rundetectsound.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/rundetectsound.o.d" -o ${OBJECTDIR}/_ext/1472/rundetectsound.o ../rundetectsound.c    
	
else
${OBJECTDIR}/_ext/1472/Asercom.o: ../Asercom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Asercom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Asercom.o.ok ${OBJECTDIR}/_ext/1472/Asercom.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/Asercom.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Asercom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/Asercom.o.d" -o ${OBJECTDIR}/_ext/1472/Asercom.o ../Asercom.c    
	
${OBJECTDIR}/_ext/1472/main_c.o: ../main_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o.ok ${OBJECTDIR}/_ext/1472/main_c.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main_c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/main_c.o.d" -o ${OBJECTDIR}/_ext/1472/main_c.o ../main_c.c    
	
${OBJECTDIR}/_ext/1472/runaccelerometer.o: ../runaccelerometer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/runaccelerometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/runaccelerometer.o.ok ${OBJECTDIR}/_ext/1472/runaccelerometer.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/runaccelerometer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/runaccelerometer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/runaccelerometer.o.d" -o ${OBJECTDIR}/_ext/1472/runaccelerometer.o ../runaccelerometer.c    
	
${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o: ../runbreitenberg_adv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.ok ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o.d" -o ${OBJECTDIR}/_ext/1472/runbreitenberg_adv.o ../runbreitenberg_adv.c    
	
${OBJECTDIR}/_ext/1472/rungrounddirection.o: ../rungrounddirection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rungrounddirection.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rungrounddirection.o.ok ${OBJECTDIR}/_ext/1472/rungrounddirection.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/rungrounddirection.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rungrounddirection.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/rungrounddirection.o.d" -o ${OBJECTDIR}/_ext/1472/rungrounddirection.o ../rungrounddirection.c    
	
${OBJECTDIR}/_ext/1472/runshow.o: ../runshow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/runshow.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/runshow.o.ok ${OBJECTDIR}/_ext/1472/runshow.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/runshow.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/runshow.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/runshow.o.d" -o ${OBJECTDIR}/_ext/1472/runshow.o ../runshow.c    
	
${OBJECTDIR}/_ext/1472/runwallfollow.o: ../runwallfollow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/runwallfollow.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/runwallfollow.o.ok ${OBJECTDIR}/_ext/1472/runwallfollow.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/runwallfollow.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/runwallfollow.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/runwallfollow.o.d" -o ${OBJECTDIR}/_ext/1472/runwallfollow.o ../runwallfollow.c    
	
${OBJECTDIR}/_ext/1472/translatorI2C.o: ../translatorI2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/translatorI2C.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/translatorI2C.o.ok ${OBJECTDIR}/_ext/1472/translatorI2C.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/translatorI2C.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/translatorI2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/translatorI2C.o.d" -o ${OBJECTDIR}/_ext/1472/translatorI2C.o ../translatorI2C.c    
	
${OBJECTDIR}/_ext/1949949662/e_led.o: ../../../library/motor_led/advance_one_timer/e_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1949949662" 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_led.o.ok ${OBJECTDIR}/_ext/1949949662/e_led.o.err 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_led.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1949949662/e_led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1949949662/e_led.o.d" -o ${OBJECTDIR}/_ext/1949949662/e_led.o ../../../library/motor_led/advance_one_timer/e_led.c    
	
${OBJECTDIR}/_ext/1949949662/e_motors.o: ../../../library/motor_led/advance_one_timer/e_motors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1949949662" 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_motors.o.ok ${OBJECTDIR}/_ext/1949949662/e_motors.o.err 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_motors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1949949662/e_motors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1949949662/e_motors.o.d" -o ${OBJECTDIR}/_ext/1949949662/e_motors.o ../../../library/motor_led/advance_one_timer/e_motors.c    
	
${OBJECTDIR}/_ext/1362274096/e_ad_conv.o: ../../../library/a_d/advance_ad_scan/e_ad_conv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362274096" 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.ok ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1362274096/e_ad_conv.o.d" -o ${OBJECTDIR}/_ext/1362274096/e_ad_conv.o ../../../library/a_d/advance_ad_scan/e_ad_conv.c    
	
${OBJECTDIR}/_ext/904308887/utility.o: ../../../library/utility/utility.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/904308887" 
	@${RM} ${OBJECTDIR}/_ext/904308887/utility.o.d 
	@${RM} ${OBJECTDIR}/_ext/904308887/utility.o.ok ${OBJECTDIR}/_ext/904308887/utility.o.err 
	@${RM} ${OBJECTDIR}/_ext/904308887/utility.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/904308887/utility.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/904308887/utility.o.d" -o ${OBJECTDIR}/_ext/904308887/utility.o ../../../library/utility/utility.c    
	
${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o: ../../../library/I2C/e_I2C_master_module.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/417766185" 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.d 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.ok ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.err 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o.d" -o ${OBJECTDIR}/_ext/417766185/e_I2C_master_module.o ../../../library/I2C/e_I2C_master_module.c    
	
${OBJECTDIR}/_ext/930121020/e_common.o: ../../../library/camera/fast_2_timer/e_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_common.o.ok ${OBJECTDIR}/_ext/930121020/e_common.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_common.o.d" -o ${OBJECTDIR}/_ext/930121020/e_common.o ../../../library/camera/fast_2_timer/e_common.c    
	
${OBJECTDIR}/_ext/1362274096/e_acc.o: ../../../library/a_d/advance_ad_scan/e_acc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362274096" 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_acc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_acc.o.ok ${OBJECTDIR}/_ext/1362274096/e_acc.o.err 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_acc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362274096/e_acc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1362274096/e_acc.o.d" -o ${OBJECTDIR}/_ext/1362274096/e_acc.o ../../../library/a_d/advance_ad_scan/e_acc.c    
	
${OBJECTDIR}/_ext/1949949662/e_remote_control.o: ../../../library/motor_led/advance_one_timer/e_remote_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1949949662" 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_remote_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_remote_control.o.ok ${OBJECTDIR}/_ext/1949949662/e_remote_control.o.err 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_remote_control.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1949949662/e_remote_control.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1949949662/e_remote_control.o.d" -o ${OBJECTDIR}/_ext/1949949662/e_remote_control.o ../../../library/motor_led/advance_one_timer/e_remote_control.c    
	
${OBJECTDIR}/_ext/1259340286/e_init_port.o: ../../../library/motor_led/e_init_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1259340286" 
	@${RM} ${OBJECTDIR}/_ext/1259340286/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1259340286/e_init_port.o.ok ${OBJECTDIR}/_ext/1259340286/e_init_port.o.err 
	@${RM} ${OBJECTDIR}/_ext/1259340286/e_init_port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1259340286/e_init_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1259340286/e_init_port.o.d" -o ${OBJECTDIR}/_ext/1259340286/e_init_port.o ../../../library/motor_led/e_init_port.c    
	
${OBJECTDIR}/_ext/1949949662/e_agenda.o: ../../../library/motor_led/advance_one_timer/e_agenda.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1949949662" 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_agenda.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_agenda.o.ok ${OBJECTDIR}/_ext/1949949662/e_agenda.o.err 
	@${RM} ${OBJECTDIR}/_ext/1949949662/e_agenda.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1949949662/e_agenda.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1949949662/e_agenda.o.d" -o ${OBJECTDIR}/_ext/1949949662/e_agenda.o ../../../library/motor_led/advance_one_timer/e_agenda.c    
	
${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o: ../../../library/I2C/e_I2C_protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/417766185" 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.ok ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.err 
	@${RM} ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o.d" -o ${OBJECTDIR}/_ext/417766185/e_I2C_protocol.o ../../../library/I2C/e_I2C_protocol.c    
	
${OBJECTDIR}/_ext/1362274096/e_prox.o: ../../../library/a_d/advance_ad_scan/e_prox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362274096" 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_prox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_prox.o.ok ${OBJECTDIR}/_ext/1362274096/e_prox.o.err 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_prox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362274096/e_prox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1362274096/e_prox.o.d" -o ${OBJECTDIR}/_ext/1362274096/e_prox.o ../../../library/a_d/advance_ad_scan/e_prox.c    
	
${OBJECTDIR}/_ext/2015481517/e_sound.o: ../../../library/codec/e_sound.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2015481517" 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sound.o.d 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sound.o.ok ${OBJECTDIR}/_ext/2015481517/e_sound.o.err 
	@${RM} ${OBJECTDIR}/_ext/2015481517/e_sound.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2015481517/e_sound.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/2015481517/e_sound.o.d" -o ${OBJECTDIR}/_ext/2015481517/e_sound.o ../../../library/codec/e_sound.c    
	
${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o: ../../../library/camera/fast_2_timer/e_po6030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.ok ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o.d" -o ${OBJECTDIR}/_ext/930121020/e_po6030k_registers.o ../../../library/camera/fast_2_timer/e_po6030k_registers.c    
	
${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o: ../../../library/camera/fast_2_timer/e_po3030k_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.ok ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o.d" -o ${OBJECTDIR}/_ext/930121020/e_po3030k_registers.o ../../../library/camera/fast_2_timer/e_po3030k_registers.c    
	
${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o: ../../../library/camera/fast_2_timer/e_po8030d_registers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.ok ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o.d" -o ${OBJECTDIR}/_ext/930121020/e_po8030d_registers.o ../../../library/camera/fast_2_timer/e_po8030d_registers.c    
	
${OBJECTDIR}/_ext/1362274096/e_micro.o: ../../../library/a_d/advance_ad_scan/e_micro.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362274096" 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_micro.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_micro.o.ok ${OBJECTDIR}/_ext/1362274096/e_micro.o.err 
	@${RM} ${OBJECTDIR}/_ext/1362274096/e_micro.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362274096/e_micro.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1362274096/e_micro.o.d" -o ${OBJECTDIR}/_ext/1362274096/e_micro.o ../../../library/a_d/advance_ad_scan/e_micro.c    
	
${OBJECTDIR}/_ext/663421589/e_bluetooth.o: ../../../library/bluetooth/e_bluetooth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/663421589" 
	@${RM} ${OBJECTDIR}/_ext/663421589/e_bluetooth.o.d 
	@${RM} ${OBJECTDIR}/_ext/663421589/e_bluetooth.o.ok ${OBJECTDIR}/_ext/663421589/e_bluetooth.o.err 
	@${RM} ${OBJECTDIR}/_ext/663421589/e_bluetooth.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/663421589/e_bluetooth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/663421589/e_bluetooth.o.d" -o ${OBJECTDIR}/_ext/663421589/e_bluetooth.o ../../../library/bluetooth/e_bluetooth.c    
	
${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o: ../../../library/camera/fast_2_timer/e_calc_po3030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.ok ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o.d" -o ${OBJECTDIR}/_ext/930121020/e_calc_po3030k.o ../../../library/camera/fast_2_timer/e_calc_po3030k.c    
	
${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o: ../../../library/camera/fast_2_timer/e_calc_po6030k.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.ok ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o.d" -o ${OBJECTDIR}/_ext/930121020/e_calc_po6030k.o ../../../library/camera/fast_2_timer/e_calc_po6030k.c    
	
${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o: ../../../library/camera/fast_2_timer/e_calc_po8030d.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.ok ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o.d" -o ${OBJECTDIR}/_ext/930121020/e_calc_po8030d.o ../../../library/camera/fast_2_timer/e_calc_po8030d.c    
	
${OBJECTDIR}/_ext/930121020/e_timers.o: ../../../library/camera/fast_2_timer/e_timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/930121020" 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_timers.o.ok ${OBJECTDIR}/_ext/930121020/e_timers.o.err 
	@${RM} ${OBJECTDIR}/_ext/930121020/e_timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/930121020/e_timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/930121020/e_timers.o.d" -o ${OBJECTDIR}/_ext/930121020/e_timers.o ../../../library/camera/fast_2_timer/e_timers.c    
	
${OBJECTDIR}/_ext/851769008/e_lsm330.o: ../../../library/acc_gyro/e_lsm330.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/851769008" 
	@${RM} ${OBJECTDIR}/_ext/851769008/e_lsm330.o.d 
	@${RM} ${OBJECTDIR}/_ext/851769008/e_lsm330.o.ok ${OBJECTDIR}/_ext/851769008/e_lsm330.o.err 
	@${RM} ${OBJECTDIR}/_ext/851769008/e_lsm330.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/851769008/e_lsm330.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/851769008/e_lsm330.o.d" -o ${OBJECTDIR}/_ext/851769008/e_lsm330.o ../../../library/acc_gyro/e_lsm330.c    
	
${OBJECTDIR}/_ext/1472/rungyroscope.o: ../rungyroscope.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rungyroscope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rungyroscope.o.ok ${OBJECTDIR}/_ext/1472/rungyroscope.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/rungyroscope.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rungyroscope.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/rungyroscope.o.d" -o ${OBJECTDIR}/_ext/1472/rungyroscope.o ../rungyroscope.c    
	
${OBJECTDIR}/_ext/1472/runsquare.o: ../runsquare.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/runsquare.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/runsquare.o.ok ${OBJECTDIR}/_ext/1472/runsquare.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/runsquare.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/runsquare.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/runsquare.o.d" -o ${OBJECTDIR}/_ext/1472/runsquare.o ../runsquare.c    
	
${OBJECTDIR}/_ext/1472/rundetectsound.o: ../rundetectsound.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rundetectsound.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rundetectsound.o.ok ${OBJECTDIR}/_ext/1472/rundetectsound.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/rundetectsound.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rundetectsound.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../../library" -I".." -I"../uart" -mlarge-code -mlarge-data -MMD -MF "${OBJECTDIR}/_ext/1472/rundetectsound.o.d" -o ${OBJECTDIR}/_ext/1472/rundetectsound.o ../rundetectsound.c    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/demoGCtronic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/demoGCtronic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=128,--stack=500,-L"C:/Program Files/Microchip/MPLAB C30/lib",-L"C:/Program Files (x86)/Microchip/MPLAB C30/support/dsPIC30F/gld",-Map="${DISTDIR}/demoGCtronic.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/demoGCtronic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/demoGCtronic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=128,--stack=500,-L"C:/Program Files/Microchip/MPLAB C30/lib",-L"C:/Program Files (x86)/Microchip/MPLAB C30/support/dsPIC30F/gld",-Map="${DISTDIR}/demoGCtronic.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/demoGCtronic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
