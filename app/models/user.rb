class User < ApplicationRecord
  def self.find_or_create_from_auth(auth)
    provider = auth[:provider]
    provider_uid = auth[:uid]
    nickname = auth[:info][:nickname]
    image_uri = auth[:info][:image]

    find_or_create_by(provider: provider, provider_uid: provider_uid) do |user|
      user.nickname = nickname
      user.image_uri = image_uri
    end
  end
end
