all:
	g++ -c -Iinclude src/Operaciones.cpp -o obj/Operaciones.o
	g++ -c -g -Iinclude src/Main.cpp -o obj/Main.o
	g++ obj/*.o -o bin/Operaciones.bin
clean:
	rm -r obj/*.o
	rm -r bin/*.bin
	rm -r com/mx/eglobal/*.class
	rm -r *.class
so:
	g++ -fPIC -O2 -c src/Operaciones.cpp -g -Iinclude
	g++ -fPIC -O2 -c src/JniOperacionesWrapper.cpp -g -Iinclude -I/usr/lib/jvm/jdk1.7.0_60/include/ -I/usr/lib/jvm/jdk1.7.0_60/include/linux
	g++ -shared *.o -o lib/libJniOperaciones.so
classes:
	javac com/mx/eglobal/JniOperacionesWrapper.java
	javac Main.java