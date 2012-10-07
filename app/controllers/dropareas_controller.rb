class DropareasController < ApplicationController
  # GET /dropareas
  # GET /dropareas.json
  def index
    @dropareas = Droparea.all

    respond_to do |format|
      format.html # index.html.erb.erb
      format.json { render json: @dropareas }
    end
  end

  # GET /dropareas/1
  # GET /dropareas/1.json
  def show
    @droparea = Droparea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @droparea }
    end
  end

  # GET /dropareas/new
  # GET /dropareas/new.json
  def new
    @droparea = Droparea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @droparea }
    end
  end

  # GET /dropareas/1/edit
  def edit
    @droparea = Droparea.find(params[:id])
  end

  # POST /dropareas
  # POST /dropareas.json
  def create
    @droparea = Droparea.new(params[:droparea])

    respond_to do |format|
      if @droparea.save
        format.html { redirect_to @droparea, notice: 'Droparea was successfully created.' }
        format.json { render json: @droparea, status: :created, location: @droparea }
      else
        format.html { render action: "new" }
        format.json { render json: @droparea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dropareas/1
  # PUT /dropareas/1.json
  def update
    @droparea = Droparea.find(params[:id])

    respond_to do |format|
      if @droparea.update_attributes(params[:droparea])
        format.html { redirect_to @droparea, notice: 'Droparea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @droparea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dropareas/1
  # DELETE /dropareas/1.json
  def destroy
    @droparea = Droparea.find(params[:id])
    @droparea.destroy
    @vehicle = Vehicle.find(1)

    respond_to do |format|
      format.html { redirect_to edit_post_url(@vehicle) }
      format.json { head :no_content }
    end
  end
end
