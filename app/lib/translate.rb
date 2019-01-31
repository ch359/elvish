class Translate

  def self.process_handwritten(string)
    string.gsub(/[^A-Za-z.,'\s]/, '')
  end

  def self.process_elvish(string)
    string.gsub(/[^A-Za-z.\s\d]/, '')

  end

end
