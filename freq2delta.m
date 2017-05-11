function delta = freq2delta(frequency, waveformSize, maxBufferSize, dacFrequency)
% FREQ2DELTA Convert frequency to delta value for PicoScope Arbitrary Waveform Generators.
%   freq2delta(F, W, B, D) converts a frequency value F in hertz into a
%   uint32 delta phase value using the waveform size W, maximum buffer size
%   of the PicoScope device B and DAC Frequency of the Arbitrary Waveform
%   Generator, D.
%
%   F can be any numeric value such as DOUBLE and can be a scalar value or
%   vector of 2 elements corresponding to a start and stop frequency.
%   W should ideally be a signed 16-bit or 32-bit integer, while B and D
%   will be defined by the properties of the PicoScope device being used
%   when using the Instrument Driver, otherwise they should be signed
%   32-bit integers.
%
%   The delta phase value is returned as an unsigned 32-bit integer.
%
%   Copyright: © 2013 - 2015 Pico Technology Ltd. All rights reserved.

    % Validate Input parameters
    
    validateattributes(frequency, {'numeric'}, {'vector', 'real', 'finite', 'nonnegative'});
    validateattributes(waveformSize, {'numeric'}, {'scalar', 'integer', 'positive'});
    validateattributes(maxBufferSize, {'numeric'}, {'scalar', 'integer', 'positive'});
    validateattributes(dacFrequency, {'numeric'}, {'scalar', 'real', 'finite', 'positive'});
    
    % Use only the first two values for frequency if it contains more than
    % 2 elements
    
    if(length(frequency) > 2)
       
        frequency = frequency([1 2]);
        warning('Freq2Delta:TooManyElements', 'First two elements of frequency vector will be used.');
        
    end

    % Calculate the delta phase value
    delta = uint32(((frequency * waveformSize) / maxBufferSize) * ...
        PicoConstants.AWG_PHASE_ACCUMULATOR * (1/dacFrequency));

end

