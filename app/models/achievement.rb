class InThePast < ActiveModel::Validator
  def validate(record)
    record.errors['achieved_at'] << 'It can\'t be in the future' if record.achieved_at > Time.now  
  end
end

class Achievement < ActiveRecord::Base
  validates :title, presence: true

  validates_with InThePast
end
