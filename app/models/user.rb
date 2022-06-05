# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :tourbase
  validate :validate_token

  def is_admin?
    is_admin
  end

  def validate_token
    return if token_id.start_with?('us') || token_id.start_with?('ad')

    errors.add(:token_id, 'not registered in system')
  end
end
