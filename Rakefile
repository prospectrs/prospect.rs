namespace :haml do

  desc 'Parse haml layouts'
  task :parse do
    puts 'Parsing Haml includes...'
    system 'cd _includes/haml && for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done'

    puts 'Parsing Haml layouts...'
    system 'cd _layouts/haml && for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done'
    puts 'done.'
  end

end
