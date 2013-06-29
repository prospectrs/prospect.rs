class ApplicationController < ActionController::Base
  protect_from_forgery

  def homepage
    render layout: "homepage", text: "Moosetits"
  end

  def subpage
    render layout: "subpage", text: "Moosetits"
  end
end
