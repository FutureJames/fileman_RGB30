TARGET = FileManagerRGB30 

#DEVICE ?= AMD64
#DEVICE ?= RK3326
#DEVICE ?= RK3399
#DEVICE ?= RK3566 
#DEVICE ?= RK3566 
DEVICE ?= RGB30
#DEVICE ?= RK3566_X55
#DEVICE ?= RK3588
#DEVICE ?= S922X
#DEVICE ?= PC

START_PATH ?= "/storage/roms"
RES_PATH ?= "./res"

CC = $(CXX)
SDL2_CONFIG = sdl2-config

SRC = $(wildcard src/*.cpp)
OBJ = $(patsubst %cpp,%o,$(SRC))
COMPILER_FLAGS =  $(shell $(SDL2_CONFIG) --cflags) -Wall -pedantic -Wfatal-errors -DDEVICE_$(DEVICE) -DSTART_PATH=\"$(START_PATH)\" -DRES_PATH=\"$(RES_PATH)\"
LINKER_FLAGS = $(shell $(SDL2_CONFIG) --libs) -lSDL2_image -lSDL2_ttf

all : clean $(OBJ)
	$(CC) $(OBJ) -o $(TARGET) $(LINKER_FLAGS)

%.o: %.cpp
	$(CC) -c $< -o $@ $(COMPILER_FLAGS)

clean :
	rm -f $(OBJ) $(TARGET)

pack : all
	cp -rf $(TARGET) ./dist/FileManagerRGB30/;

