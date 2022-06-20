class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end
  
  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :start, :end, :oneday, :introduction))
      if @schedule.save
        flash[:notice] = "スケジュールを新規登録しました"
        redirect_to :schedules
      else
        render "new"
      end
  end
  
  def new
    @schedule = Schedule.new
  end
  
  def show
    @schedule = Schedule.find(params[:id])
  end
  
  def edit
    @schedule = Schedule.find(params[:id])
  end
  
  def update
    @schedule = Schedule.find(params[:id])
      if @schedule.update(params.require(:schedule).permit(:title, :start, :end, :oneday, :introduction))
        flash[:notice] = "スケジュールID「#{@schedule.id}」の情報を更新しました"
        redirect_to :schedules
      else
        render "edit"
      end
  end
  
  def destroy
    @schedule = Schedule.find(params[:id])
      @schedule.destroy
      flash[:notice] = "スケジュールを削除しました"
      redirect_to :schedules
  end
  
end
