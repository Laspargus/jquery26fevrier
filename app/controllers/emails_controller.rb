class EmailsController < ApplicationController
  def index
     @emails = Email.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

def update
    @email = Email.find(params[:id])

    if @email.update(read:!@email.read)


      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
  end
end



  def  destroy
  @email = Email.find(params[:id])

  @email.destroy
     respond_to do |format|
        format.html {  redirect_to root_path }
        format.js 
      end
end

end
