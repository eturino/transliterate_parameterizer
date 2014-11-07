require "active_support/all"
require "transliterate_parameterizer/version"

module TransliterateParameterizer
  
  def self.parameterize(value, change_underscore = true)
    string = value.to_s
    return value unless string.size > 0
    
    val = ActiveSupport::Inflector.transliterate(string, "")

    val = val.gsub('_', '-') if change_underscore

    val.parameterize
  end

end
