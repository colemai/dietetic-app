class Measurement < ActiveRecord::Base
  belongs_to :user

  validates :height, inclusion: { in: (1.1..3.0), message: "must be entered as a meter value" }

  def bmi
  	bmi = (weight / (height*height)).round(2)
  end

  def req(weight,pal)
  	if gender == "Male"
	  	case age 
	  		when 10...18 then ((18.4*weight +581)*pal)
	  		when 18...30 then ((16.0*weight +545)*pal)
	  		when 30...60 then ((14.2*weight +593)*pal)
	  		when 60...70 then ((13.0*weight +567)*pal)
	  		when 70...120 then ((13.7*weight +481)*pal)
	  	end
  	elsif gender == "Female"
  		case age
  		  when 10...18 then ((11.1*weight +761)*pal)
  		  when 18...30 then ((13.1*weight +558)*pal)
  		  when 30...60 then ((9.74*weight +694)*pal)
  		  when 60...70 then ((10.2*weight +572)*pal)
  		  when 70...120 then ((10.0*weight +577)*pal)
  		end
    end
  end

   
end
