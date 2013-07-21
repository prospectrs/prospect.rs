namespace :assets do

  desc 'Precompile assets'
  task precompile: %w[ haml:parse ] do
    system "bundle exec jekyll build"
  end

end

namespace :haml do

  desc 'Parse haml templates'
  task parse: %w[ haml:includes haml:layouts ]

  desc 'Parse haml includes'
  task :includes do
    puts 'Parsing _includes/haml'
    Dir.chdir('_includes') { parse_haml_files }
  end

  desc 'Parse haml layouts'
  task :layouts do
    puts 'Parsing _layouts/haml'
    Dir.chdir('_layouts') { parse_haml_files }
  end

end

def parse_haml_files
  Dir['haml/*.haml'].each do |input|
    output = "#{ File.basename input, '.haml' }.html"

    puts "  #{ File.basename input }"
    raise "Failed to parse #{ File.expand_path input }" unless system "haml #{ input } #{ output }"
  end
  puts
end

task default: %w[ assets:precompile ]
