class Tour < ApplicationRecord
  belongs_to :tourist
  belongs_to :tourbase

  validates_presence_of :tour_starts, :tour_duration_days, :tour_finishes, :tourist
  validates :tour_duration_days, numericality: { :greater_than_or_equal_to => 3 }
  before_validation :count_tour_finishes
  validate :validate_dates

  def count_tour_finishes
    self.tour_finishes = tour_starts + tour_duration_days.days
  end

  def validate_dates
    errors.add(:tour_starts, 'should be today or later') if tour_starts < Date.today
  end
end