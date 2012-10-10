namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
  end
end

def make_users
  admin = User.create!(firstname: "Example",
                         lastname: "User",
                         email: "example@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)
  99.times do |n|
      firstname  = Faker::Name.first_name
      lastname   = Faker::Name.last_name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(firstname: firstname,
                   lastname: lastname,
                   email: email,
                   password: password,
                   password_confirmation: password)      
  end
end