class StaticPagesController < ApplicationController
  before_action :require_login, only: [:root]

  def root
  end
end
