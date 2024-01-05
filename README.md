Band Search Program

1. Back Ground

   EBSD (Electronic Back Scattering Diffraction Pattern) method is developed in 1st half of 1990 as the technical method to observe the material’s micro component structure. It is the method to measure the crystal orientation and judge crystal system of the area observed, using the indexing result from EBSD pattern obtained by SEM’s scanning the material’s surface.

2. Outline

   EBSDBandSearch version 1.0 is a group of programs to execute band-search of EBSD image.
   Our EBSD analysis system separated by 2 steps as in below and this program is for Step 1.

   Step 1: Band Search
   Step 2：Indexing (here) (using output result Step 1)

   EBSDBandSearch program detects the bands from EBSD image, calculates combination (ρ,θ)(ρ:distance of band line from image origin, θ: angle of band line ) of all detected bands, convert them to spherical coordinate system which will be used in indexing program (Step 2) and outputs the result to the 2 text files (data0.txt and data1.txt).

3.	Preparation

  	OS : Windows10 or 11 /
  	Environment of programming Python code: Anaconda, Python 3.10 or later /
  	Library : scikit-image, numpy, matplotlib

5. How to use
   1) Download the programs and install them in your PC.
   2) Put your EBSD image file and 'output' folder under ‘Sample’ folder with the strucure as shown in the pdf (https://github.com/arimuratak/bandsearch/blob/main/pictures/folder_structure.pdf). EBSD image formats of png, jpg and tif are available.
   3) Put files of ebsd.py & file.py in same folder as EBSD image file.
      ・file.py (put EBSD image file path)　file = ???????/filename.png (or jog, tif)
      ・ebsd.py (put information of EBSD image)
   5) Change bansdsearch.bat and save it as shown in below:
