module Parser
  def self.parse(number, chunk)
    # we need to reverse the string so we chunk from the right
    number
      .to_s
      .reverse
      .scan(/.{1,#{chunk}}/)
      .map(&:reverse)
      .reverse
      .join(',')
  end
end
