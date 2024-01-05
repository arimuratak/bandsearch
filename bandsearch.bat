@echo off
call C:\Users\sadam\anaconda3\condabin\conda activate

for %%j in (Sample, Sample\Zn, Sample\Ni) do (
for /D %%i in (%%j\*) do (
echo folder name: %%i
if exist %%i\file.py (
copy %%i\file.py file.py
copy %%i\ebsd.py ebsd.py

call bandsearch0.bat %%i

copy data0.txt %%i\output\data0.txt
copy data1.txt %%i\output\data1.txt
copy out.rho_theta.txt %%i\output\out.rho_theta.txt
copy LOG_CONOGRAPH.txt %%i\output\LOG_CONOGRAPH.txt
del data0.txt
del data1.txt
del out.rho_theta.txt
del out.pickle
del out.shapes.json
del out.2nd_derivative.tif
del out.*.png
)
echo;
)
)
