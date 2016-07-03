class Measurement < ActiveRecord::Base
  belongs_to :user

  validates :height, inclusion: { in: (1.1..3.0), message: "must be entered as a meter value" }

  def bmi
  	bmi = (weight / (height*height)).round(2)
  end

  def req
  	req = ()
  end

   
end
