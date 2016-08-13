class ShowTimesController < ApplicationController
  before_action :set_show_time, only: [:show, :edit, :update, :destroy]

  # GET /show_times
  # GET /show_times.json
  def index
    @event = Event.find(params[:event_id])
    @show_times = @event.show_times.all
  end

  # GET /show_times/1
  # GET /show_times/1.json
  def show
    @event = Event.find(params[:event_id])
  end

  # GET /show_times/new
  def new
    @event = Event.find(params[:event_id])
    @show_time = @event.show_times.new
  end

  # GET /show_times/1/edit
  def edit
    @event = Event.find(params[:event_id])
    @show_time = @event.show_times.find(params[:id])
  end

  # POST /show_times
  # POST /show_times.json
  def create
    @event = Event.find(params[:event_id])
    @show_time = @event.show_times.new(show_time_params)

    respond_to do |format|
      if @show_time.save
        format.html { redirect_to event_show_time_path(@event, @show_time), notice: 'Show time was successfully created.' }
        format.json { render :show, status: :created, location: @show_time }
      else
        format.html { render :new }
        format.json { render json: @show_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /show_times/1
  # PATCH/PUT /show_times/1.json
  def update
    @event = Event.find(params[:event_id])
    @show_time = @event.show_times.find(params[:id])
    respond_to do |format|
      if @show_time.update(show_time_params)
        format.html { redirect_to event_show_time_path(@event, @show_time), notice: 'Show time was successfully updated.' }
        format.json { render :show, status: :ok, location: @show_time }
      else
        format.html { render :edit }
        format.json { render json: @show_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /show_times/1
  # DELETE /show_times/1.json
  def destroy
    @event = Event.find(params[:event_id])
    @show_time.destroy
    respond_to do |format|
      format.html { redirect_to  event_path(@event), notice: 'Show time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_show_time
      @show_time = ShowTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def show_time_params
      params.require(:show_time).permit(:band_id, :event_id, :start_time, :end_time)
    end
end
