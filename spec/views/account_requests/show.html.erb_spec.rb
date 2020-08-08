require 'rails_helper'

RSpec.describe "account_requests/show", type: :view do
  before(:each) do
    @account_request = assign(:account_request, AccountRequest.create!(
      email: "Email",
      organization_name: "Organization Name",
      organization_website: "Organization Website",
      request_details: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Organization Name/)
    expect(rendered).to match(/Organization Website/)
    expect(rendered).to match(/MyText/)
  end
end
