require 'rails_helper'

RSpec.describe "account_requests/new", type: :view do
  before(:each) do
    assign(:account_request, AccountRequest.new(
      email: "MyString",
      organization_name: "MyString",
      organization_website: "MyString",
      request_details: "MyText"
    ))
  end

  it "renders new account_request form" do
    render

    assert_select "form[action=?][method=?]", account_requests_path, "post" do

      assert_select "input[name=?]", "account_request[email]"

      assert_select "input[name=?]", "account_request[organization_name]"

      assert_select "input[name=?]", "account_request[organization_website]"

      assert_select "textarea[name=?]", "account_request[request_details]"
    end
  end
end
