module Flip
  class AbstractStrategy

    def name
      self.class.name.split("::").last.gsub(/Strategy$/, "").underscore
    end

    def description; ""; end

    # Whether the strategy knows the on/off state of the switch.
    def knows? definition; raise; end

    # Given the state is known, whether it is on or off.
    def on? definition, option; raise; end

    # Whether the feature can be switched on and off at runtime.
    # If true, the strategy must also respond to switch! and delete!
    def switchable?
      false
    end

    def switch! key, on; raise; end
    def delete! key; raise; end

  end
end
