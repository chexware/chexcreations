require "rails_helper"

RSpec.describe "routes to the contact controller", :type => :routing do
    it "routes to a new contact form" do
      expect(get: "/contact").
        to route_to(controller: "contacts",  action: "new")
    end

    it "routes to posting a contact form" do
      expect(post: "/contact").
        to route_to(controller: "contacts",  action: "create")
    end

    it "does not route to a deleting contact form" do
      expect( delete: "/contact").not_to be_routable
    end

    it "does not route to a new contact form with index" do
      expect(get: "/contact/2").not_to be_routable
    end

    it "does not route to updating contact form with index" do
      expect(post: "/contact/2").not_to be_routable
    end

    it "does not route to a deleting  contact form with index" do
      expect( delete: "/contact/2").not_to be_routable
    end
end

RSpec.describe "routes to the blog controller", :type => :routing do
    it "routes a load blog page" do
      expect(get: "/blog").
        to route_to(controller: "blog", action: "load")
    end

    it "routes updating the load blog page" do
      expect(post: "/blog").not_to be_routable
    end

    it "routes deleting  the load blog page" do
      expect(delete: "/blog").not_to be_routable
    end

    it "does not route to a single article page" do
      expect(get: "/blog/5").not_to be_routable
    end

    it "does not route to updating an article" do
      expect(post: "/blog/5").not_to be_routable
    end

    it "does not route to deleting an article" do
      expect(delete: "/blog/5").not_to be_routable
    end
end

RSpec.describe "routes to the index controller", :type => :routing do
    it "routes the home page" do
      expect(get: "/").
        to route_to(controller: "home", action: "index")
    end

    it "routes the updating the home page" do
      expect(post: "/").not_to be_routable
    end

    it "routes the deleting the home page" do
      expect(delete: "/").not_to be_routable
    end

    it "does not route to a test page" do
      expect(get: "/test").not_to be_routable
    end
end

RSpec.describe "routes to the project controller", :type => :routing do
  it "does not route to a projects page" do
    expect(get: "/projects").not_to be_routable
  end

  it "does not route updating projects page" do
    expect(post: "/projects").not_to be_routable
  end

  it "does not route deleting projects page" do
    expect(delete: "/projects").not_to be_routable
  end

  it "does not route to a selected project page" do
    expect(get: "/projects/2").not_to be_routable
  end

  it "does not route to updating a selected project page" do
    expect(post: "/projects/2").not_to be_routable
  end

  it "does not route to deleteing a selected project page" do
    expect(delete: "/projects/2").not_to be_routable
  end

end

