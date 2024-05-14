# frozen_string_literal: true

module Admin
  class BoardsController < Admin::ApplicationController
    before_action :set_board, only: %i[show edit update destroy]

    def index
      @boards = Board.sorted
    end

    def show
    end

    def new
      @board = Board.new
    end

    def edit
    end

    def create
      @board = Board.new(params[:board].permit!)

      if @board.save
        redirect_to(admin_boards_path, notice: t("views.admin.board_was_successfully_created"))
      else
        render action: "new"
      end
    end

    def update
      if @board.update(params[:board].permit!)
        redirect_to(admin_boards_path, notice: t("views.admin.board_update_successfully"))
      else
        render action: "edit"
      end
    end

    def destroy
      @board.destroy
      redirect_to(admin_boards_url)
    end

    private

    def set_board
      @board = Board.find(params[:id])
    end
  end
end
