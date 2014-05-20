# Here's the shuffle stuff.
def shuffle(ary)
  rec_shuffle(ary, [])
end

def rec_shuffle(unshuffled, shuffled)
  # if array is only 0, just return shuffled
  if unshuffled.length <= 0
    return shuffled
  end
  # Determine the length of the unshuffled array
  # and randomly select an index in it.
  # using .sample won't work as we need to be able to delete the index
  random = unshuffled[rand(unshuffled.length)]

  # Now push the random number to shuffled, and delete it from unshuffled
  shuffled.push random
  unshuffled.delete random

  # Now call the method recursively, so it keeps shuffling until
  # unshuffled.length = 0
  rec_shuffle(unshuffled, shuffled)

end

# Find all files in a directory that have a .mp3 format
Dir.chdir '/Users/jdsimms/Documents/test-stuff/playlist'
mp3s = shuffle(Dir['**/*.mp3'])

# The playlist looksup things relative to where it is, so since we're putting it
# in the directory where the mp3's live, we don't need to add the directory structure.
File.open 'playlist.m3u', 'w' do |f|
  mp3s.each do |mp3|
    f.write mp3+"\n"
  end
end
