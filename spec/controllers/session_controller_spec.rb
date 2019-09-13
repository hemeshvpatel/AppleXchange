require 'spec_helper'

RSpec.describe SessionsController, type: :controller do
    before do
        User.destroy_all
    end

    let(:jason) {User.create(first_name: "Jason", last_name: "Le", username: "jasonle", password: "cookie", password_confirmation: "cookie")}

    describe 'post create' do
        it 'logs in with existing username and correct password' do
            post :create, params: { user: {username: jason.username, password: jason.password} }
            expect(session[:user_id]).to eq(jason.id)
        end

        it 'redirects to home page if invalid password' do
            post :create, params: { user: {username: jason.username, password: "blah"} }
            expect(response).to redirect_to home_path
        end
    end

    describe 'destroy' do
        it 'clears session[:user_id] if it was set' do 
            post :create, params: { user: {username: jason.username, password: "blah"} }
            post :destroy
            expect(session[:user_id]).to be nil
        end
    end


end