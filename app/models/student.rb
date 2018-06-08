class Student < ActiveRecord::Base
  belongs_to :teacher

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  validates :name, :presence => true,
                   :length => { :maximum => 25}
  validates :email, :presence => true,
                    :length => { :maximum => 100},
                    :format => EMAIL_REGEX,
                    :confirmation => true
  validates :learn, :presence => true
  validates :location, :presence => true
  validates :mobile_number, :presence => true

end
