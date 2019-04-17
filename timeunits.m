function timeUnitsStr = timeunits(timeUnit)
% TIMEUNITS Returns a string representation of the time unit index.
%   adcunits(timeUnits) returns a string corresponding to the time unit index provided after
%   incrementing the index by 1.
%   
%   timeUnit can be one of the following:
%       
%       -1: ADC counts
%        0: Femtoseconds
%        1: Picoseconds
%        2: Nanoseconds
%        3: Microseconds
%        4: Milliseconds
%        5: Seconds
%
%   Applies only to the PicoScope 2000 Series devices using the ps2000 
%   driver API functions.
%
%   Copyright: © 2013-2019 Pico Technology Ltd. All rights reserved.

    % Validate input argument
    validateattributes(timeUnit, {'numeric'}, {'scalar', 'integer', '>=', -1, '<=', 6});
    
    timeUnit = timeUnit + 1;
    
    switch(timeUnit)
        
        case 0
            
            timeUnitsStr = 'ADC';
            
        case 1
            
             timeUnitsStr = 'fs';
             
        case 2
            
             timeUnitsStr = 'ps';
            
        case 3
            
             timeUnitsStr = 'ns';
             
        case 4
            
             timeUnitsStr = 'us';
             
        case 5
            
             timeUnitsStr = 'ms';
             
        case 6
            
            timeUnitsStr = 's';
             
        otherwise
            
            timeUnitsStr = 'Not Known';

    end
    
end

