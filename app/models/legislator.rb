class Legislator < ActiveRecord::Base
  validates :name,
            :state,
            :district,
            :political_party,
            :term_starts_on,
            presence: true
            
  validates :district, numericality: { only_integer: true }
end
