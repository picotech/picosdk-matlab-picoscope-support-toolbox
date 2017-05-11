% PICOCONSTANTS Defines constant values to be used with Pico Technology Instrument Drivers.
%   The PicoConstants class defines a number of constant values that
%   can be used to define the properties of an Oscilloscope device such
%   as:
%
%   - Boolean values
%   - Input voltage ranges
%   - Signal generator type, 
%   - Arbitrary Waveform Generator (AWG) buffer size
%   - Oscilloscope buffer memory size 
%   - Sampling rates 
%   - Bandwidth
%   - AWG DAC Frequencies
%
%   Copyright: © 2013 - 2015 Pico Technology Ltd. All rights
%   reserved.

classdef PicoConstants
    
properties(Constant)
    
        % Boolean
        FALSE = 0;
        TRUE  = 1;
        
        % Oscilloscope Input Ranges - defined in milliVolts
        SCOPE_INPUT_RANGES = [10, 20, 50, 100, 200, 500, 1000, 2000, 5000, ...
            10000, 20000, 50000, 100000, 200000];
        
        % Signal Generator Type
        SIG_GEN_NONE      = 0;
        SIG_GEN_FUNCT_GEN = 1;
        SIG_GEN_AWG       = 2;
        
        % AWG Buffer Size (samples)
        AWG_BUFFER_ZERO = 0;
        AWG_BUFFER_4KS  = pow2(12); %4096
        AWG_BUFFER_8KS  = pow2(13); %8192
        AWG_BUFFER_16KS = pow2(14); %16384
        AWG_BUFFER_32KS = pow2(15); %32768
        AWG_BUFFER_48KS = 49152;
        
        % Buffer Sizes (samples)
        BUFFER_MEMORY_ZERO = 0;     
        BUFFER_MEMORY_8KS   = pow2(13);
        BUFFER_MEMORY_16KS  = pow2(14);
        BUFFER_MEMORY_24KS  = 24576;
        BUFFER_MEMORY_32KS  = pow2(15);
        BUFFER_MEMORY_40KS  = 40960;
        BUFFER_MEMORY_48KS  = 49152;
        
        BUFFER_MEMORY_4MS   = pow2(22);
        BUFFER_MEMORY_8MS   = pow2(23);
        BUFFER_MEMORY_16MS  = pow2(24);
        BUFFER_MEMORY_32MS  = pow2(25);
        BUFFER_MEMORY_64MS  = pow2(26);
        BUFFER_MEMORY_128MS = pow2(27);
        BUFFER_MEMORY_250MS = 250 * power(1024, 2);
        BUFFER_MEMORY_256MS = pow2(28);
        BUFFER_MEMORY_512MS = pow2(29);
        BUFFER_MEMORY_1GS = pow2(30);
        BUFFER_MEMORY_2GS = pow2(31);
        
        % Sampling rates (per second)
        MAX_SAMPLING_RATE_ZERO    = 0;
        MAX_SAMPLING_RATE_10MSPS  = 10e6;  %1000000
        MAX_SAMPLING_RATE_20MSPS  = 20e6;  %2000000
        MAX_SAMPLING_RATE_40MSPS  = 40e6;  %4000000
        MAX_SAMPLING_RATE_50MSPS  = 50e6;  %5000000
        MAX_SAMPLING_RATE_80MSPS  = 80e6;  %8000000
        MAX_SAMPLING_RATE_100MSPS = 100e6; %10000000
        MAX_SAMPLING_RATE_125MSPS = 125e6; %12500000
        MAX_SAMPLING_RATE_200MSPS = 200e6; %20000000
        MAX_SAMPLING_RATE_250MSPS = 250e6; %25000000
        MAX_SAMPLING_RATE_400MSPS = 400e6; %40000000
        MAX_SAMPLING_RATE_500MSPS = 500e6; %50000000
        MAX_SAMPLING_RATE_1GSPS   = 1e9;   %100000000
        MAX_SAMPLING_RATE_5GSPS   = 5e9;   %100000000
        
        % Bandwidth definitions
        BANDWIDTH_ZERO   = 0;
        BANDWIDTH_5MHZ  = 5e6;
        BANDWIDTH_10MHZ  = 10e6;
        BANDWIDTH_20MHZ  = 20e6;
        BANDWIDTH_25MHZ  = 25e6;
        BANDWIDTH_50MHZ  = 50e6;
        BANDWIDTH_60MHZ  = 60e6;
        BANDWIDTH_70MHZ  = 70e6;
        BANDWIDTH_100MHZ = 100e6;
        BANDWIDTH_200MHZ = 200e6;
        BANDWIDTH_250MHZ = 250e6;
        BANDWIDTH_350MHZ = 350e6;
        BANDWIDTH_500MHZ = 500e6;
        BANDWIDTH_1GHZ = 1e9;
        
        % AWG DAC Frequencies
        AWG_DAC_FREQUENCY_ZERO   = 0;
        AWG_DAC_FREQUENCY_2MHZ   = 2e6;
        AWG_DAC_FREQUENCY_20MHZ  = 20e6;
        AWG_DAC_FREQUENCY_80MHZ  = 80e6;
        AWG_DAC_FREQUENCY_100MHZ = 100e6;
        AWG_DAC_FREQUENCY_200MHZ = 200e6;
        
        % Phase Accumulator (32 bit)
        AWG_PHASE_ACCUMULATOR = pow2(32); %4294967296.0
        
        % Define Single, Dual, Quad and Octo Analogue Channels   
        SINGLE_SCOPE = 1;
        DUAL_SCOPE   = 2;
        QUAD_SCOPE   = 4;
        OCTO_SCOPE   = 8;
        
        % MSO Oscilloscope Modes
        MODE_ANALOGUE   = 0;
        MODE_DIGITAL    = 1;
        MODE_AGGREGATED = 2;
        MODE_MIXED      = 3;
        
    end
    
end
