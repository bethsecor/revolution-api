class Legislator < ActiveRecord::Base
  validates :name, :state, :district, presence: true
end
