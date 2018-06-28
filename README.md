# cilkbench
Cilk application benchmark programs.  These benchmark programs have been drawn from various suites, including the Cilk-5 benchmark suite, demonstration Intel Cilk Plus programs, and the Problem-Based Benchmark Suite (PBBS).

## Dependencies

These scripts are designed to be compiled and run using the Tapir/LLVM compiler.  These scripts also require a Cilk runtime-system library.  These scripts also use the `setarch`, `taskset`, `numactl`, and `ionice` commands to quiesce program execution.

## Running the benchmarks

If you have Tapir/LLVM installed on your system, you can run all Cilk application benchmarks using the following command:

    bash ./regressionTest.sh

To run a particular benchmark suite, specify the appropriate command-line flag to `./regressionTest.sh`.  For example, you can run only the PBBS benchmarks as follows:

    bash ./regressionTest.sh -pbbs

You can run an individual test in some suite by running the appropriate `test<suite>.sh` script, as described below.

All scripts can be configured by setting environment variables and passing command-line flags, as described in [Configuration](#configuration).

### Cilk-5 benchmarks

To run one or more Cilk-5 benchmarks, specify the names of the benchmarks as arguments to the `testCilk.sh` script.  For example, you can run the `cholesky` and `strassen` Cilk-5 benchmarks as follows:

    bash ./testCilk.sh cholesky strassen

### Intel benchmarks

To run one or more Intel Cilk Plus example programs, specify the paths to these program directories to the `testIntel.sh` script.  For example, you can run the `Mandelbrot` benchmark as follows:

    bash ./testIntel.sh intel/Mandelbrot_12_17_14/

### PBBS benchmarks

To run one or more PBBS benchmarks, specify the paths to these benchmark directories to the `testPBBS.sh` script.  For example, you can the nondeterministic MIS benchmark as follows:

    bash ./testPBBS.sh pbbs/maximalIndependentSet/ndMIS

## Configuration

In general, all scripts can be configured using a the same environment variables and command-line arguments.  Here is a quick overview of the most common ways to reconfigure the scripts.

#### Path to Tapir/LLVM

You can direct the scripts to use a custom build of Tapir/LLVM.  If you have checked out the Tapir/LLVM source code into `/path/to/tapir` and built it from source into a `build` subdirectory, set the environment variable:

    TAPIR_BASE=/path/to/tapir

If you have a Debug build of Tapir/LLVM in a `build-debug` subdirectory of `/path/to/tapir`, set the environment variables as follows:

    DEBUG=1 TAPIR_BASE=/path/to/tapir

#### Number of Cilk workers

To run tests using specific Cilk worker counts, pass a comma-separated list of worker counts to the `-w=` command-line flag.  For example, you can run all tests using 1, 2, 4, and 8 workers as follows:

    bash ./regressionTest.sh -w=1,2,4,8

#### Number of trials

Specify the number of times to run each test using the `-x=` command-line flag.  For example, you can run each of the PBBS and Cilk-5 tests 10 times as follows:

    bash ./regressionTest.sh -pbbs -cilk -x=10

Similarly, you can run the `cholesky` and `matmul` Cilk-5 tests 3 times each as follows:

    bash ./testCilk.sh -x=10 cholesky matmul

#### Custom compiler and linker flags

To pass additional custom compilation flags to Clang when compiling any benchmark, set the `EXTRA_CFLAGS` environment variable.  Similarly, you can pass additional custom linking flags by setting the `EXTRA_LDFLAGS` environment variable.  These environment variables are useful for applying compiler-based tools to the tests.  For eample, you can run Google's AddressSanitizer tool on all PBBS tests as follows:

    EXTRA_CFLAGS="-fsanitize=address -g" EXTRA_LDFLAGS="-fsanitize=address" bash ./regressionTest.sh -pbbs -x=1 -w=1

Similarly, you can run the Cilksan nondeterminacy detector on the `cholesky`, `lu`, and `heat` Cilk-5 benchmarks as follows:

    EXTRA_CFLAGS="-fsanitize=cilk -g" EXTRA_LDFLAGS="-fsanitize=cilk" bash ./testCilk.sh -x=1 -w=1 cholesky lu heat

These flags can also be used to direct compilation to use a different Cilk runtime-system library.  You can compile all programs to use the CilkR runtime system, for example, as follows:

    EXTRA_CFLAGS="-ftapir=cilkr" EXTRA_LDFLAGS="-ftapir=cilkr" bash ./regressionTest.sh

## Licensing

Unless otherwise stated in a source file or subdirectory, all code in this repository is licensed under the MIT license (see LICENSE).
