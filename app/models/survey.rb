class Survey < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 50 }
  validates :age, presence: true
  validates :gender, presence: true, length: { maximum: 20 }
  # validates(:other_string, { presence: true })
  validates :features_like, length: { maximum: 255 }
  validates :features_want, length: { maximum: 255 }

end
