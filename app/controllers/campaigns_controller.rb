class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  def index
    @campaigns = Campaign.all
  end

  def show
    click = params[:click]

    if click

      @all_click = click.to_i + 1
      @all_show = @campaign.show
      @conversion = ((@all_click.to_f/@all_show.to_f)*100).round(1)
      @campaign.update(click: @all_click, conversion: @conversion)

      @show_results = nil

      redirect_to @campaign.link

    else
      @show_results = true
    end

  end

  def new
    @campaign = Campaign.new
  end

  def edit
  end

  def create
    @campaign = Campaign.new(campaign_params)

    if @campaign.save
      redirect_to campaigns_path, notice: 'Campaign was successfully created.'
    else
      render 'campaigns/edit'
    end

  end

  def update
      if @campaign.update(campaign_params)
        redirect_to campaigns_path, notice: 'Campaign was successfully updated.'
      else
        render 'campaigns/edit'
      end
  end

  def destroy
    @campaign.destroy
    redirect_to campaigns_url, notice: 'Campaign was successfully deleted.'
  end


  private
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    def campaign_params
      params.require(:campaign).permit(:name, :link, :image)
    end
end
