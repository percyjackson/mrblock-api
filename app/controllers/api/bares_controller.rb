class Api::BaresController < ApplicationController
  respond_to :json
  PER_PAGE_RECORDS = 9
  #GET /user.json
  def index
    bares_paginated = Bar.order('id').page(params[:page]).per(PER_PAGE_RECORDS)
    json_response = {
      models: bares_paginated,
      current_page: params[:page].to_i,
      perPage: PER_PAGE_RECORDS,
      total_pages: bares_paginated.num_pages
    }
    respond_with json_response, callback: params[:callback]
  end
end
