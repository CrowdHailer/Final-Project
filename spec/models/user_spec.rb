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


  context 'Empty user validations' do

    let (:empty_user) { User.new }

    [:github_username, :uid, :provider].each do |attribute|
      it "should require a #{attribute}" do
        expect(empty_user).to be_invalid
        expect(empty_user.errors[attribute]).not_to be_empty
      end
    end
    
  end

  context 'Authenticated github user' do

    before(:all) do
      visit "/auth/github"
      @user = User.find_by_github_username('githubME')
    end

    auth_details = {
      provider: 'github',
      uid: '123456789',
      name: 'Mr Test',
      email: 'test@test.com',
      github_username: 'githubME',
      profile_image: 'smile.jpg'
    }

    auth_details.each do |attribute, value|
      it "should have a #{attribute}" do
        expect(@user.send(attribute)).to eq(value)
      end
    end
  
  end
  
  context 'User privileges' do

    before(:each) do
      visit "/auth/github"
      @user = User.find_by_github_username('githubME')
    end

    it 'should not be a verified maker' do
      expect(@user).not_to be_verified_maker
    end

    it "should be able to become a verified maker" do
      @user.confirm_maker
      expect(@user).to be_verified_maker
    end

    it 'should not be an admin' do
      expect(@user).not_to be_admin
    end

    it "should be able to become an admin" do
      @user.make_admin
      expect(@user).to be_admin
    end

  end

  let (:new_user) {
    User.new(name: "John Doe", email: "test@test.com", provider: "github", github_username: 'Dave')
  }

  subject { new_user }

  it { should respond_to (:cohort) }
  it { should respond_to (:seeking_work) }

  it "should know all the verified makers" do
    user1 = User.create(name: "First User",  github_username: 'Dave',   uid: 1, provider: "github")
    user2 = User.create(name: "Second User", github_username: 'Gaston', uid: 2, provider: "github")
    user3 = User.create(name: "Third User",  github_username: 'XXX',    uid: 3, provider: "github")
    expect(User.verified_makers).to eq([])
    user1.confirm_maker
    user2.confirm_maker
    expect(User.verified_makers).to eq([user1, user2])
  end

end



















