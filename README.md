# jupyter_ascending.vim

Vim plugin to interact with `jupyter_ascending`
Currently only supports Jupyter Notebook.

![Jupyter Ascending](./media/simple_jupyter_ascending.gif)


## Installation

First, you must install [jupyter_ascending](https://github.com/quantum-booty/jupyter_ascending) in the python envirenment you're working in. For example:
```bash
$ pyenv activate my_notebook_env
$ pip install jupyter_ascending
```

It is possible you won't need to run the following commands on newer version of jupyter notebook, but it's recommended that you do anyway, because installing extensions is hard.
```bash
$ jupyter nbextension install --py --sys-prefix jupyter_ascending
$ jupyter nbextension     enable jupyter_ascending --sys-prefix --py
$ jupyter serverextension enable jupyter_ascending --sys-prefix --py
```

You can confirm it's installed by checking:
```bash
$ jupyter nbextension     list
$ jupyter serverextension list
```

Then install this plugin using the vim plugin manager you like. For example:

```
Plug 'untitled-ai/jupyter_ascending.vim'
```

## Usage
1) First create a Jupyter notebook notebook_name.synced.ipynb.
2) Then generate a notebook_name.synced.py file using [jupytext](https://github.com/mwouts/jupytext) using "percent format".
3) Jupyter Ascending will update the .synced.ipynb every time .synced.py is saved. 
4) Send commands to Jupyter notebook via the following mappings:

Execute cell
```vim
nmap <space><space>x <Plug>JupyterExecute
```

Execute all cells
```vim
nmap <space><space>X <Plug>JupyterExecuteAll
```

Use `# %%` to separate cells.


## Settings
See `doc/jupyter_ascending.txt` for more information.
