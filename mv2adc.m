function values = mv2adc(values, voltageRange, maxValue)
% MV2ADC Converts millivolt values to Analogue to Digital Converter count values.
%   mv2adc(values, voltageRange, maxValue) returns Analogue to Digital
%   Converter count values corresponding to the voltage range selected.
%
%   values - the values in millivolts, (scalar, vector or matrix).
%   voltageRange - the voltage range used for the channel (positive, non-zero integer scalar value, in millivolts).
%   maxValue - the maximum ADC value corresponding to the resolution for the device (positive, non-zero integer scalar value).
%       
%   Copyright: © 2012 - 2015 Pico Technology Ltd. All rights reserved.
%
%   See also adc2mv.

    validateattributes(values, {'numeric'}, {'real', 'finite', 'nonnan'});
    validateattributes(voltageRange, {'numeric'}, {'scalar', 'integer', 'positive'});
    validateattributes(maxValue, {'numeric'}, {'scalar', 'integer', 'positive'});
    
    % Convert value
    values = int32((int32(values) * double(maxValue)) / voltageRange);
    
end

