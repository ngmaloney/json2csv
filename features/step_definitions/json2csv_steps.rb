When /I run json2csv without file argument/ do
  @output = `json2csv`
end

Then /^it shows file not specified message$/ do
  @output.should =~ 'A valid json file must be specified'
end

When /I convert users\.json/ do
  file = File.join(File.dirname(__FILE__),'..','data','users.json')
  @csv = `json2csv #{file}`
end

Then /^it outputs a csv representation of the file$/ do
  @csv.should =~ /name,email,status,gender,animals,occupation/
end
