# frozen_string_literal: true

module Admin
  class NavLinksController < Admin::ApplicationController
    before_action :set_nav_link, only: %i[show edit update destroy]

    def index
      @nav_links = NavLink.sorted
    end

    def show
    end

    def new
      @nav_link = NavLink.new
    end

    def edit
    end

    def create
      @nav_link = NavLink.new(params[:nav_link].permit!)

      if @nav_link.save
        redirect_to(admin_nav_links_path, notice: t("views.admin.nav_link_was_successfully_created"))
      else
        render action: "new"
      end
    end

    def update
      if @nav_link.update(params[:nav_link].permit!)
        redirect_to(admin_nav_links_path, notice: t("views.admin.nav_link_update_successfully"))
      else
        render action: "edit"
      end
    end

    def destroy
      @nav_link.destroy
      redirect_to(admin_nav_links_path)
    end

    private

    def set_nav_link
      @nav_link = NavLink.find(params[:id])
    end
  end
end
