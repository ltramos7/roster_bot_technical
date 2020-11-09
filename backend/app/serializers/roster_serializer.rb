class RosterSerializer < ActiveModel::Serializer
  attributes :id, :team_id, :starter_one, :starter_two, :starter_three, :starter_four, :starter_five, :starter_six, :starter_seven, :starter_eight, :starter_nine, :starter_ten, :alternate_one, :alternate_two, :alternate_three, :alternate_four, :alternate_five
end
