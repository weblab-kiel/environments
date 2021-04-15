# environments for weblab

## How to add or modify an env?

1. Fork this repository.
2. Add or modify an environment definition under the `courses/` directory.
3. If any possible, add a notebook that tests the environment. This notebook could contain a very short example that uses the environment and makes sure all imports are possible etc.
4. Create a pull request [here](https://github.com/weblab-kiel/weblab-environments/compare).

If you need help, please [open an issue](https://github.com/weblab-kiel/weblab-environments/issues/new).


## How to deploy?

On weblab, we're running a [TLJH](http://tljh.jupyter.org/) with `nb_conda_kernels` in the central env and dedicated compute envs that can be chosen as kernels. To make sure your env is recognized as a Jupyter kernel, please include the `ipykernel` package in your env. See [this comment](https://github.com/jupyterhub/the-littlest-jupyterhub/issues/429#issuecomment-531301332) for more info.

To create the environment, run:
```shell
sudo -E conda env create -f <path_to_env_file> -n <env_name>
```


## How to test?

There's test notebooks some of the env directories that can be executed (make sure to select the correct kernel!) to see if all desired functionality is present.
