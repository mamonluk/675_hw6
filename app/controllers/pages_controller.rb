class PagesController < ApplicationController
  def home
    @user=User.new
    @title="Sign up"
  end

  def about
  end
  
  def create
    @title="CREATING"
    @query=(params[:password])

    if @query.to_i == 1
      connection=ActiveRecord::Base.connection();
                 @results=connection.execute("SELECT * FROM users")
    end
  end

end
