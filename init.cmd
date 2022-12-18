@echo off
@set /p MYNAME="Name for ENV: "


if exist %MYNAME% (

echo already exists
call .\%MYNAME%\Scripts\activate

python setup.py
jupyter notebook 

) ELSE (
echo accepted Name

python -m venv %MYNAME%

call .\%MYNAME%\Scripts\activate

python -m pip install --upgrade pip

pip install ipykernel

echo New Name is: %MYNAME%

python -m ipykernel install --user --name=%MYNAME%

pip install jupyter

python setup.py
jupyter notebook 
)