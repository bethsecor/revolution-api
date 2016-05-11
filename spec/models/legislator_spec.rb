require 'rails_helper'

RSpec.describe Legislator, type: :model do
  it "should be create valid legislator" do
    legislator = Legislator.new(name: "John Smith",
                                   state: "CA",
                                   district: 1,
                                   political_party: "independent",
                                   term_starts_on: DateTime.new(2016, 02, 01),
                                   term_ends_on: DateTime.new(2018, 02, 01))
                                   
    expect(legislator.valid?).to be true
  end
end
