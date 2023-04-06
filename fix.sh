#/bin/bash
numpy_dir=`python -c "import numpy as np; print(np.__path__[0])"`
src=",? or pathlib.Path( instance){0,1}"
dst=", pathlib.Path"

case `uname -s` in
    Darwin*)
        find "$numpy_dir" -name "*.py" -exec sed -i '' -E "s/${src[$i]}/${dst[$i]}/" {} \;
        ;;
    *)
        find "$numpy_dir" -name "*.py" -exec sed -i -E "s/${src[$i]}/${dst[$i]}/" {} \;
        ;;
esac
