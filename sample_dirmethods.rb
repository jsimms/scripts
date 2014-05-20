
# Search current working directory for...
Dir['filename.txt'] # filename.txt
Dir['*.jpg'] # all files ending in .jpg
Dir['*.{JPG,jpg}'] # all files ending in .jpg regardless of case

# Search in the parent directory
Dir['../*.{JPG,jpg}']

# Search in current directory and all subdirectories
Dir['**/*.{JPG,jpg}']

Dir.chdir[/newdir/]
