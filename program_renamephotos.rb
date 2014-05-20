# Sample script for a windows machine that renames photo filenames

# Change the working director from the script location to where images are stored.
#Dir.chdir 'C:/Documents and Settings/me/PictureInbox'
Dir.chdir '/Users/jdsimms/Documents/test-stuff/photonames'

# Find all of the pictures in the directory and subdirectories
pic_names = Dir['**/*.{JPG,jpg}']
puts 'What would you like to call this batch?'

# Get the name!
batch_name = gets.chomp
puts

print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  File.rename(name, new_name)
  pic_number = pic_number + 1
end
puts
puts "done!"

# TODOs -
# download movies,
# delete from camera,
# extract time and date from file and append to the name
