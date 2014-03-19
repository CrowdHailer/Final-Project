# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  provider         :string(255)
#  uid              :string(255)
#  name             :string(255)
#  oauth_token      :string(255)
#  oauth_expires_at :datetime
#  created_at       :datetime
#  updated_at       :datetime
#  email            :string(255)
#  verified_maker   :boolean          default(FALSE)
#  github_username  :string(255)
#

require 'spec_helper'

describe 'User' do

  let (:new_user) {
    User.new(name: "John Doe", email: "test@test.com", provider: "github")
  }

  subject { new_user }

  it { should respond_to (:name) }
  it { should respond_to (:email) }
  it { should respond_to (:provider) }
  it { should respond_to (:verified_maker?) }
  it { should respond_to (:github_username) }


  it 'should have an email' do
    expect(new_user.email).to eq("test@test.com")
  end

  it 'should not be a verified maker when created' do
    expect(new_user).not_to be_verified_maker
  end

  it "should be able to become a verified maker" do
    expect(new_user).not_to be_verified_maker
    new_user.confirm_maker
    expect(new_user).to be_verified_maker
  end

  it "should know all the verified makers" do
    user1 = User.create(name: "First User")
    user2 = User.create(name: "Second User")
    user3 = User.create(name: "Third User")
    expect(User.verified_makers).to eq([])
    user1.confirm_maker
    user2.confirm_maker
    expect(User.verified_makers).to eq([user1, user2])
  end

end
