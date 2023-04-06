# Fix PyCharm's NumPy Typehints

If you are annoyed by PyCharm's complain about `np.open` expecting `str` but not `pathlib.Path`, use this script.

## Usage

1. Make sure you have activated the correct Python environment.
2. Make sure you have write access to the package's directory.
3. Run the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Lodour/fix-pycharm-numpy-typehints/main/fix.sh)"
```

## How it works

This issue was initially reported in [PY-48807](https://youtrack.jetbrains.com/issue/PY-48807/False-negative-inspections-when-type-hint-contains-logical-operators).

Essentially PyCharm cannot parse NumPy's docstring about "str or pathlib.Path instance" vs. "str, pathlib.Path".

This script uses `sed` to remove "or" and "instance" from the docstring in NumPy's source files.
