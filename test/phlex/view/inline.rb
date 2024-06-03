# frozen_string_literal: true

describe Phlex::Inline do
	with "content" do
		it "renders text content" do
		  class MyHelper
			  include Phlex::Inline

				def my_helper
				  phlex do
						h1 do
						  p { "Hello World" }
						end
					end
				end
			end


			expect(MyHelper.new.my_helper).to be == "<h1><p>Hello World</p></h1>"
		end
	end
end
