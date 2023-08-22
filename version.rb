#!/usr/bin/env ruby

# Get the parent directory path
parent_dir = File.dirname(File.dirname(__FILE__))

# Specify the filename within the parent directory
file_to_print = File.join(parent_dir, 'version')

# Check if the file exists and then print its contents
if File.file?(file_to_print)
    File.open(file_to_print, 'r') do |file|
        input = file.read

        # Extract version number and name
        version_number = input.match(/^(\d+\.\d+\.\d+)/)[1]
        version_name = input.match(/"([^"]+)";/)[1]

        # Generate the desired output
        output = "Conteni version #{version_number}: #{version_name}."

        puts output
    end
else
    puts "File not found: #{file_to_print}"
end
