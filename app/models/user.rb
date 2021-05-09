# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  email           :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company         :string           not null
#  location        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#
class User < ApplicationRecord

    validates :username, :email, :session_token, presence: true, uniqueness: true
    validates :company, :location, :password_digest, presence: true
    validates :password, length: {minimum: 6}, allow_nil: true

    attr_reader :password
    after_initialize :ensure_session_token  # after initialize an instance of user, run function ensure_session_token
    # before_validation :ensure_session_token

    # SPIRE
    # self.find_by_credentials
    # password=
    # is_password?
    # reset_session_token!
    # ensure_session_token

    def password=(password) # gets run during User.new
        self.password_digest = BCrypt::Password.create(password)    # sets password_digest to hashed value
        @password = password
    end

    def ensure_session_token
        self.session_token ||= SecureRandom::urlsafe_base64     # generates random string and sets session_token
    end

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        if user && user.is_password?(password)
            user
        else
            nil
        end
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)   # this is_password? is from BCrypt library
    end

    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save!
        self.session_token
    end

    has_many :listings,
    foreign_key: :creator_id,
    class_name: 'Listing'
    
end
