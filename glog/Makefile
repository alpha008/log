src = $(wildcard *.cpp)
src := $(filter-out cJSON.c, $(src))
targets = $(patsubst %.cpp, %, $(src))
INCLUDE = 
CC = g++
#标志位置中有些需要加上带上开源源文件一起编译
CFLAGS =  -g   -DDEBUG
#-Wall
#g++ test_main.cpp ./lib/libglog.a -I./include  -std=c++11 -DDEBUG -lpthread -o sample
LIBS  = -lm -lstdc++  -lpthread    -lglog
all:$(targets)
$(targets):%:%.cpp
	$(CC) $(INCLUDE) $(CFLAGS)  $< -o $@ $(LIBS)

.PHONY:clean all
clean:
	-rm -rf $(targets) 
