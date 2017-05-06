#seed the db with seeds from 'seeds' folder
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }


