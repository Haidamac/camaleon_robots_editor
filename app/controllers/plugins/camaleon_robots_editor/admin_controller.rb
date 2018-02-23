class Plugins::CamaleonRobotsEditor::AdminController < CamaleonCms::Apps::PluginsAdminController
  include Plugins::CamaleonRobotsEditor::MainHelper


  # show settings form
  def settings
    robots = Plugins::CamaleonRobotsEditor::CamaleonRobotsEditor.new
    @robots_text = robots.read
  end

  # save values from settings form
  def save_settings
    robots = Plugins::CamaleonRobotsEditor::CamaleonRobotsEditor.new
    robots.write params[:robots_content] if params[:robots_content].present?
    redirect_to url_for(action: :settings), notice: 'Settings Saved Successfully'
  end

end
