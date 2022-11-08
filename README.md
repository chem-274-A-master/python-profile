# Chem 274A - Python Profiling

In this lab, you will be using the molecular simulation code we wrote in Chem 280 - Foundations of Molecular Modelling and Software Engineering and profiling it using `cProfile`.

You can also use a program called `snakeviz` to visualize the profiling.

## Installation

Create an environment with the needed packages by doing

```
make environment
conda activate pyprofile
make dev-install
```

## Profiling Code

This repo contains a script which runs the NumPy version of the Monte Carlo code and the Python Standard Library version of the Monte Carlo code.

Use [cProfile](https://docs.python.org/3/library/profile.html) to profile the code. For example, to profile the NumPy version of the code.

```bash
python -m cProfile mcsim_numpy.py -o numpy.prof
```

You can then view the profiling results using

```
snakeviz numpy.prof
```

Complete this for both the NumPy and Python Standard Library version of your code. If you completed Chem 280, consider profiling your team's code as well.

Use insight obtained from profiling to try to speed up your code. Note that this optimization should not impact the obtained results. 


