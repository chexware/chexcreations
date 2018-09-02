class ProjectPolicy < ApplicationPolicy
  
  def new?
	not user.blank?
  end
  
  def edit?
    not user.blank?
  end
  
  def create?
    not user.blank?
  end
  
  def update?
    not user.blank?
  end
  
  def delete?
    not user.blank?
  end
  
  def get_vimeo_info?
    not user.blank?
  end
  
  
end