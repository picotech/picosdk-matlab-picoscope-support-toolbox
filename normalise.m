function x = normalise(x)
% NORMALISE Normalise a vector.
%   Normalise(X) normalises the vector X to the range -1 to +1.
%   
%   This function is meant to be used for a 1 x n or n x 1 array but can be
%   used with matrices. The function can be used to normalise an input
%   signal for a PicoScope arbitrary waveform generator (where supported).
%
%   Based on the normalization function provided by Steve Lord at 
%   <http://www.mathworks.co.uk/matlabcentral/newsreader/view_thread/162772>
%   
%   Additions Copyright © 2015-2017 Pico Technology Ltd. All rights reserved.

    % Validate input
    validateattributes(x, {'numeric'}, {'real', 'finite'});

    % Find the minimum and maximum values
    xmin = min(x(:));
    xmax = max(x(:));
    
    if(abs(xmax) >= abs(xmin))
        
        maxamplitude = abs(xmax);
        
    else
        
        maxamplitude = abs(xmin);
        
    end
    
    if(xmin == xmax)
        % Constant matrix -- I choose to warn and return a NaN matrix
        warning('normalization:constantMatrix', 'Cannot normalise a constant matrix to the range [-1, 1].');
        x = nan(size(x));
    
    else
        
        x = x ./ maxamplitude;
        
    end

end

