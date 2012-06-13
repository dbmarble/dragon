class StaticPagesController < ApplicationController
  @agenda_sample = AgendaSample.new



  def articles
  end

  def what_is_a_meeting_agenda
    @agenda_sample = AgendaSample.new
  end

  def effective_meeting
    @agenda_sample = AgendaSample.new

  end
end

