# frozen_string_literal: true

module Phlex
  module Inline
    #
    # Allow the `Phlex::Inline` module to be included in any class.
    # By calling `phlex` with a block you can use the DSL to render
    # HTML. The block returns the rendered HTML.
    #
    # Example:
    #
    # module MyHelper
    #  include Phlex::Inline
    #
    #   # => "<div><p>Hello World</p></div>"
    #   def my_helper
    #     phlex do
    #       div do
    #         p { "Hello World" }
    #       end
    #     end
    #   end
    # end
    #
    def phlex(&block)
      # TODO
    end

    def self.phlex(&block)
      # TODO
    end
  end
end
