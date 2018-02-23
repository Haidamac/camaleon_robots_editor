class Plugins::CamaleonRobotsEditor::AdminController < CamaleonCms::Apps::PluginsAdminController
  include Plugins::CamaleonRobotsEditor::MainHelper

  # show settings form
  def settings
    rf = Plugins::CamaleonRobotsEditor::CamaleonRobotsEditor.new
    @robots_text = rf.read
  end

  # save values from settings form
  def save_settings
    rf = Plugins::CamaleonRobotsEditor::CamaleonRobotsEditor.new
    rf.write params[:robots_content] if params[:robots_content].present?
    redirect_to url_for(action: :settings), notice: 'Settings Saved Successfully'
  end

end
