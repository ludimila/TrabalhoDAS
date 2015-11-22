class AnimalsController < ApplicationController
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper

  has_scope :by_breed
  has_scope :only_available, :type => :boolean, allow_blank: false
  # GET /animals
  # GET /animals.json
  def index(filter=nil)
    @animals = Animal.all.sort_by{|e| e[:name]}

    @filtered = apply_scopes(Animal).all.sort_by{|e| e[:name]}
    @available = @filtered.find_all { |animal| animal.adopted == true }

    # @filtered = Animal.where(nil)
    # filtering_params(params).each do |key, value|
    #   @filtered = @filtered.public_send(key, value) if value.present?
    # end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @filtered }
    end
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
    @animal = Animal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @animal }
    end
  end

  # GET /animals/new
  # GET /animals/new.json
  def new
    @animal = Animal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @animal }
    end
  end

  # GET /animals/1/edit
  def edit
    @animal = Animal.find(params[:id])
  end

  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(params[:animal])

    respond_to do |format|
      if @animal.save
        # Tell the ReportMailer to send a report email after save
        # ReportMailer.sharingPetMail(@animal).deliver
        format.html { redirect_to @animal, notice: 'Pet was successfully created.' }
        
        format.json { render json: @animal, status: :created, location: @animal }
      else
        format.html { render action: "new" }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /animals/1
  # PUT /animals/1.json
  def update
    @animal = Animal.find(params[:id])

    respond_to do |format|
      if @animal.update_attributes(params[:animal])
        format.html { redirect_to @animal}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy

    respond_to do |format|
      format.html { redirect_to animals_url }
      format.json { head :no_content }
    end
  end

  private

  # A list of the param names that can be used for filtering the Product list
  def filtering_params(params)
    params.slice(:status, :location, :starts_with)
  end

end
