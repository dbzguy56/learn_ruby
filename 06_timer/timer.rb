class Timer
  attr_writer :seconds, :time_string
  def initialize
  end

  def seconds
    @hours = 0
    @minutes = 0
    @seconds = 0
  end

  def time_string
    @hours = @seconds/3600
    @minutes = (@seconds%3600)/60
    @seconds = (@seconds%3600)%60
    "#{'%02d' % @hours}:#{'%02d' % @minutes}:#{'%02d' % @seconds}"
  end
end
