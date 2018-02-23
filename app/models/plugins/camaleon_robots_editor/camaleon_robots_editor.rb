class Plugins::CamaleonRobotsEditor::CamaleonRobotsEditor
  include ActiveModel::Model

  def initialize
    @file_path = Rails.root.join('public/robots.txt')
    File.new(@file_path, "w+") unless File.exist? @file_path
  end

  def read
    file = File.open(@file_path)
    file.read
  end

  def write(content)
    File.open(@file_path, "w+") do |f|
      f.write content
    end
  end
end