class TierOneLinksController < ApplicationController
  before_action :authenticate_user!
  before_action :tier_one_admin_only, :except => :show
  before_action :set_tier_one_link, only: [:show, :edit, :update, :destroy]

  # GET /tier_one_links
  # GET /tier_one_links.json
  def index
    @global_links = GlobalLink.all
    @tier_one_links = TierOneLink.all
  end

  # GET /tier_one_links/1
  # GET /tier_one_links/1.json
  def show
  end

  def tier_one_admin_only
    unless current_user.tierOneAdmin?
      redirect_to root_path, :alert => "Access denied."
    end
  end
  # GET /tier_one_links/new
  def new
    @tier_one_link = TierOneLink.new
  end

  # GET /tier_one_links/1/edit
  def edit
  end

  # POST /tier_one_links
  # POST /tier_one_links.json
  def create
    @tier_one_link = TierOneLink.new(tier_one_link_params)

    respond_to do |format|
      if @tier_one_link.save
        format.html { redirect_to @tier_one_link, notice: 'Tier one link was successfully created.' }
        format.json { render :show, status: :created, location: @tier_one_link }
      else
        format.html { render :new }
        format.json { render json: @tier_one_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tier_one_links/1
  # PATCH/PUT /tier_one_links/1.json
  def update
    respond_to do |format|
      if @tier_one_link.update(tier_one_link_params)
        format.html { redirect_to @tier_one_link, notice: 'Tier one link was successfully updated.' }
        format.json { render :show, status: :ok, location: @tier_one_link }
      else
        format.html { render :edit }
        format.json { render json: @tier_one_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tier_one_links/1
  # DELETE /tier_one_links/1.json
  def destroy
    @tier_one_link.destroy
    respond_to do |format|
      format.html { redirect_to tier_one_links_url, notice: 'Tier one link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tier_one_link
      @tier_one_link = TierOneLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tier_one_link_params
      params.require(:tier_one_link).permit(:links)
    end
end
