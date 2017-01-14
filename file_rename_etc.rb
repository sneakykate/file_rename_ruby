puts "Enter the file search query"
searchPattern = gets.strip
puts "Enter the text to insert"
newTarget = gets.strip

Dir.glob(searchPattern).sort.each do |entry|
	if File.basename(entry, File.extname(entry)).include?(newTarget)
    # separate file into pieces based on _
    splitEntry = entry.split('_')

    #how many pieces are there
    pieces = splitEntry.length
    
      #before the last piece, insert the text
      inserting = splitEntry.insert(-2, newTarget)

      # put the pieces back into a single file name
      newEntry = inserting.join('_')

      #rename the file with the new file name
      File.rename( entry, newEntry )

      puts "Rename from " + entry + " to " + newEntry
  end
end