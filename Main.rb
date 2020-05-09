require './XmlParser'

parser  = XmlParser.new
parser.parse_file('./hr_test_1.xml')
puts parser.file_data_as_json