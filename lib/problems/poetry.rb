module Poetry
  # http://community.topcoder.com/stat?c=problem_statement&pm=1835&rd=4655
  def self.rhyme_scheme(*sentences)
    rhyme_schemes = {" " => " "}
    scheme = ""

    sentences.each do |sentence|
      last_word = sentence.split(" ")[-1]
      last_word.downcase! unless last_word.nil?

      sentence_scheme = get_scheme(last_word)
      next_scheme = scheme_keys[rhyme_schemes.keys.size-1]
      sentence_scheme_key = rhyme_schemes[sentence_scheme] ||= next_scheme
      scheme += sentence_scheme_key
    end
    scheme
  end

  def self.scheme_keys
    %(abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789)
  end

  def self.get_scheme(word)
    return " " if word.nil?
    word.each_char.with_index do |c, i|
      next if i == 0 && c == 'y'
      if vowels.include?(c)
        word = word[i..-1] 
        break
      end
    end
    word
  end

  def self.vowels
    %(aeiouy)
  end
end
