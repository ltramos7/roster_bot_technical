class BotSerializer < ActiveModel::Serializer
  attributes :id, :bot_name, :speed, :strength, :agility
end
