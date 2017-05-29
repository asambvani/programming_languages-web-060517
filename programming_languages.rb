def reformat_languages(languages)
  hash = {}
  languages_array = []
  languages.each do |key1, value1|
    value1.keys.each do |key|
      languages_array << key
    end
  end
  languages_array.uniq!
  languages_array.each do |language|
    hash[language] = {}
    hash[language][:type] = ""
    hash[language][:style] = []
    languages.each do |key1, value1|
      value1.each do |key2, value2|
        if language == key2
          hash[language][:type] = value2[:type]
          hash[language][:style] << key1
        end
      end
    end
  end
  return hash
end
