require './xml_parser'

describe XmlParser, '#parse_file' do 

    context '#parse_file parses an xml file and returns back the json format' do     
        parser = XmlParser.new

        it 'should return a proper json payload if valid xml file is passed' do
            parser.parse_file('./hr_test_1.xml')

            expect(parser.file_data_as_hash).to have_key("data")
            expect(parser.file_data_as_hash).to have_key("unique_id")
            expect(parser.file_data_as_hash).to have_key("office")
            expect(parser.file_data_as_hash).to have_key("Topic")
            expect(parser.file_data_as_json).not_to be_empty

        end

        it 'should throw an error if the passed file does not end with .xml' do 
            expect { parser.parse_file('hello.txt') }.to raise_error(Exception)
        end

        it 'should throw an error if the file is not found' do 
            expect { parser.parse_file('hello.xml') }.to raise_error(StandardError)
        end
    end

end