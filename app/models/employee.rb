class Employee < ApplicationRecord
   JOB_TITLE = ['CEO','CTO','HR Manager','Junior HR','CIO/Chief Digital Officer/Chief Innovation Officer','VP of Product Management/Head of Product','Product Manager','VP of Marketing','Software Architect','Technical Lead/Engineering Lead/Team Lead','Principal Software Engineer','Senior Software Engineer/Senior Software Developer
','Software Engineer','Software Developer','Junior Software Developer','Intern Software Developer'].freeze



   has_many :documents
   has_one_attached :profile_pick
	validates :first_name, :last_name, presence: true
	validates :personal_email, presence: true, uniqueness: true
	validates :city, :state, :country, :pincode, :address_line_1, presence: true
	validates :mobile_number ,:date_of_birth,:job_title , presence: true
   def name 
   	"#{first_name} #{last_name}".strip
   end	
   
   def full_address
   	"#{address_line_1}, #{city}, #{state},#{country},#{pincode}".strip
   end
   
   def name_with_email
      "#{name}(#{personal_email})"
   end
end
