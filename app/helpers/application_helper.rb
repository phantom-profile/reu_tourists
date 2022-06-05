# frozen_string_literal: true

module ApplicationHelper
  def for_elder_only
    current_user.is_admin? ? yield : nil
  end
end
