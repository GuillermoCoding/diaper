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
class AccountRequest < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :request_details, presence: true, length: { minimum: 50 }
end
