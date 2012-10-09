class Plan < ActiveRecord::Base
  attr_accessible :description, :name, :plan_file, :preview_image

  has_attached_file :plan_file
  has_attached_file :preview_image, styles: {medium: "500x300>", thumb: "120x120>"}
end
