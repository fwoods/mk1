class ReviewPhotosController < ApplicationController
  def show
    @review_photo = ReviewPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @review_photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @review_photo = ReviewPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @review_photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @review_photo = ReviewPhoto.find(params[:id])
  end

  def create
    @review_photo = ReviewPhoto.new(params[:review_photo])

    respond_to do |format|
      if @review_photo.save
        format.html { redirect_to @review_photo, notice: 'ReviewPhoto was successfully created.' }
        format.json { render json: @review_photo, status: :created, location: @review_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @review_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @review_photo = ReviewPhoto.find(params[:id])

    respond_to do |format|
      if @review_photo.update_attributes(params[:review_photo])
        format.html { redirect_to @review_photo, notice: 'ReviewPhoto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @review_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @review_photo = ReviewPhoto.find(params[:id])
    @review_photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end
end
