module Parser
  def self.parse(number, chunk)
    left, right = number.to_s.split('.')

    left
      .reverse                # reverse so we chunk from the right
      .scan(/.{1,#{chunk}}/)  # chop string into chunks
      .map(&:reverse)         # return each chunk to original orientation
      .reverse                # return to original orientation
      .join(',')              # convert to commas separated string
      .split()                # pop it into an array
      .push(right)            # add anything after the dot
      .compact                # remove any nils
      .join('.')              # join the dots
  end
end
