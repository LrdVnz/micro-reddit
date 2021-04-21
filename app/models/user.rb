class User < ApplicationRecord
has_many :posts 
validates :name, presence: true, length: { in: 3..20 }, uniqueness: true
validates :email, presence: true, length: { in: 3..20 }, uniqueness: true
end
