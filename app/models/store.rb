# == Schema Information
#
# Table name: stores
#
#  id                 :bigint           not null, primary key
#  name               :string           default(""), not null
#  location           :string
#  address            :text
#  price_per_bag      :float            default(5.0), not null
#  max_number_of_bags :integer          default(0), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Store < ApplicationRecord
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :price_per_bag, presence: true
  validates :max_number_of_bags, presence: true
end
