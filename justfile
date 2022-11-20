setup-python-environment:
    #!/usr/bin/env bash
    pipx install pip-tools
    python -m venv .venv_try-stlite
    source .venv_try-stlite/bin/activate
    python -m pip install --upgrade pip
    pip-compile requirements-dev.in
    pip install -r requirements-dev.txt
    ipython kernel install --name ".venv_try-stlite" --user
    echo  
    echo source .venv_try-stlite/bin/activate
    echo 
