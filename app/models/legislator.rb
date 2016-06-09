class Legislator < ActiveRecord::Base
  validates :name, presence: true
end
