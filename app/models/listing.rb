# == Schema Information
#
# Table name: listings
#
#  id              :bigint           not null, primary key
#  title           :string           not null
#  description     :text             not null
#  product         :string           not null
#  location        :string           not null
#  length          :integer          not null
#  creator_id      :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  available_from  :date             not null
#  available_until :date             not null
#
class Listing < ApplicationRecord

    validates :title, :description, :product, :location, :length, :creator_id, :available_from, :available_until, presence: true

    belongs_to :creator,
    foreign_key: :creator_id,
    class_name: 'User'
    
    has_one_attached :hotel_photo
    
end
