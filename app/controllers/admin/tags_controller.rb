# frozen_string_literal: true

module Admin
  class TagsController < Admin::ApplicationController
    before_action :set_tag, only: %i[show edit update destroy]

    def index
      @tags = Tag.sorted
    end

    def show
    end

    def new
      @tag = Tag.new
    end

    def edit
    end

    def create
      @tag = Tag.new(params[:tag].permit!)

      if @tag.save
        redirect_to(admin_tags_path, notice: t("views.admin.tag_was_successfully_created"))
      else
        render action: "new"
      end
    end

    def update
      if @tag.update(params[:tag].permit!)
        redirect_to(admin_tags_path, notice: t("views.admin.tag_update_successfully"))
      else
        render action: "edit"
      end
    end

    def destroy
      @tag.destroy
      redirect_to(admin_tags_url)
    end

    private

    def set_tag
      @tag = Tag.find(params[:id])
    end
  end
end
