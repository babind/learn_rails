class User < ActiveRecord::Base
validates :name, :presence=>true
validates :email, :presence=>true
validates_uniqueness_of :email
validates :password, :length => { :in => 6..20 }
validates :password, :confirmation => true
validates :password_confirmation, :presence => true
attr_accessor :name, :email, :password, :password_confirmation
has_many :microposts

end
