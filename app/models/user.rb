class User < ActiveRecord::Base
    has_many :feedbacks
    has_many :responses

    validates :name, format: { with: /\A[a-zA-Z]{5,8}\z/, message: "only a validate Ericsson user id" }

    before_save do
      self.name = name.upcase
    end
end
