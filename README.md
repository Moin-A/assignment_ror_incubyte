# Calculator Module

This project implements a modular calculator system in Ruby. It includes a base class (`Calculator::Base`) and other specialized calculators like `Calculator::StringCalculator`. The calculator supports parsing and summing numbers from strings with various delimiters.

## Features

- **Custom Delimiters**: Supports custom delimiters specified in the format `//[delimiter]\n[numbers]`.
- **Default Delimiters**: Handles default delimiters like commas (`,`) and newlines (`\n`).
- **Extensible Design**: Built with modularity in mind, allowing easy addition of new calculator types.

## File Structure

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
 
Running Tests
To run all tests, use the following command:

rspec