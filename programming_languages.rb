def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      type_hash.each do |type, string|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        new_hash[language][:style] ||= []
        new_hash[language][:style] << style
        if new_hash[language][type].nil?
          new_hash[language][type] = string
        end
      end
    end
  end
  new_hash
end
