class Army < ApplicationRecord
    has_many :units
    belongs_to :kingdom
end
