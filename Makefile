all:
	@if [ ! -d build ]; then mkdir build; fi; rm -rf build/*

	@echo "Building Java code."
	@javac -d build -h build Main.java

	@echo "Building C code."
	@gcc hello.c -o build/libhello.so -shared -fPIC -I /usr/lib/jvm/java-12-openjdk-amd64/include -I /usr/lib/jvm/java-12-openjdk-amd64/include/linux

clean:
	@rm -rf build
	@echo "Cleaned project."

run:
	@java -cp $(CURDIR)/build -Djava.library.path=build Main
