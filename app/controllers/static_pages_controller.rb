class StaticPagesController < ApplicationController
  def home
  end

  def help
    TestWorker.perform_async('起動!!')
  end

  def about 
  end

  def contact
  end
end
