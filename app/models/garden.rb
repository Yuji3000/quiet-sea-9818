class Garden < ApplicationRecord
  has_many :plots
  has_many :plants, through: :plots
  def less_than_100
    self.plants.where("days_to_harvest < '100'").distinct
  end
end
