User.destroy_all
Event.destroy_all

plumber = User.create!(username: "bobbybro", first_name: "bobby", last_name: "bro", email: "bobby@bobby.com", password: "password", password_confirmation: "password", role: "plumber", rate: 200, company_name: "bobbiesplumbers", borough: "Kingston", image:"http://fillmurray.com/200/200", bio: "Hi, I'm bobby and I'm a plumber")

client = User.create!(username: "kennyken", first_name: "kenny", last_name: "ken", email: "kenny@kenny.com", password: "password", password_confirmation: "password", role: "client", image:"http://fillmurray.com/200/200")

event = Event.create!(title: "Fixing my boiler", startsAt: Date.new(2016,9,18), endsAt: Date.new(2016,9,18), client_id: client.id, plumber_id: plumber.id)
