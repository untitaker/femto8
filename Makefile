TARGET_NAME := femto8
TARGET := build/$(TARGET_NAME)
INCFLAGS += -Isrc -Isrc/data -Isrc/lua
LDFLAGS += 
LIBS += -lpthread
fpic := -fPIC

CFLAGS   += -Wall -DLUA_USE_POSIX -DFRAMEBUFFER $(fpic) $(INCFLAGS) -g
CXXFLAGS += -Wall -DLUA_USE_POSIX -DFRAMEBUFFER $(fpic) $(INCFLAGS) -g

# Source directories
SRC_DIRS := src src/lua src/data

# Create build directories
$(shell mkdir -p build/lua)

# Collect all source files
SOURCES_C := $(wildcard $(addsuffix /*.c, $(SRC_DIRS)))
SOURCES_CXX := $(wildcard $(addsuffix /*.cpp, $(SRC_DIRS)))

# Generate object file paths
OBJECTS := $(patsubst src/%.c,build/%.o,$(SOURCES_C)) $(patsubst src/%.cpp,build/%.o,$(SOURCES_CXX))

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CFLAGS) $(LDFLAGS) $(OBJECTS) -o $@ $(LIBS)

build/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

build/%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)

.PHONY: clean