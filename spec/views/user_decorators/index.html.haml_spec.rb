require 'rails_helper'

RSpec.describe "user_decorators/index", type: :view do
  before(:each) do
    assign(:user_decorators, [
      UserDecorator.create!(
        :first_name => "First Name",
        :family_name => "Family Name",
        :email => "Email"
      ),
      UserDecorator.create!(
        :first_name => "First Name",
        :family_name => "Family Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of user_decorators" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Family Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
