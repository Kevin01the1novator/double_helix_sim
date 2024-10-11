% displaySequenceInfo.m
function displaySequenceInfo(sequence, sequenceName)
    % Displays information about the DNA sequence
    % Inputs:
    %  - sequence: DNA sequence as a string
    %  - sequenceName: Name or ID for the sequence
    
    % Calculate base counts
    numA = sum(sequence == 'A');
    numT = sum(sequence == 'T');
    numC = sum(sequence == 'C');
    numG = sum(sequence == 'G');
    
    % Total length of the sequence
    totalBases = length(sequence);
    
    % Calculate GC content
    gcContent = ((numG + numC) / totalBases) * 100;
    
    % Create a figure for displaying the information
    fig = uifigure('Name', 'DNA Sequence Information', 'Position', [100, 100, 400, 300]);
    fig.WindowStyle = 'normal';
    
    % Calculate base percentages
    percentA = (numA / totalBases) * 100;
    percentT = (numT / totalBases) * 100;
    percentC = (numC / totalBases) * 100;
    percentG = (numG / totalBases) * 100;
    
    % Determine base composition description
    if gcContent > 60
        baseDescription = 'GC-rich, indicating potential higher stability due to stronger G-C bonds.';
    elseif gcContent < 40
        baseDescription = 'AT-rich, which may result in lower stability compared to GC-rich sequences.';
    elseif abs(percentA - percentT) < 5 && abs(percentC - percentG) < 5
        baseDescription = 'well-balanced with almost equal amounts of A, T, C, and G bases.';
    else
        baseDescription = 'varied in base composition, indicating a mixed content.';
    end
    
    % Format the information text with conditionally descriptive information
    infoText = sprintf(['--- Sequence Information ---\n', ...
                        'Sequence Name: %s\n', ...
                        'Total Bases: %d\n', ...
                        'Base Composition:\n', ...
                        '  A: %d (%.2f%%)\n', ...
                        '  T: %d (%.2f%%)\n', ...
                        '  C: %d (%.2f%%)\n', ...
                        '  G: %d (%.2f%%)\n', ...
                        'GC Content: %.2f%%\n\n', ...
                        '--- Brief Description ---\n', ...
                        'This DNA sequence, named "%s", contains %d bases.\n', ...
                        'It is composed of %.2f%% Guanine (G) and %.2f%% Cytosine (C) bases, indicating that it is %s\n'], ...
                        sequenceName, totalBases, numA, percentA, ...
                        numT, percentT, numC, percentC, ...
                        numG, percentG, gcContent, ...
                        sequenceName, totalBases, percentG, ...
                        percentC, baseDescription);
    
    % Create a text label in the figure to display the information
    infoLabel = uilabel(fig);
    infoLabel.Text = infoText;
    infoLabel.FontSize = 12;
    infoLabel.Position = [10 10 380 280]; % Adjust the position and size for readability
    infoLabel.FontName = 'Courier'; % Use a monospaced font for alignment
    
    % Adjust text wrapping if the text goes beyond the figure height
    infoLabel.WordWrap = 'on';
end