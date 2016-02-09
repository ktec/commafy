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

  def self.numberize_string(number_str)
    if number_str.include?('.')
      number_str.to_f
    else
      number_str.to_i
    end
  end
end
