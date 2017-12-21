% PICOSTATUS Defines information and status code values to be used with Pico Technology Instrument Drivers.
%
%   This file contains definitions for the PICO_INFO and PICO_STATUS data 
%   values as defined in the PicoStatus.h header file.  
%
%   Copyright: © 2013-2017 Pico Technology Ltd. All rights
%   reserved.

classdef PicoStatus
   
    properties(Constant)
        
    % PICO_INFO values    
    PICO_DRIVER_VERSION						= hex2dec('00000000');
	PICO_USB_VERSION        				= hex2dec('00000001');
	PICO_HARDWARE_VERSION   				= hex2dec('00000002');
	PICO_VARIANT_INFO       				= hex2dec('00000003');
	PICO_BATCH_AND_SERIAL   				= hex2dec('00000004');	
	PICO_CAL_DATE           				= hex2dec('00000005');
	PICO_KERNEL_VERSION     				= hex2dec('00000006');

	PICO_DIGITAL_HARDWARE_VERSION			= hex2dec('00000007');	
	PICO_ANALOGUE_HARDWARE_VERSION			= hex2dec('00000008');

	PICO_FIRMWARE_VERSION_1					= hex2dec('00000009');	
	PICO_FIRMWARE_VERSION_2					= hex2dec('0000000A');

	PICO_MAC_ADDRESS						= hex2dec('0000000B');
       
    % PICO_STATUS Status codes
    PICO_OK                                 = hex2dec('00000000');
    PICO_MAX_UNITS_OPENED                   = hex2dec('00000001');
    PICO_MEMORY_FAIL                        = hex2dec('00000002');
    PICO_NOT_FOUND                          = hex2dec('00000003');
    PICO_FW_FAIL                            = hex2dec('00000004');		
    PICO_OPEN_OPERATION_IN_PROGRESS         = hex2dec('00000005');
    PICO_OPERATION_FAILED                   = hex2dec('00000006');
    PICO_NOT_RESPONDING                     = hex2dec('00000007');	
    PICO_CONFIG_FAIL					    = hex2dec('00000008');									
    PICO_KERNEL_DRIVER_TOO_OLD				= hex2dec('00000009');					
    PICO_EEPROM_CORRUPT						= hex2dec('0000000A');							
    PICO_OS_NOT_SUPPORTED					= hex2dec('0000000B');	
    PICO_INVALID_HANDLE						= hex2dec('0000000C');								
    PICO_INVALID_PARAMETER					= hex2dec('0000000D');				
    PICO_INVALID_TIMEBASE					= hex2dec('0000000E');				
    PICO_INVALID_VOLTAGE_RANGE				= hex2dec('0000000F');		
    PICO_INVALID_CHANNEL					= hex2dec('00000010');	
    PICO_INVALID_TRIGGER_CHANNEL			= hex2dec('00000011');
    PICO_INVALID_CONDITION_CHANNEL			= hex2dec('00000012');
    PICO_NO_SIGNAL_GENERATOR				= hex2dec('00000013');				
    PICO_STREAMING_FAILED					= hex2dec('00000014');				
    PICO_BLOCK_MODE_FAILED					= hex2dec('00000015');				
    PICO_NULL_PARAMETER						= hex2dec('00000016');				
    PICO_ETS_MODE_SET						= hex2dec('00000017');				
    PICO_DATA_NOT_AVAILABLE                 = hex2dec('00000018');				
    PICO_STRING_BUFFER_TO_SMALL				= hex2dec('00000019');				
    PICO_ETS_NOT_SUPPORTED					= hex2dec('0000001A');				
    PICO_AUTO_TRIGGER_TIME_TO_SHORT			= hex2dec('0000001B');				
    PICO_BUFFER_STALL						= hex2dec('0000001C');				
    PICO_TOO_MANY_SAMPLES					= hex2dec('0000001D');	
    PICO_TOO_MANY_SEGMENTS					= hex2dec('0000001E');	
    PICO_PULSE_WIDTH_QUALIFIER				= hex2dec('0000001F');	
    PICO_DELAY								= hex2dec('00000020');	
	PICO_SOURCE_DETAILS						= hex2dec('00000021');	
    PICO_CONDITIONS							= hex2dec('00000022');	
	PICO_USER_CALLBACK						= hex2dec('00000023');	
    PICO_DEVICE_SAMPLING					= hex2dec('00000024');	
    PICO_NO_SAMPLES_AVAILABLE				= hex2dec('00000025');	
	PICO_SEGMENT_OUT_OF_RANGE				= hex2dec('00000026');	
    PICO_BUSY								= hex2dec('00000027');	
    PICO_STARTINDEX_INVALID					= hex2dec('00000028');	
    PICO_INVALID_INFO						= hex2dec('00000029');	
    PICO_INFO_UNAVAILABLE                   = hex2dec('0000002A'); 
    PICO_INVALID_SAMPLE_INTERVAL			= hex2dec('0000002B');
    PICO_TRIGGER_ERROR						= hex2dec('0000002C');
	PICO_MEMORY								= hex2dec('0000002D');
    PICO_SIG_GEN_PARAM						= hex2dec('0000002E');
    PICO_SHOTS_SWEEPS_WARNING				= hex2dec('0000002F');
    PICO_SIGGEN_TRIGGER_SOURCE				= hex2dec('00000030');
    PICO_AUX_OUTPUT_CONFLICT                = hex2dec('00000031');
    PICO_AUX_OUTPUT_ETS_CONFLICT            = hex2dec('00000032');
    PICO_WARNING_EXT_THRESHOLD_CONFLICT     = hex2dec('00000033');
    PICO_WARNING_AUX_OUTPUT_CONFLICT        = hex2dec('00000034');
    PICO_SIGGEN_OUTPUT_OVER_VOLTAGE			= hex2dec('00000035');
    PICO_DELAY_NULL							= hex2dec('00000036');
    PICO_INVALID_BUFFER						= hex2dec('00000037');
    PICO_SIGGEN_OFFSET_VOLTAGE				= hex2dec('00000038');
    PICO_SIGGEN_PK_TO_PK					= hex2dec('00000039');
    PICO_CANCELLED							= hex2dec('0000003A');
	PICO_SEGMENT_NOT_USED					= hex2dec('0000003B');
    PICO_INVALID_CALL						= hex2dec('0000003C');
    PICO_GET_VALUES_INTERRUPTED				= hex2dec('0000003D');
    PICO_NOT_USED							= hex2dec('0000003F');
    PICO_INVALID_SAMPLERATIO				= hex2dec('00000040');
    
    % Operation could not be carried out because device was in an invalid state.
    PICO_INVALID_STATE                      = hex2dec('00000041');
    
    % Operation could not be carried out as rapid capture no of waveforms 
    % are greater than the no of memory segments.
    PICO_NOT_ENOUGH_SEGMENTS                = hex2dec('00000042');
    
    % A driver function has already been called and not yet finished
    % only one call to the driver can be made at any one time
    PICO_DRIVER_FUNCTION                    = hex2dec('00000043');
    PICO_RESERVED                           = hex2dec('00000044');
    PICO_INVALID_COUPLING					= hex2dec('00000045');
    PICO_BUFFERS_NOT_SET					= hex2dec('00000046');
    PICO_RATIO_MODE_NOT_SUPPORTED			= hex2dec('00000047');
    PICO_RAPID_NOT_SUPPORT_AGGREGATION		= hex2dec('00000048');
    PICO_INVALID_TRIGGER_PROPERTY           = hex2dec('00000049');
    PICO_INTERFACE_NOT_CONNECTED			= hex2dec('0000004A');
    PICO_RESISTANCE_AND_PROBE_NOT_ALLOWED   = hex2dec('0000004B');
    PICO_POWER_FAILED						= hex2dec('0000004C');
    PICO_SIGGEN_WAVEFORM_SETUP_FAILED		= hex2dec('0000004D');
    PICO_FPGA_FAIL                          = hex2dec('0000004E');
    PICO_POWER_MANAGER						= hex2dec('0000004F');
    PICO_INVALID_ANALOGUE_OFFSET			= hex2dec('00000050');
    
    % unable to configure the ps6000
    PICO_PLL_LOCK_FAILED					= hex2dec('00000051');
    
    % the ps6000 Analog board is not directly connected to the digital board
    PICO_ANALOG_BOARD                       = hex2dec('00000052');					
    % unable to configure the Signal Generator
    PICO_CONFIG_FAIL_AWG                    = hex2dec('00000053');
    PICO_INITIALISE_FPGA					= hex2dec('00000054');
    PICO_EXTERNAL_FREQUENCY_INVALID			= hex2dec('00000056');
    PICO_CLOCK_CHANGE_ERROR					= hex2dec('00000057');
	PICO_TRIGGER_AND_EXTERNAL_CLOCK_CLASH   = hex2dec('00000058');
    PICO_PWQ_AND_EXTERNAL_CLOCK_CLASH       = hex2dec('00000059');
    PICO_UNABLE_TO_OPEN_SCALING_FILE        = hex2dec('0000005A');

    PICO_MEMORY_CLOCK_FREQUENCY				= hex2dec('0000005B');
    PICO_I2C_NOT_RESPONDING					= hex2dec('0000005C');

    PICO_NO_CAPTURES_AVAILABLE				= hex2dec('0000005D');
    PICO_NOT_USED_IN_THIS_CAPTURE_MODE	    = hex2dec('0000005E');

    PICO_GET_DATA_ACTIVE					= hex2dec('00000103');
    
    % used by the PT104 (USB) when connected via the Network Socket
    PICO_IP_NETWORKED                       = hex2dec('00000104');
    PICO_INVALID_IP_ADDRESS					= hex2dec('00000105');
    PICO_IPSOCKET_FAILED                    = hex2dec('00000106');
    PICO_IPSOCKET_TIMEDOUT                  = hex2dec('00000107');
    PICO_SETTINGS_FAILED					= hex2dec('00000108');
    PICO_NETWORK_FAILED						= hex2dec('00000109');
    PICO_WS2_32_DLL_NOT_LOADED				= hex2dec('0000010A');	
    PICO_INVALID_IP_PORT					= hex2dec('0000010B');

    PICO_COUPLING_NOT_SUPPORTED				= hex2dec('0000010C');
    PICO_BANDWIDTH_NOT_SUPPORTED			= hex2dec('0000010D');
    PICO_INVALID_BANDWIDTH					= hex2dec('0000010E');

    PICO_AWG_NOT_SUPPORTED					= hex2dec('0000010F');
    PICO_ETS_NOT_RUNNING					= hex2dec('00000110');
	PICO_SIG_GEN_WHITENOISE_NOT_SUPPORTED	= hex2dec('00000111');
	PICO_SIG_GEN_WAVETYPE_NOT_SUPPORTED		= hex2dec('00000112');

    PICO_INVALID_DIGITAL_PORT				= hex2dec('00000113');
    PICO_INVALID_DIGITAL_CHANNEL			= hex2dec('00000114');
    PICO_INVALID_DIGITAL_TRIGGER_DIRECTION	= hex2dec('00000115');

	PICO_SIG_GEN_PRBS_NOT_SUPPORTED			= hex2dec('00000116');

    PICO_ETS_NOT_AVAILABLE_WITH_LOGIC_CHANNELS = hex2dec('00000117');

    PICO_WARNING_REPEAT_VALUE               = hex2dec('00000118');

    PICO_POWER_SUPPLY_CONNECTED             = hex2dec('00000119');
    PICO_POWER_SUPPLY_NOT_CONNECTED         = hex2dec('0000011A');    
    PICO_POWER_SUPPLY_REQUEST_INVALID       = hex2dec('0000011B');
    PICO_POWER_SUPPLY_UNDERVOLTAGE          = hex2dec('0000011C');
    PICO_CAPTURING_DATA                     = hex2dec('0000011D');
    PICO_USB3_0_DEVICE_NON_USB3_0_PORT      = hex2dec('0000011E');
    
    PICO_NOT_SUPPORTED_BY_THIS_DEVICE        = hex2dec('0000011F');
    PICO_INVALID_DEVICE_RESOLUTION           = hex2dec('00000120');
    PICO_INVALID_NO_CHANNELS_FOR_RESOLUTION  = hex2dec('00000121');
    PICO_CHANNEL_DISABLED_DUE_TO_USB_POWERED = hex2dec('00000122');
    
    PICO_SIGGEN_DC_VOLTAGE_NOT_CONFIGURABLE  = hex2dec('00000123');
    
    PICO_NO_TRIGGER_ENABLED_FOR_TRIGGER_IN_PRE_TRIG = hex2dec('00000124');
	PICO_TRIGGER_WITHIN_PRE_TRIG_NOT_ARMED          = hex2dec('00000125');
	PICO_TRIGGER_WITHIN_PRE_NOT_ALLOWED_WITH_DELAY  = hex2dec('00000126');
	PICO_TRIGGER_INDEX_UNAVAILABLE                  = hex2dec('00000127');
    
    PICO_AWG_CLOCK_FREQUENCY                        = hex2dec('00000128');
    % there are more than 4 analogue channels with a trigger condition set
    PICO_TOO_MANY_CHANNELS_IN_USE                   = hex2dec('00000129');
    PICO_NULL_CONDITIONS                            = hex2dec('0000012A');
    PICO_DUPLICATE_CONDITION_SOURCE                 = hex2dec('0000012B');
    PICO_INVALID_CONDITION_INFO                     = hex2dec('0000012C');
    PICO_SETTINGS_READ_FAILED                       = hex2dec('0000012D');
    PICO_SETTINGS_WRITE_FAILED                      = hex2dec('0000012E');
    PICO_ARGUMENT_OUT_OF_RANGE                      = hex2dec('0000012F');
    
    PICO_HARDWARE_VERSION_NOT_SUPPORTED				= hex2dec('00000130');
    PICO_DIGITAL_HARDWARE_VERSION_NOT_SUPPORTED		= hex2dec('00000131');
    PICO_ANALOGUE_HARDWARE_VERSION_NOT_SUPPORTED	= hex2dec('00000132');

    PICO_UNABLE_TO_CONVERT_TO_RESISTANCE			= hex2dec('00000133');
    PICO_DUPLICATED_CHANNEL							= hex2dec('00000134');

    PICO_INVALID_RESISTANCE_CONVERSION              = hex2dec('00000135');
    PICO_INVALID_VALUE_IN_MAX_BUFFER                = hex2dec('00000136');
    PICO_INVALID_VALUE_IN_MIN_BUFFER				= hex2dec('00000137');

    PICO_SIGGEN_FREQUENCY_OUT_OF_RANGE				= hex2dec('00000138');
    
    % The device's EEPROM is corrupt. Contact Pico Technology support: https://www.picotech.com/tech-support.
    PICO_EEPROM2_CORRUPT							= hex2dec('00000139');

    % The EEPROM has failed.
    PICO_EEPROM2_FAIL								= hex2dec('0000013A');

    % The serial buffer is too small for the required information.
    PICO_SERIAL_BUFFER_TOO_SMALL					= hex2dec('0000013B');

    % The signal generator trigger and the external clock have both been set.
    % This is not allowed.
    PICO_SIGGEN_TRIGGER_AND_EXTERNAL_CLOCK_CLASH    = hex2dec('0000013C');

    % The AUX trigger was enabled and the external clock has been enabled, 
    % so the AUX has been automatically disabled.
    PICO_WARNING_SIGGEN_AUXIO_TRIGGER_DISABLED      = hex2dec('0000013D');

    % The AUX I/O was set as a scope trigger and is now being set as a signal generator
    % gating trigger. This is not allowed.
    PICO_SIGGEN_GATING_AUXIO_NOT_AVAILABLE          = hex2dec('00000013E');

    % The AUX I/O was set by the signal generator as a gating trigger and is now being set 
    % as a scope trigger. This is not allowed.
    PICO_SIGGEN_GATING_AUXIO_ENABLED				= hex2dec('00000013F');

    % A resource has failed to initialise 
    PICO_RESOURCE_ERROR								= hex2dec('00000140');

    % The temperature type is out of range
    PICO_TEMPERATURE_TYPE_INVALID					= hex2dec('000000141');

    % A requested temperature type is not supported on this device
    PICO_TEMPERATURE_TYPE_NOT_SUPPORTED				= hex2dec('000000142');

    % A read/write to the device has timed out
    PICO_TIMEOUT									= hex2dec('00000143');

    % The device cannot be connected correctly
    PICO_DEVICE_NOT_FUNCTIONING						= hex2dec('00000144');

    % The driver has experienced an unknown error and is unable to recover from this error
    PICO_INTERNAL_ERROR								= hex2dec('00000145');

    % Used when opening units via IP and more than multiple units have the same ip address
    PICO_MULTIPLE_DEVICES_FOUND						= hex2dec('00000146');

    PICO_WARNING_NUMBER_OF_SEGMENTS_REDUCED 	 	= hex2dec('00000147');

    % The calibration pin states argument is out of range
    PICO_CAL_PINS_STATES							= hex2dec('00000148');

    % The calibration pin frequency argument is out of range
    PICO_CAL_PINS_FREQUENCY							= hex2dec('00000149');

    % The calibration pin amplitude argument is out of range
    PICO_CAL_PINS_AMPLITUDE							= hex2dec('0000014A');

    % The calibration pin wavetype argument is out of range
    PICO_CAL_PINS_WAVETYPE							= hex2dec('0000014B');

    % The calibration pin offset argument is out of range
    PICO_CAL_PINS_OFFSET							= hex2dec('0000014C');

    % The probe's identity has a problem
    PICO_PROBE_FAULT								= hex2dec('0000014D');

    % The probe has not been identified
    PICO_PROBE_IDENTITY_UNKNOWN						= hex2dec('0000014E');

    % Enabling the probe would cause the device to exceed the allowable current limit
    PICO_PROBE_POWER_DC_POWER_SUPPLY_REQUIRED       = hex2dec('0000014F');

    % The DC power supply is connected; enabling the probe would cause the device to exceed the
    % allowable current limit
    PICO_PROBE_NOT_POWERED_WITH_DC_POWER_SUPPLY     = hex2dec('00000150');

    % Failed to complete probe configuration
	PICO_PROBE_CONFIG_FAILURE						= hex2dec('00000151');

    % Failed to set the callback function, as currently in current callback function
	PICO_PROBE_INTERACTION_CALLBACK					= hex2dec('00000152');

    % The probe has been verified but not know on this driver
	PICO_UNKNOWN_INTELLIGENT_PROBE					= hex2dec('00000153');

    % The intelligent probe cannot be verified
	PICO_INTELLIGENT_PROBE_CORRUPT					= hex2dec('00000154');

    % The callback is null, probe collection will only start when 
    % first callback is a none null pointer
    PICO_PROBE_COLLECTION_NOT_STARTED				= hex2dec('00000155');

    % The current drawn by the probe(s) has exceeded the allowed limit
    PICO_PROBE_POWER_CONSUMPTION_EXCEEDED           = hex2dec('00000156');

    % The channel range limits have changed due to connecting or disconnecting a probe
    % the channel has been enabled
    PICO_WARNING_PROBE_CHANNEL_OUT_OF_SYNC          = hex2dec('00000157');
    
    PICO_DEVICE_TIME_STAMP_RESET                    = hex2dec('01000000');
    
    PICO_WATCHDOGTIMER                              = hex2dec('10000000');
    
    % The picoipp.dll has not been found.
    PICO_IPP_NOT_FOUND                				= hex2dec('10000001');

    % A function in the picoipp.dll does not exist.
    PICO_IPP_NO_FUNCTION					        = hex2dec('10000002');

    % The Pico IPP call has failed.
    PICO_IPP_ERROR					                = hex2dec('10000003');

    end
    
end

