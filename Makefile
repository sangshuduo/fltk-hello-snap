hello:
	g++ `fltk-config --cxxflags` hello.cpp  -lX11 -ldl -lXext -lXinerama -lXft -lfontconfig -lfltk -o hello

install:
	install -d -m755  $(DESTDIR)/bin/
	install -m755 ./hello $(DESTDIR)/bin/hello

clean:
	rm hello
