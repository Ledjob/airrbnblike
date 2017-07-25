class Room < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  
  validates :home_type, presence: true  #la variable type d’habitation sera nécessaire pour la création d’une annonce  
               validates :room_type, presence: true
               validates :accommodate, presence: true
               validates :bed_room, presence: true
               validates :bath_room, presence: true
               validates :listing_name, presence: true, length: {maximum: 75} # 75 caractères max  
               validates :summary, presence: true, length: {maximum: 600}
               validates :address, presence: true
               validates :price, numericality: { greater_than: 0.0100 }
               validates :city, presence: true
               
               geocoded_by :address
               after_validation :geocode, if: :address_changed?
end
