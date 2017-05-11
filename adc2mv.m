function values = adc2mv(values, voltageRange, maxValue)
% ADC2MV Converts raw Analogue to Digital Converter count values to millivolts.
%   adc2mv(values, voltageRange, maxValue) returns millivolt values
%   corresponding to the Analogue to Digital Converter Count and the
%   voltage range set:
%
%       values - the raw ADC value(s), (scalar, vector or matrix).
%       voltageRange - the voltage range used for the channel (positive, non-zero integer scalar value, in millivolts)
%       maxValue - the maximum ADC value corresponding to the resolution for the device (positive, non-zero integer scalar value)
% 
%   Copyright: © 2012 - 2015 Pico Technology Ltd. All rights reserved.
%
%   See also mv2adc.
    
    % Validate Input parameters
    
    validateattributes(values, {'numeric'}, {'real', 'finite', 'nonnan'});
    validateattributes(voltageRange, {'numeric'}, {'scalar', 'integer', 'positive'});
    validateattributes(maxValue, {'numeric'}, {'scalar', 'integer', 'positive'});
    
    % Convert the value(s)
    values = (double(values) * voltageRange) / maxValue ;
    
end