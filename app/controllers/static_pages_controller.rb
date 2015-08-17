class StaticPagesController < ApplicationController
  before_action :require_login, only: [:root]

  def root
  end

  def landing_page
  end
end
