require "push_pin/version"
require 'rubygems'
require 'mechanize'

module PushPin
  class Scraper
    attr_accessor :pintrest_board_url, :page
    def initialize(url="")
      @pintrest_board_url = url
    end

    def scrape
      # @url = "http://pinterest.com/lorgio/testboard/"
      agent = Mechanize.new
      @page = agent.get(@pintrest_board_url)
    end

    def pintrest_pin_urls
      self.scrape if @page.nil?
      pinterest_links = @page.links.select{|link| link if link.href.match(/\/pin\/.*/)}
      pinterest_links.collect(&:href)
    end

    def pintrest_pin_origin_urls
      self.scrape if @page.nil?
      pintrest_urls = self.pintrest_pin_urls
      origin_pin_urls = []
      agent = Mechanize.new
      pintrest_urls.each do |pin_url|
        page = agent.get("http://pintrest.com#{pin_url}")
        page.search(".ImgLink").each do |image_link|
          image_link.children.each do |child_attributes|
            if (child_attributes.keys <=>["href", "rel", "target", "data-id"]).eql?(0)
              origin_pin_urls << child_attributes["href"]
            end
          end
        end
      end
      origin_pin_urls
    end

  end
end
