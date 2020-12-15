def create_users
  puts 'Creating users...'

  @users = FactoryBot.create_list(:user, 25)
end

puts 'The populating of a database had started!'

create_users

puts 'Done!'
