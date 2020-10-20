class User < ApplicationRecord
    has_many :studios
    has_many :favorites
end
