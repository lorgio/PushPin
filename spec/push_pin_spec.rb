require_relative "../lib/push_pin"
describe PushPin do

  it "can initialize" do
    PushPin::Scraper.new.public_methods.include? "initialize"
  end

  it "takes a URL" do
    a =   PushPin::Scraper.new("my_URL")
    expect(a.pintrest_board_url).to  eq("my_URL")
  end

  it "can get Pintrest Pin URLs" do
    a = PushPin::Scraper.new("http://pinterest.com/lorgio/testboard/")
    expect(a.pintrest_pin_urls).to eq(["/pin/45669383693985036/"])
  end

  it "can get pintrest pin origin URLs" do
    a = PushPin::Scraper.new("http://pinterest.com/lorgio/testboard/")
    expect(a.pintrest_pin_origin_urls).to eq(["http://becomingbetty.blogspot.com/2011/09/avocado-chicken-salad.html"])
  end

end