class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':')[1].strip
  end

  def log_level
    line = @line.split(':')[0].downcase.strip
    line.slice(1, line.size - 2)
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
