class Activity < ApplicationRecord
    has_many :signups, dependent: :destroy #anytime we destroy an activity we destory anything associated with it 
    has_many :campers, through: :signups
end
