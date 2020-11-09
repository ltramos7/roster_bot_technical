class AddBotsToRosters < ActiveRecord::Migration[6.0]
  def change
    add_column :rosters, :starter_one, :integer
    add_column :rosters, :starter_two, :integer
    add_column :rosters, :starter_three, :integer
    add_column :rosters, :starter_four, :integer
    add_column :rosters, :starter_five, :integer
    add_column :rosters, :starter_six, :integer
    add_column :rosters, :starter_seven, :integer
    add_column :rosters, :starter_eight, :integer
    add_column :rosters, :starter_nine, :integer
    add_column :rosters, :starter_ten, :integer
    add_column :rosters, :alternate_one, :integer
    add_column :rosters, :alternate_two, :integer
    add_column :rosters, :alternate_three, :integer
    add_column :rosters, :alternate_four, :integer
    add_column :rosters, :alternate_five, :integer
  end
end
