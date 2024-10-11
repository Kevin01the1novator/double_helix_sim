
# DNA Double Helix Visualization Project

## Overview
This project simulates and visualizes a DNA double helix structure in MATLAB. It generates a random DNA sequence, displays it in a 3D double helix form, and provides detailed information about the sequence, such as base composition and GC content, in a graphical window. The project aims to provide a visual and analytical tool for understanding DNA sequences and their characteristics.

## Files
The project contains the following main files:
- **generateRandomDNA.m**: Generates a random DNA sequence of specified length.
- **visualizeDNAHelix.m**: Visualizes the DNA double helix structure in 3D based on the generated DNA sequence.
- **plotHelixStrands.m**: Plots the backbone of the DNA double helix with smooth interpolation.
- **plotBasePairs.m**: Plots the nitrogenous base pairs between the strands, with color-coding based on the base type.
- **displaySequenceInfo.m**: Displays detailed information about the DNA sequence, including base composition, GC content, and a brief description, in a graphical figure window.
- **README.md**: Documentation file describing the project and how to use it.

## Requirements
- MATLAB (R2018b or newer recommended)
- MATLAB's uifigure functionality (available in MATLAB R2018b or newer)

## Installation
1. Clone the repository to your local machine:
   ```bash
<<<<<<< HEAD
   git clone https://github.com/your-username/DNA-Double-Helix-Visualization.git
=======
   git clone https://github.com/Kevin01the1novator/double_helix_sim.git
>>>>>>> 70f6d05894e2c59c4395e2b6d69ce0f057a75182
   ```
2. Open MATLAB and set the current directory to the location of the cloned repository.

## Usage
1. **Generate and Visualize a DNA Sequence**:
   - Define the number of base pairs you want to visualize.
   - Generate a random DNA sequence with the `generateRandomDNA` function.
   - Use the `visualizeDNAHelix` function to display the DNA double helix structure.
   
   Example:
   ```matlab
   numBases = 30; % Number of base pairs
   sequence = generateRandomDNA(numBases);
   sequenceName = 'Sample_DNA_Sequence';
   
   visualizeDNAHelix(numBases);
   displaySequenceInfo(sequence, sequenceName);
   ```

2. **Function Descriptions**:
   - **generateRandomDNA(numBases)**:
     - Generates a random DNA sequence with the specified number of base pairs.
     - Parameters:
       - `numBases`: Number of base pairs to generate.
     - Returns:
       - A string representing the DNA sequence.
     
   - **visualizeDNAHelix(numBases)**:
     - Creates a 3D visualization of the DNA double helix based on the input sequence length.
     - Parameters:
       - `numBases`: Number of base pairs in the DNA sequence.
     - Displays:
       - A 3D plot of the DNA structure, with strands and base pair connections.
     
   - **plotHelixStrands(x1, y1, z, x2, y2)**:
     - Plots the DNA backbone with smooth interpolation.
     - Parameters:
       - `x1, y1, z`: Coordinates for the first strand.
       - `x2, y2, z`: Coordinates for the second strand.
       
   - **plotBasePairs(sequence, x1, y1, z, x2, y2, step)**:
     - Plots base pairs between the DNA strands with color-coded lines.
     - Parameters:
       - `sequence`: DNA sequence as a string.
       - `x1, y1, z`: Coordinates for the first strand.
       - `x2, y2, z`: Coordinates for the second strand.
       - `step`: Interval for visualizing base pairs (e.g., every 1, 10, etc.).
       
   - **displaySequenceInfo(sequence, sequenceName)**:
     - Displays detailed information about the DNA sequence in a figure window.
     - Parameters:
       - `sequence`: DNA sequence as a string.
       - `sequenceName`: Name or ID for the sequence.
     - Outputs:
       - A figure window with details such as base composition, GC content, and a brief description.

## Example Output
Running the example code in the Usage section will:
1. Open a 3D visualization of a DNA double helix with color-coded base pairs.
2. Open another figure window displaying the details of the sequence, such as the sequence name, base composition, GC content, and a brief description of the sequence characteristics.

## License
<<<<<<< HEAD
This project is licensed under the MIT License. See the LICENSE file for details.
=======
This project is licensed under the MIT License. 
>>>>>>> 70f6d05894e2c59c4395e2b6d69ce0f057a75182

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your changes. For significant changes, please open an issue to discuss your ideas before contributing.

## Contact
<<<<<<< HEAD
For questions, feel free to reach out at your-email@example.com.
=======
For questions, feel free to reach out at khoile0251@gmail.com

>>>>>>> 70f6d05894e2c59c4395e2b6d69ce0f057a75182
