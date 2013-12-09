class Api::AchievementSerializer < ActiveModel::Serializer
  attributes :id, :title, :achieved_at
end
