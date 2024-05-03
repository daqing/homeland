class NavLink < ApplicationRecord
  def self.sorted
    order("position ASC, created_at ASC")
  end

  def self.header
    where(section: "header").sorted
  end
end
