class ArticlesController < ApplicationController
  before_filter :authenticate_user!
  before_action :load_articles
  load_and_authorize_resource

  def index
    @articles = Article.all
  end

  private

  def load_articles
    @articles = Article.accessible_by(current_ability)
  end
end
