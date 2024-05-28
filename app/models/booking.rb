# == Schema Information
#
# Table name: bookings
#
#  id             :bigint           not null, primary key
#  user_id        :bigint
#  store_id       :bigint
#  number_of_bags :integer          default(1), not null
#  starts_at      :date
#  ends_at        :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :store, dependent: :destroy

  validates :number_of_bags, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
