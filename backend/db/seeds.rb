require 'faker'

Team.delete_all
Bot.delete_all
Roster.delete_all

team_list = []

10.times do 
    team_list << Team.create(
        team_name: Faker::Team.name,
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end

Team.all.each do |team|
    team_list << team
end

bots_list = []

100.times do
    bots_list << Bot.create!(
        bot_name: Faker::Name.name,
        speed: Faker::Number.number(digits:2),
        strength: Faker::Number.number(digits:2),
        agility: Faker::Number.number(digits:2)
    )
end



team_list.each do |team|
    
    Roster.create!(
        team_id: team.id,
        starter_one: Bot.all.sample.id,
        starter_two: Bot.all.sample.id,
        starter_three: Bot.all.sample.id,
        starter_four: Bot.all.sample.id,
        starter_five: Bot.all.sample.id,
        starter_six: Bot.all.sample.id,
        starter_seven: Bot.all.sample.id,
        starter_eight: Bot.all.sample.id,
        starter_nine: Bot.all.sample.id,
        starter_ten: Bot.all.sample.id,
        alternate_one: Bot.all.sample.id,
        alternate_two: Bot.all.sample.id,
        alternate_three: Bot.all.sample.id,
        alternate_four: Bot.all.sample.id,
        alternate_five: Bot.all.sample.id
    )
end
