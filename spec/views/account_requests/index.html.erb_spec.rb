require 'rails_helper'

RSpec.describe "account_requests/index", type: :view do
  before(:each) do
    assign(:account_requests, [
      AccountRequest.create!(
        email: "Email",
        organization_name: "Organization Name",
        organization_website: "Organization Website",
        request_details: "MyText"
      ),
      AccountRequest.create!(
        email: "Email",
        organization_name: "Organization Name",
        organization_website: "Organization Website",
        request_details: "MyText"
      )
    ])
  end

  it "renders a list of account_requests" do
    render
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Organization Name".to_s, count: 2
    assert_select "tr>td", text: "Organization Website".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
