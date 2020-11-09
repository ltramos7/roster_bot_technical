class TeamSerializer < ActiveModel::Serializer
  attributes :id, :team_name, :email, :roster
end
