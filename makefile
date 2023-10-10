CC = clang++
CFLAGS = -Wall -std=c++20
TARGET = main
SRC = main.cpp

all: build run

build: $(SRC)
	@fish -c 'echo (set_color blue)"Building the project: compler: $(CC), flags: $(CFLAGS)"(set_color normal)'
	@$(CC) $(CFLAGS) $(SRC) -o $(TARGET)
	@fish -c 'echo (set_color green)"Build completed!"(set_color normal)'

run: $(TARGET)
	@fish -c 'echo (set_color blue)"Running the program:"(set_color normal)'
	@./$(TARGET)
	@fish -c 'echo (set_color green)"Execution completed!"(set_color normal)'

cat:
	@fish -c 'echo (set_color blue)"Printing the source code..."(set_color normal)'
	@bat $(SRC)

clean:
	@rm -rf $(TARGET)
	@fish -c 'echo (set_color green)"Cleaned up!"(set_color normal)'
