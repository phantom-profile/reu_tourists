module ApplicationHelper
  def for_elder_only
    current_user.is_elder ? yield : nil
  end
end
