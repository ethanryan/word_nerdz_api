class Scene < ApplicationRecord
  belongs_to :plot
  has_many :script_scenes
  has_many :scripts, through: :script_scenes
end
