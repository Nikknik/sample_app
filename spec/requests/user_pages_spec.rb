require 'spec_helper'

describe "User Pages" do

  subject { page }

  describe "signup page" do
  	before {visit signup_path}

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
    
  end

 describe "profile page" do
  let(:user) { FactoryGirl.create(:user) }

  before { visit user_path(user) }

  it { should have_content(user.name) }
  it { should have_title(user.name) }
 end

 describe "signup page" do
 	before {visit signup_path}

 	let(:submit) {"Create my account"}

 	describe "with invalid information" do
 		before do
 			 click_button submit
 			end
 			it { should_not {change(User, :count)} } 
 		end
 	describe "with valid information" do
 		before do
 			fill_in "Name",      with: "Example User"
 			fill_in "Email",     with: "user@example.com"
 			fill_in "Password",     with: "foobar"
            fill_in "Confirmation", with: "foobar"

            click_button submit
        end

        it { should { change(Uer, :count).by(1) } }

 	end 
 end

end
