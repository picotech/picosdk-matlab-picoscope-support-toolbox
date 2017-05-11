function [f, h] = stopButton()
% STOPBUTTON Displays a stop button.
%   [F, H] = STOPBUTTON() displays a Stop button to check abort data collection - 
%   based on MathWorks solution 1-15JIQ (http://uk.mathworks.com/matlabcentral/answers/100558-how-do-i-set-up-a-uicontrol-callback-to-interrupt-a-routine) and MATLAB Central Forum.
%   F is the handle to the button's figure, H is the uicontrol object.
%
%   Copyright: © 2014 - 2015 Pico Technology Ltd. All rights reserved.
%
%   See also FIGURE, UICONTROL.

    f = figure('Name', 'Stop Button', 'menubar', 'none',...
              'units', 'pix',...
              'pos', [400 400 100 50]);
          
    h = uicontrol('string', 'STOP', ...
                'callback', 'setappdata(gcf, ''run'', 0)', 'units', 'pixels',...
                'position',[10 10 100 30]);

end

