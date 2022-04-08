class User < ApplicationRecord
      validates :title, presence: true
      validates :start, presence: true
      validates :end, presence: true
      validate :start_end_check
      validate :date_before_start

    def start_end_check
      return if self.end.blank? || self.start.blank?
      errors[:end] << "は開始日より前の日付は登録できません。" unless
      self.start < self.end
    end
    
    def date_before_start
      return if self.start.blank?
      errors.add(:start, "は今日以降のものを選択してください") if self.start < Date.today
    end
      
end
