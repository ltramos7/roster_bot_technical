class Bot < ApplicationRecord
    has_one :roster
    has_one :team, through: :roster
end
