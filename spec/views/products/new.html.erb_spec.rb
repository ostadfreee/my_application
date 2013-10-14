require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "MyString",
      :content => "MyText",
      :cost => "9.99",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input#product_name[name=?]", "product[name]"
      assert_select "textarea#product_content[name=?]", "product[content]"
      assert_select "input#product_cost[name=?]", "product[cost]"
      assert_select "input#product_image[name=?]", "product[image]"
    end
  end
end
