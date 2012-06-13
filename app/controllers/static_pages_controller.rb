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

  def agenda_how_to
    @agenda_sample = AgendaSample.new
  end

  def why_take_meeting_minutes
    @agenda_sample = AgendaSample.new
  end

  def important_aspects_for_meeting
    @agenda_sample = AgendaSample.new
  end
end

