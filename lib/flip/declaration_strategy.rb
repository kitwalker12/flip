# Uses :default option passed to feature declaration.
# May be boolean or a Proc to be passed the definition.
module Flip
  class DeclarationStrategy < AbstractStrategy

    def description
      "The default status declared with the feature."
    end

    def knows? definition
      !definition.options[:default].nil?
    end

    def on? definition, option = nil
      default = definition.options[:default]
      definition.options[:custom_option] = option unless option.blank?
      default.is_a?(Proc) ? default.call(definition) : default
    end

  end
end
