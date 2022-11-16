# frozen_string_literal: true

module Phlex
	class Buffered < SimpleDelegator
		def initialize(object, buffer:)
			super(object)
			@buffer = buffer
		end

		# Alias output methods to this
		def __output_method__(*args, **kwargs, &block)
			output = __getobj__.public_send(__callee__, *args, **kwargs, &block)
			@buffer << output if output.is_a? String
			nil
		end
	end
end
