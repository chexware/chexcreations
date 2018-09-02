class ThoughtPolicy < ApplicationPolicy
  
  def new_thought?
    not user.blank?
  end
  
  def edit_thought?
    not user.blank?
  end
  
  def create_thought?
    not user.blank?
  end
  
  def create_comment?
    not user.blank?
  end
  
  def update_thought?
    not user.blank?
  end
  
  def destroy_thought?
    not user.blank?
  end
  
  def destroy_comment?
    not user.blank?
  end
  
  
end