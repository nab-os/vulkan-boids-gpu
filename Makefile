VULKAN_SDK_PATH = /home/user/VulkanSDK/x.x.x.x/x86_64

CFLAGS = -std=c++17 -I$(VULKAN_SDK_PATH)/include
LDFLAGS = -L$(VULKAN_SDK_PATH)/lib `pkg-config --static --libs glfw3` -lvulkan -lpthread -lstdc++

boids_simulation: main.cpp
	g++ $(CFLAGS) -o boids_simulation main.cpp $(LDFLAGS)

.PHONY: test clean

test: boids_simulation
	LD_LIBRARY_PATH=$(VULKAN_SDK_PATH)/lib VK_LAYER_PATH=$(VULKAN_SDK_PATH)/etc/vulkan/explicit_layer.d ./boids_simulation

clean:
	rm -f boids_simulation
