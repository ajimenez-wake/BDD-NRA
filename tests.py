import os, pathlib
import pytest

os.chdir(pathlib.Path.cwd() / 'tests/step_defs')

pytest.main()
