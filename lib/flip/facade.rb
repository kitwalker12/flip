module Flip
  module Facade

    def on?(feature, option = nil)
      FeatureSet.instance.on?(feature, option)
    end

    def reset
      FeatureSet.reset
    end

    def method_missing(method, *parameters)
      super unless method =~ %r{^(.*)\?$}
      FeatureSet.instance.on? $1.to_sym
    end

  end
end
