require 'spec_helper'

describe Review do
  before(:each) do 
    iphone_X = Product.create(name: "iPhone X", type_id: 1, model: "A1X00", image_url: "https://static.swappa.com/images/cache/91/de/91dec1893845dad70aa430166070fdf4.png")
    @review = Review.create!(product_id: iphone_X.id, user_id: 1, content: "This is a review about nothing!")
  end

  it 'has content' do
    expect(@review.content).to eq("This is a review about nothing!")
  end
end   

