class GetBannerController < ApplicationController

  layout false

  # Страница-баннер
  def index

    # Берем рандомную компанию из всех
    campaigns = Campaign.all
    id = rand(campaigns.count)
    @campaign = campaigns[id]

    # Добавляем просмотр баннеру компании
    show = @campaign[:show]

    if show
      @show = show + 1
    else
      @show = 1
    end

    # Обновляем эту компанию с новым количесвтом просмотров и отношением показов и кликов
    @campaign.update(show: @show, conversion: ((@campaign.click.to_f/@show.to_f)*100).round(1))

  end

end
