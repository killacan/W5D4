# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

    has_many :enrollments, 
        primary_key: :id, 
        foreign_key: :student_id,
        class_name: :Enrollment

    has_many :enrolled_courses,
         through: :enrollments,
         source: :courses

    has_many :courses_to_teach,
        primary_key: :id, 
        foreign_key: :instructor_id, 
        class_name: :Course

end

#foreign key table BELONGS TO the other table go
#when you make a belongs to it automatically validates the foreign id

#shortcut cheat:
