class CreateBots < ActiveRecord::Migration[6.0]
  def change
    create_table :bots do |t|
      t.string :bot_name
      t.integer :speed
      t.integer :strength
      t.integer :agility

      t.timestamps
    end
  end
end
