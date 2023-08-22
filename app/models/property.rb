# == Schema Information
#
# Table name: properties
#
#  id           :bigint           not null, primary key
#  user_id      :bigint           not null
#  typeProperty :string
#  category_id  :bigint           not null
#  squareMeters :integer
#  direction    :text
#  contact      :integer
#  available    :boolean          default(TRUE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Property < ApplicationRecord
  #Defino relacion
  belongs_to :user
  belongs_to :category

  # Creo validacion
  validates :typeProperty, presence: true
  validates :category, presence: true
  validates :squareMeters, presence: true
  validates :direction, presence: true
  validates :contact, presence: true
end
