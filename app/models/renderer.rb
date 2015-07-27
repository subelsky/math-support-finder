# == Schema Information
#
# Table name: renderers
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Renderer < ActiveRecord::Base

  has_many :renderer_versions, dependent: :destroy
  has_many :configurations, through: :renderer_versions

  validates_presence_of :title

  def to_s
    title
  end
end
