class Response < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer
  belongs_to :question
  belongs_to :activity
end
