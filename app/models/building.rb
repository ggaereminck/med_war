class Building < ApplicationRecord
    has_many :building_resources
    belongs_to :kingdom
end
