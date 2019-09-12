require 'spec_helper'

describe Comment do
  before(:each) do 
    iphone_100 = Listing.create!(user_id: 1, product_id: 1, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 100.0)
    @comment = Comment.create!(listing_id: iphone_100.id, user_id: 1, content: "The item was exactly as described!")
  end

  it 'has content' do
    expect(@comment.content).to eq("The item was exactly as described!")
  end

end   

