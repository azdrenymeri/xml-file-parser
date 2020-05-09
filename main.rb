require './xml_parser'

parser  = XmlParser.new
e = parser.parse_file('./hr_test_1.xml')

puts parser.file_data_as_json