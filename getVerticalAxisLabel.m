function [label] = getVerticalAxisLabel(unit)
% getVerticalAxisLabel Obtain a label to use on a vertical axis of a plot.
%   getVerticalAxisLabel(X) returns a suitable label for the vertical axis
%   on a plot based on the unit X which should be one of the following:
%
%   * A - amps
%   * mV - millivolts
%   * V - volts
%
%   Copyright © 2019 Pico Technology Ltd. All rights reserved.

    validateattributes(unit, {'char'}, {'scalartext', 'nonempty'});
    
    switch (unit)
        
        case 'A'
            label = 'Current (A)';
            
        case 'mV'
            label = 'Voltage (mV)';
            
        case 'V'
            label = 'Voltage (V)';
            
        otherwise
            error('Picotech:PSTbx:getVerticalAxisLabelInvalidArg', ...
                ['getVerticalAxisLabel: Invalid unit specified - use '...
                'A (Amps), mV (millivolts) or V (Volts).']);
    end

end

