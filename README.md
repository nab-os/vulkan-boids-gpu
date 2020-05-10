# Vulkan Boids GPU

This project is a proof of concept that implements the Boids algorithm with compute shaders using Vulkan.
On my machine, it can handle up to 1 Million entities.
![Screenshot](/screenshots/10000.png)


## Installation


```bash
make
glslangValidator -H -V -o shaders/vert.spv shaders/shader.vert
glslangValidator -H -V -o shaders/frag.spv shaders/shader.frag
glslangValidator -H -V -o shaders/compute.spv shaders/shader.comp
```

## Usage

```
./boids_simulate [boids_number] [visual_range] [repel_distance] [max_speed] [check_reduction]
Check reduction is used to divide the number of checks around each boid.
This is a little hack to allow a big number of boids, but the greater the reduction, the more behavior artifacts will appear. Using a reduction of 1 means that no reduction is used.
```
