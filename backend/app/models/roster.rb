class Roster < ApplicationRecord
  belongs_to :team
  belongs_to :bot, optional: true
end
