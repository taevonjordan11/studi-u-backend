class User < ApplicationRecord
    has_many :studios
    has_many :favorites
    has_many :studios, through: :favorites
end
