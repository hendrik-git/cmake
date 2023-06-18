# cmake

![License](https://img.shields.io/github/license/hendrik-git/cmake?style=for-the-badge)
![Language count](https://img.shields.io/github/languages/count/hendrik-git/cmake?style=for-the-badge)
![File count](https://img.shields.io/github/directory-file-count/hendrik-git/cmake?style=for-the-badge)
![Code size in bytes](https://img.shields.io/github/languages/code-size/hendrik-git/cmake?style=for-the-badge)
![Lines of code](https://img.shields.io/tokei/lines/github/hendrik-git/cmake?style=for-the-badge)

A collection of cmake module scripts to provide various functionality

## What functionality does this repository provide?
- Enables using the CPM package manager for dependencies
- Adds a target for generating documentation with doxygen
- Adds a target for running static analysis
- Adds a target to visualize dependencies with graphviz
- Some other minor functionality


## How to use this repository

Add this repository as a submodule to your code
```
git submodule add https://github.com/hendrik-git/cmake
```
Then add the directory to the cmake module search path
```cmake
# tell cmake to look into the local /cmake subdirectory to look for modules (.cmake)
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)
```
Afterwards it is possible to include a cmake module like this for example:
```cmake
include(graphviz)
include(cmake-format)
include(cmake-lint)
include(cpp_check)

if(BUILD_DOCS)
    include(documentation)
endif()
```