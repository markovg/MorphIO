Install
=======

Dependencies
------------

To build MorphIO from sources, the following dependencies are required:

* cmake >= 3.2
* libhdf5-dev
* A C++11 compiler

Debian:

.. code-block:: shell

   sudo apt install cmake libhdf5-dev

Red Hat:

.. code-block:: shell

   sudo yum install cmake3.x86_64 hdf5-devel.x86_64

Max OS:

.. code-block:: shell

   brew install hdf5 cmake


Install as a C++ library
------------------------

For manual installation:

.. code-block:: shell

   git clone git@github.com:bluebrain/morphio.git --recursive
   cd morphio
   mkdir build && cd build
   cmake ..
   make install

To use the installed library:

.. code-block:: CMake

   find_package(MorphIO REQUIRED)
   target_link_libraries(mylib MorphIO::morphio)


Install as a Python package
---------------------------

The python binding can directly be installed using pip:

.. code-block:: shell

   pip install morphio

Build & Install on Anaconda3 for Windows
--------------------------------

In case you want to do some thing more fancy that pip install the released wheel, you can also build it yourself locally.
You need anaconda3 (installed user local, and setup to work with powershell), VS2022 build tools for C++ and windows 10.

I installed these things in my conda env:
.. code-block:: shell

   conda install hdf5
   conda install conda-build vs2022_win-64 cmake
   pip install scikit-build-core
   conda install -c conda-forge ninja
   pip install h5py



For posterity, I included a dump of my conda environment under: conda_build_environment.yaml

Powershell with your conda environemnt activated:
.. code-block:: shell

   $Env:CMAKE_ARGS = '-DMorphIO_WERROR=true -DMorphIO_CXX_WARNINGS=true -DMORPHIO_TESTS=false -DHDF5_DIR=C:/Users/<username>/anaconda3/envs/<conda-env>/Library/share/cmake/hdf5 -DHDF5_DIFF_EXECUTABLE=C:/Users/<username>/anaconda3/envs/<conda-env>/Library/bin/h5diff.exe -DBUILD_BINDINGS=true -DPYTHON_EXECUTABLE=C:/Users/<username>/anaconda3/envs/<conda-env>/python.exe'
   pip install .

For debugging of the build, as follows:
.. code-block:: shell

   $Env:SKBUILD_BUILD_DIR = "C:\Users\<username>\src\MorphIO\_skbuild"
   pip wheel . -vv
   wheel unpack <output.whl>