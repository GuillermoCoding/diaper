# == Schema Information
#
# Table name: account_requests
#
#  id                   :bigint           not null, primary key
#  email                :string           not null
#  organization_name    :string           not null
#  organization_website :string
#  request_details      :text             not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
require 'rails_helper'

RSpec.describe AccountRequest, type: :model do
  describe 'validations' do
    subject { FactoryBot.create(:account_request) }

    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }

    it { should validate_presence_of(:request_details) }
    it { should validate_length_of(:request_details).is_at_least(50) }

    # Add validation for format of email
    # Add validation that prevents emails to not exist duplicate between organizations
  end
end
