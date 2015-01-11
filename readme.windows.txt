Command line tool for sending/receiving fax.

Typical command to send fax:
efax.exe -d "/dev/com3" -t 5554723 a4.tif

where:
 - /dev/com3 - modem connected to that port
 - 5554723 - phone number
 - a4.tif - picture (one or more pages) to be send

The picture can be created by e.g. pdf-creator (http://www.pdfforge.org/pdfcreator)

Settings for PDFCreator:
 - save the file in TIF
 - 150dpi
 - 2 color (B&W G3 fax coding with endline)

See readme for more info.

License of this file: Creative Commons license

Created by Gabor Liptak
