#!/usr/bin/env python

import sys

def main():
    try:
        import matplotlib
        import numpy
        import seaborn
        import xarray
        import pandas
        import cartopy
        import dask
        import sklearn
        import scipy
        import netCDF4
        import xmovie
    except Exception as exception:
        print(f"{exception.__class__.__name__ }: {exception}")
        sys.exit(1)
    sys.exit(proc.returncode)

if __name__ == "__main__":
    main()
