class Plot < ApplicationRecord
  belongs_to :genre
  has_many :scenes
  has_many :script_scenes, through: :scenes
  has_many :scripts, through: :script_scenes
end
