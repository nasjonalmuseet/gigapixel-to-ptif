# Gigapixel to pyramid tif for IIIF
Convert any image file, specifically large .psb files, to pyramidic tiff for IIIF server.

Use:
- put .bat file in suitable location on Windows pc
- drag-and-drop input image file onto .bat file
- output file will appear in location specified in .bat file
- move your output file(s) to a IIIF server at your leisure

Requirements:
- libvips on Windows. Tested with version 8.16.0
- make sure you have added libvips to PATH in Windows
- ImageMagick is included in libvips on Windows. (If you want to do this on Linux, do a separate install of ImageMagick.)
- Lots of RAM - min 16GB
- Enough free disk space (at least 100G), depending on file size

Input files:
- can be any image file, but should be prepared with right colour profile (sRGB)

Testing:
- this script has been tested with input files at approx 110 000 x 70 000 px, which took 30 mins to process on a 32GB RAM PC.
