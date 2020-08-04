class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :deliveryFee
  belongs_to_active_hash :area
  belongs_to_active_hash :deliveryTime

  belongs_to :user

  has_one_attached :image
  # validates :image, presence: true
  validates :text, presence: true
  validates :name, presence: true
  validates :price, presence: true

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
    validates :deliveryFee_id
    validates :area_id
    validates :deliveryTime_id
  end
end

# has_one :addresses
# has_many :comments
# has_many :item_purchases
