# frozen_string_literal: true

module Phlex
	module Turbo
		class Stream < Phlex::HTML
			register_element :turbo_stream

			def initialize(action:, target:, **attributes)
				@action = action
				@target = target
				@attributes = attributes
			end

			def template(&content)
				turbo_stream(action: @action, target: @target, **@attributes, &content)
			end
		end
	end
end
