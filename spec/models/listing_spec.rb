require 'spec_helper'

describe Listing do
  before(:each) do 
    @newlisting = Listing.create!(user_id: 1, product_id: 1, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 100.0)
  end

  it 'has a condition' do
    expect(@newlisting.condition).to eq("new")
  end

  it 'has a color' do
    expect(@newlisting.color).to eq("silver")
  end

  it 'has storage info' do
    expect(@newlisting.storage).to eq("16gb")
  end

  it 'has memory info' do
    expect(@newlisting.memory).to eq("4gb")
  end

end   
