class RecurrenceTypesController < ApplicationController

  def index
    RecurrenceType.delete_all

    save_recurrence_type('Weekly', 'D', 7)
    save_recurrence_type('Monthly', 'M', 1)
    save_recurrence_type('Every three months', 'M', 3)
    save_recurrence_type('Every four months', 'M', 4)
    save_recurrence_type('Twice a year', 'M', 6)
    save_recurrence_type('Yearly', 'M', 12)

    @recurrence_types = RecurrenceType.all.order(:description)
  end

  def save_recurrence_type(description, interval_type, interval_length)
    @recurrence_type = RecurrenceType.new

    @recurrence_type.description=description
    @recurrence_type.interval_type=interval_type
    @recurrence_type.interval_length=interval_length
    @recurrence_type.recurrence_code= interval_type + interval_length.to_s

    @recurrence_type.save
  end

end
