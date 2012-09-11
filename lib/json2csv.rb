require "json2csv/version"
require "csv"

module Json2csv
  class Parser
    attr_accessor :file, :keys, :data

    def initialize(file)
      @file = file
      hash = Yajl::Parser.parse(File.open(@file).read)
      @keys = extract_keys(hash)
      @data = extract_data(hash)
    end

    def generate_csv
      csv_string = CSV.generate do |csv|
        csv << @keys
        @data.each do |row|
          csv << row
        end
      end
      csv_string
    end

    def extract_keys(hash)
      hash.map(&:keys).flatten.uniq
    end

    def extract_data(hash)
      rows = []
      hash.each do |node|
        row = []
        @keys.each do |field|
          row.push node[field].to_s
        end
        rows.push row
      end
      rows
    end
  end
end
