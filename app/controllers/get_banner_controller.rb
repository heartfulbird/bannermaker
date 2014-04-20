class GetBannerController < ApplicationController

  layout false

  def index

    campaigns = Campaign.all
    id = rand(campaigns.count)
    show = campaigns[id][:show]

    if show
      @show = show + 1
    else
      @show = 1
    end

    @campaign = campaigns[id]

    @campaign.update(show: @show, conversion: ((@campaign.click.to_f/@show.to_f)*100).round(1))



  end

end
