require 'active_support/core_ext/hash'
require "active_support/core_ext/hash/except"
require 'json'

class XmlParser 
	attr_accessor :file_data, :file_data_as_hash, :file_data_as_json

	def parse_file(file_path)

		if File.extname(file_path) != '.xml'
			raise Exception.new 'Filename extension should be .xml => '+File.extname(file_path)+' found'
		end
		
		file = File.open(file_path,"r")
		@file_data = file.read

		@file_data_as_hash =  Hash.from_xml(@file_data)
		@file_data_as_hash = @file_data_as_hash["InvioPostale"]
		@file_data_as_hash['data'] = @file_data_as_hash['data']['invio']

		@file_data_as_json =  JSON.generate(@file_data_as_hash)
		
	end

end