class Word < ApplicationRecord
  validates :name, presence:true
  validates :d_value, presence:true
  validates :i_value, presence:true
  validates :s_value, presence:true
  validates :c_value, presence:true

end
