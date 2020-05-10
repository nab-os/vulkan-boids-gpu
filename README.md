# Vulkan Boids GPU

This project is a proof of concept that implements the Boids algorithm with compute shaders using Vulkan.
On my machine, it can handle around 3000 entities.
![Screenshot](/Screenshots/2020-04-29-19_26_55.png)


## Installation


```bash
make
glslangValidator -H -V -o shaders/vert.spv shaders/shader.vert
glslangValidator -H -V -o shaders/frag.spv shaders/shader.frag
glslangValidator -H -V -o shaders/compute.spv shaders/shader.comp
```

## Usage

```
./boids_simulate [boids_number] [visual_range] [repel_distance] [max_speed]
```
