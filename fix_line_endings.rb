require "find"

def fix_line_endings(file)
  content = File.read(file)
  File.write(file, content.gsub("\r\n", "\n"))
end

def process_directory(directory)
  Find.find(directory) do |path|
    if File.file?(path) && path.end_with?(".rb")
      fix_line_endings(path)
      puts "Processed: #{path}"
    end
  end
end

dirs = [
  "lib",
  "spec"
]

files = [
  "Gemfile",
  "getting-start-demo2.gemspec"
]

dirs.each do |file|
  process_directory(file)
end

files.each do |file|
  fix_line_endings(file)
end
