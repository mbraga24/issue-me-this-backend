class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :age, :profession, :avatar, :like_issues, :favorites
  has_many :issues
  has_many :skills
end
