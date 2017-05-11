function response = questionDialog(question, title)
% QUESTIONDIALOG Dialog prompting a User to respond 'Yes' or 'No' to a
% question.
%
%   R = questionDialog(Q, T) displays a dialog with question Q and title T 
%   prompting the User to respond 'Yes' or 'No'.
%
%   If 'Yes' is selected, R = 1, otherwise R = 0 if 'No' is selected.
%
%   Copyright: © 2014 - 2015 Pico Technology Ltd. All rights reserved. 
%
%   See also QUESTDLG

    % Prompt User to answer 'Yes' or 'No' to the question.
    choice = questdlg(question, title, 'Yes','No','Yes');

    % Handle response
    switch choice
    
    case 'Yes'
        response = 1; % True
    
    case 'No'
        response = 0; % False
    
    end

end

