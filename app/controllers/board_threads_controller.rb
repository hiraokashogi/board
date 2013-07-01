class BoardThreadsController < ApplicationController
  before_action :set_board_thread, only: [:show, :edit, :update, :destroy]

  # GET /board_threads
  # GET /board_threads.json
  def index
    @board_threads = BoardThread.all
    @board_thread = BoardThread.new
  end

  # GET /board_threads/1
  # GET /board_threads/1.json
  def show
  end

  # GET /board_threads/new
  def new
    @board_thread = BoardThread.new
  end

  # GET /board_threads/1/edit
  def edit
  end

  # POST /board_threads
  # POST /board_threads.json
  def create
    @board_thread = BoardThread.new(board_thread_params)

    respond_to do |format|
      if @board_thread.save
        format.html { redirect_to action: "index", notice: 'Board thread was successfully created.' }
        format.json { render action: 'show', status: :created, location: @board_thread }
      else
        format.html { render action: 'new' }
        format.json { render json: @board_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /board_threads/1
  # PATCH/PUT /board_threads/1.json
  def update
    respond_to do |format|
      if @board_thread.update(board_thread_params)
        format.html { redirect_to @board_thread, notice: 'Board thread was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @board_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_threads/1
  # DELETE /board_threads/1.json
  def destroy
    @board_thread.destroy
    respond_to do |format|
      format.html { redirect_to board_threads_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_thread
      @board_thread = BoardThread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_thread_params
      params.require(:board_thread).permit(:name, :view_flag)
    end
end
