require 'rails_helper'

RSpec.describe "account_requests/edit", type: :view do
  before(:each) do
    @account_request = assign(:account_request, AccountRequest.create!(
      email: "MyString",
      organization_name: "MyString",
      organization_website: "MyString",
      request_details: "MyText"
    ))
  end

  it "renders the edit account_request form" do
    render

    assert_select "form[action=?][method=?]", account_request_path(@account_request), "post" do

      assert_select "input[name=?]", "account_request[email]"

      assert_select "input[name=?]", "account_request[organization_name]"

      assert_select "input[name=?]", "account_request[organization_website]"

      assert_select "textarea[name=?]", "account_request[request_details]"
    end
  end
end
