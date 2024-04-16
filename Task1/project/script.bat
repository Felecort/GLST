@echo off
setlocal
::set PORT = 8888

REM Create the virtual environment
echo Creating Python virtual environment...
python -m venv .venv


REM Activate the virtual environment
echo Activating virtual environment...
call .\.venv\Scripts\activate.bat


REM Install required packages using pip
echo Installing required packages...
pip install pandas numpy matplotlib ipykernel ipywidgets jinja2 ipympl jupyter


REM open website
start http://localhost:8888/notebooks/Visualization.ipynb


REM Start notebook
jupyter notebook --no-browser --port 8888
