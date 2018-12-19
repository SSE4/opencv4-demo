# opencv4-demo

demo for OpenCV 4.0.0, demonstrates applying [Sobel operator](https://en.wikipedia.org/wiki/Sobel_operator) to the image, using regular approach, and new [G-API](https://github.com/opencv/opencv/wiki/OE-23.-Module-GAPI).

demo uses [CMake](https://cmake.org) and [conan](https://conan.io) to build.

if you're not familiar with `conan`, check out the article [Getting Started with conan.io](https://docs.conan.io/en/latest/getting_started.html).

checkout the `conanfile.txt` in order to see how does it declares an OpenCV dependency.

# build instructions:

run the following commands:

```
mkdir build
cd build

conan install -g cmake -s build_type=Release ..
cmake ..
cmake --build .
```

# running the demos:

run the following commands:

```
./sobel
```

or

```
./sobel-gapi
```

output image will be stored as `out.png`.
