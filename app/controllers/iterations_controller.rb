class IterationsController < ApplicationController

  def index
    Iteration.delete_all

    RecurrenceType.all.each do |recurrence_type|
      i = 0
      n = 0
      while (recurrence_type.interval_type == 'D' && i < 730) || (recurrence_type.interval_type == 'M' && i < 24)
        save_iteration(recurrence_type, n, i)
        i = i + recurrence_type.interval_length
        n = n + 1
      end
    end

    @iterations = Iteration.all.order(:recurrence_code,:iteration)
  end

  def save_iteration(recurrence_type, n, i)
    @iteration = Iteration.new

    @iteration.recurrence_code=recurrence_type.recurrence_code
    @iteration.interval_type=recurrence_type.interval_type
    @iteration.stride=i
    @iteration.iteration=n

    @iteration.save
  end

end