class Project < ActiveRecord::Base
  attr_accessible :description, :notes, :title
end
