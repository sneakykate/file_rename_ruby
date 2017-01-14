# file_rename_ruby

Simple file renamer script 

To bulk re-name files using this script, place the .rb file in a directory where the other files to be renamed are kept.
Run the script in terminal: `ruby file_rename_ruby.rb`
At the first prompt enter a search query like `*2016_*` to select the files.
At the second prompt enter the text to be inserted before the final part of the file name (or edit the code to insert it somewhere else within the file name). For example, `Invoice`.

With the above inputs, `2016_12_01_Client_Vendor_12345.pdf` file name will become `2016_12_01_Client_Vendor_Invoice_12345.pdf`


