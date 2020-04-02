# environments for weblab

## How to deploy?

On weblab, we're running a [TLJH](http://tljh.jupyter.org/) with `nb_conda_kernels` in the central env and dedicated compute envs taht can be chosen as kernels. To make sure your env is recognized as a Jupyter kernel, please include the `ipykernel` package in your env. See [this comment](https://github.com/jupyterhub/the-littlest-jupyterhub/issues/429#issuecomment-531301332) for more info.

To create the environment, run:
```shell
sudo -E conda create env -f <path_to_env_file> -n <env_name>
```

## How to test?

There's notebooks in [`test_notebooks/`](test_notebooks/) that can be executed (make sure to select the correct kernel!) to see if all desired functionality is present.
