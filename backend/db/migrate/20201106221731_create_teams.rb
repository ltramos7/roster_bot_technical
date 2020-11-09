class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
