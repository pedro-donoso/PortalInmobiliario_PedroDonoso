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
require "test_helper"

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
