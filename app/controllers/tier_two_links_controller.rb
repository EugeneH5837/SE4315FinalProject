class TierTwoLinksController < ApplicationController
  before_action :set_tier_two_link, only: [:show, :edit, :update, :destroy]

  # GET /tier_two_links
  # GET /tier_two_links.json
  def index
    @global_links = GlobalLink.all
    @tier_two_links = TierTwoLink.all
  end

  # GET /tier_two_links/1
  # GET /tier_two_links/1.json
  def show
  end

  # GET /tier_two_links/new
  def new
    @tier_two_link = TierTwoLink.new
  end

  # GET /tier_two_links/1/edit
  def edit
  end

  # POST /tier_two_links
  # POST /tier_two_links.json
  def create
    @tier_two_link = TierTwoLink.new(tier_two_link_params)

    respond_to do |format|
      if @tier_two_link.save
        format.html { redirect_to @tier_two_link, notice: 'Tier two link was successfully created.' }
        format.json { render :show, status: :created, location: @tier_two_link }
      else
        format.html { render :new }
        format.json { render json: @tier_two_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tier_two_links/1
  # PATCH/PUT /tier_two_links/1.json
  def update
    respond_to do |format|
      if @tier_two_link.update(tier_two_link_params)
        format.html { redirect_to @tier_two_link, notice: 'Tier two link was successfully updated.' }
        format.json { render :show, status: :ok, location: @tier_two_link }
      else
        format.html { render :edit }
        format.json { render json: @tier_two_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tier_two_links/1
  # DELETE /tier_two_links/1.json
  def destroy
    @tier_two_link.destroy
    respond_to do |format|
      format.html { redirect_to tier_two_links_url, notice: 'Tier two link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tier_two_link
      @tier_two_link = TierTwoLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tier_two_link_params
      params.require(:tier_two_link).permit(:links)
    end
end
