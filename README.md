# cub3D

A simple raycaster project inspired by Wolfenstein 3D, part of 42 School curriculum.

## Description

This project is a simplified recreation of the Wolfenstein 3D game, which is considered the first FPS ever created. The goal is to create a dynamic view inside a maze using raycasting techniques.

## Features

- 3D rendering using raycasting
- Textured walls with different textures for each direction (North, South, East, West)
- Player movement using W, A, S, D keys
- Camera rotation using left and right arrow keys
- Map parsing from a configuration file
- Customizable floor and ceiling colors

## Requirements

- macOS or Linux
- miniLibX library
- Make

## Installation

```bash
# Clone the repository
git clone https://github.com/rjaada/cub3D.git
cd cub3D

# Compile the project
make
```

## Usage

```bash
# Run the program with a map file
./cub3D maps/simple_map.cub
```

## Map Format

The map file must have a `.cub` extension and follow this format:

```
# Textures
NO ./path_to_the_north_texture.xpm
SO ./path_to_the_south_texture.xpm
WE ./path_to_the_west_texture.xpm
EA ./path_to_the_east_texture.xpm

# Colors (RGB format from 0 to 255)
F 220,100,0    # Floor color
C 225,30,0     # Ceiling color

# Map
        1111111111111111111111111
        1000000000110000000000001
        1011000001110000000000001
        1001000000000000000000001
111111111011000001110000000000001
100000000011000001110111111111111
11110111111111011100000010001
11110111111111011101010010001
11000000110101011100000010001
10000000000000001100000010001
10000000000000001101010010001
11000001110101011111011110N0111
11110111 1110101 101111010001
11111111 1111111 111111111111
```

### Map Elements

- `0`: Empty space
- `1`: Wall
- `N`, `S`, `E`, `W`: Player's starting position and orientation (North, South, East, West)

## Controls

- `W`: Move forward
- `S`: Move backward
- `A`: Move left
- `D`: Move right
- `Left Arrow`: Rotate camera left
- `Right Arrow`: Rotate camera right
- `ESC`: Exit the game

## Project Structure

The project is organized into the following directories:
- `includes/`: Header files
- `src/`: Source code files
  - `parser/`: Map parsing functionality
  - `raycaster/`: Raycasting algorithms 
  - `renderer/`: Drawing and visualization
  - `input/`: User input handling
  - `utils/`: Utility functions
- `maps/`: Sample map files
- `textures/`: Texture files

## Authors

- rjaada & Charlotte - 42 School Students