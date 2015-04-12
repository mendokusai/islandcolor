#run with 'bundle exec rspec'

require 'spec_helper'

describe Project do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with title, author, text, number and date" do
  	project = Project.new(
  		title: "Asics Catalog",
  		author: "Dave Pauley",
  		text: "This project was a catalog for the 2015 Asics Spring Collection.",
  		number: 1001,
  		date: "Friday, September, 1, 2015")
  	expect(project).to be_valid
  end

  it "is invalid without a title" do
  	expect(Project.new(title: nil)).to have(1).errors_on(:title)
  end

  it 'is invalid without text' do
  	# expect(Project.new(text: nil)).to have(1).errors_on(:text)
  end
  
  it 'is invalid without an author'
  it 'is invalid witout a number'
  it 'is invalid witout a date'
  it 'returns a project\'s details as a list'
end


# create_table "projects", force: :cascade do |t|
#     t.string   "title"
#     t.string   "author"
#     t.text     "text"
#     t.integer  "number"
#     t.string   "date"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end