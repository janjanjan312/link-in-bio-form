class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def display_form

    render({ :template => "item_templates/backdoor"})
  end


  def create

    i=Item.new
    i.link_url = params.fetch("link_url_param")
    i.link_description = params.fetch("link_description")
    i.thumbnail_url = params.fetch("thumnbnail_url")

    i.save

    # render({ :template => "item_templates/create"})
    redirect_to("/")

  end

end
