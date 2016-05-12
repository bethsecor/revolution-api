require 'rails_helper'

RSpec.describe Api::V1::LegislatorsController, type: :controller do
  it "show should return a successful response and return a legislator" do
    legislator = Legislator.create(name: "John Smith",
                                   state: "CA",
                                   district: 1,
                                   political_party: "independent",
                                   term_starts_on: DateTime.new(2016, 02, 01),
                                   term_ends_on: DateTime.new(2018, 02, 01))

    get :show, id: legislator.id, format: :json

    expect(response.status).to eq 200

    api_legislator = JSON.parse(response.body)

    expect(api_legislator['id']).to eq legislator.id
    expect(api_legislator['name']).to eq legislator.name
    expect(api_legislator['state']).to eq legislator.state
    expect(api_legislator['district']).to eq legislator.district
    expect(api_legislator['political_party']).to eq legislator.political_party
    expect(api_legislator['term_starts_on']).to eq "2016-02-01"
    expect(api_legislator['term_ends_on']).to eq "2018-02-01"
    expect(api_legislator['created_at']).to eq nil
    expect(api_legislator['updated_at']).to eq nil
  end

  it "creates a legislator and receives a 201 response" do
    legislator_data =
      {
        name: "John Smith",
        state: "CA",
        district: 1,
        political_party: "independent",
        term_starts_on: "2016-02-01",
        term_ends_on: "2018-02-01"
      }

    post :create, format: :json, legislator: legislator_data

    expect(response.status).to eq 201

    api_item_1 = JSON.parse(response.body)

    expect(api_item_1['id']).to eq Legislator.last.id
    expect(api_item_1['name']).to eq "John Smith"
    expect(api_item_1['state']).to eq "CA"
    expect(api_item_1['district']).to eq 1
    expect(api_item_1['political_party']).to eq "independent"
    expect(api_item_1['term_starts_on']).to eq "2016-02-01"
    expect(api_item_1['term_ends_on']).to eq "2018-02-01"
    expect(api_item_1['created_at']).to eq nil
    expect(api_item_1['updated_at']).to eq nil
  end
end
