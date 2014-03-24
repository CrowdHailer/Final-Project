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
#  profile_image    :string(255)
#  cohort           :string(255)
#  seeking_work     :datetime
#  admin            :boolean          default(FALSE)
#  bio              :string(255)
#  twitter          :string(255)
#  linkedin         :string(255)
#

class User < ActiveRecord::Base

  validates :github_username, presence: true
  validates :uid,             presence: true
  validates :provider,        presence: true

  def self.create_with_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.github_username = auth.info.nickname
      user.profile_image = auth.extra.raw_info.avatar_url
      user.email = auth.info.email
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      # user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def confirm_maker
    self.verified_maker = true
    save!
  end

  def make_admin
    self.admin = true
    save!
  end

  def set_as_available
    self.seeking_work = Time.new
    save!
  end

  def seeking_work?
    (seeking_work || Time.new(1970)) > Time.now - 2.weeks
  end

  def self.verified_makers
    User.where(verified_maker: true)
  end

  def github
    Github.new(github_username)
  end

end
