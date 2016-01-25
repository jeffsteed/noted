class SurveysController < ApplicationController

  def home
  end

  def index
  end

  def api
    @surveys = Survey.all
    render :json => @surveys.to_json
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      flash[:success] = "Thank you! Survey Saved."
      redirect_to surveys_url
    else
      render 'new'
    end
  end

  private
    def survey_params
      params.require(:survey).permit(:name, :age, :gender, :one_note,
        :evernote, :msword, :pages, :google_drive, :excel, :github, :other,
        :other_string, :features_like, :features_want)
    end
end
