class WelcomesController < ApplicationController
  # GET /welcomes
  # GET /welcomes.json
  def tfarraj
    @welcomes = Welcome.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @welcomes }
    end
  end

  # GET /welcomes/new
  # GET /welcomes/new.json
  def new
    @welcome = Welcome.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @welcome }
    end
  end
  
  # POST /welcomes
  # POST /welcomes.json
  def create
    @welcome = Welcome.new(params[:welcome])

    respond_to do |format|
      if @welcome.save
        format.html { render action: "new", notice: "done" }
        format.json { render json: @welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcomes/1
  # DELETE /welcomes/1.json
  def destroy
    @welcome = Welcome.find(params[:id])
    @welcome.destroy

    respond_to do |format|
      format.html { redirect_to welcomes_url }
      format.json { head :no_content }
    end
  end
end
