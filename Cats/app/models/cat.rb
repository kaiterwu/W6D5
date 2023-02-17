# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "action_view"
include ActionView::Helpers::DateHelper

class Cat < ApplicationRecord

    CAT_COLORS = ["black"]
    VALID_SEXES = ["M","F"]
    validates :birth_date, :color, :name, :sex, presence: true 
    validates :color, inclusion: { in: CAT_COLORS }
    validates :sex, inclusion: { in: VALID_SEXES }
    validate :birth_date_cannot_be_future


    def birth_date_cannot_be_future
        errors.add(:birth_date, "can't be in the future") if birth_date > Date.today
     end 

     def age 
        time_ago_in_words(birth_date)
     end 

end 
