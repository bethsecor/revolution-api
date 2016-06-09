class Legislator < ActiveRecord::Base
  validates :name, :state, :district, :political_party, presence: true
end
