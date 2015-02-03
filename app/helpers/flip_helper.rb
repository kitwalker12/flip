# Access to feature-flipping configuration.
module FlipHelper

  # Whether the given feature is switched on
  def feature?(key, option = nil)
    Flip.on?(key, option)
  end

end
