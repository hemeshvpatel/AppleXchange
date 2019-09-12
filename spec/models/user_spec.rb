require 'spec_helper'

describe User do
    before(:each) do
        @jason = User.create(first_name: "Jason", last_name: "Le", username: "jasonle", password: "cookie", password_confirmation: "cookie", balance: 1000)
    end

    it 'has a full name' do
        expect(@jason.full_name).to eq("Jason Le")
    end

    it 'has a starting balance of $1000' do
        expect(@jason.balance).to eq(1000)
    end
end