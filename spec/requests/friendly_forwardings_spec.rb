require 'spec_helper'

describe "FriendlyForwardings" do
  
  it "should forward to the requested page after signin" do
    user = Factory(:user)
    visit edit_user_path(user)
    #This test automatically follows the redirect to signin.  Hooray!
    fill_in :email,     :with => user.email
    fill_in :password,  :with => user.password
    click_button
    #'Nother redirect.  Integration tests rock.
    response.should render_template('users/edit')
  end
end
