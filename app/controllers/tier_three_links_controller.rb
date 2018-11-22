class TierThreeLinksController < ApplicationController
  before_action :set_tier_three_link, only: [:show, :edit, :update, :destroy]

  # GET /tier_three_links
  # GET /tier_three_links.json
  def index
    @global_links = GlobalLink.all
    @tier_three_links = TierThreeLink.all
  end

  # GET /tier_three_links/1
  # GET /tier_three_links/1.json
  def show
  end

  # GET /tier_three_links/new
  def new
    @tier_three_link = TierThreeLink.new
  end

  # GET /tier_three_links/1/edit
  def edit
  end

  # POST /tier_three_links
  # POST /tier_three_links.json
  def create
    @tier_three_link = TierThreeLink.new(tier_three_link_params)

    respond_to do |format|
      if @tier_three_link.save
        format.html { redirect_to @tier_three_link, notice: 'Tier three link was successfully created.' }
        format.json { render :show, status: :created, location: @tier_three_link }
      else
        format.html { render :new }
        format.json { render json: @tier_three_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tier_three_links/1
  # PATCH/PUT /tier_three_links/1.json
  def update
    respond_to do |format|
      if @tier_three_link.update(tier_three_link_params)
        format.html { redirect_to @tier_three_link, notice: 'Tier three link was successfully updated.' }
        format.json { render :show, status: :ok, location: @tier_three_link }
      else
        format.html { render :edit }
        format.json { render json: @tier_three_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tier_three_links/1
  # DELETE /tier_three_links/1.json
  def destroy
    @tier_three_link.destroy
    respond_to do |format|
      format.html { redirect_to tier_three_links_url, notice: 'Tier three link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tier_three_link
      @tier_three_link = TierThreeLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tier_three_link_params
      params.require(:tier_three_link).permit(:links)
    end
end
