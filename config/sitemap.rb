# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.meetingfix.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #


     add about_path, :priority => 0.3, :changefreq => 'weekly'



  add agenda_templates_path, :priority => 0.9, :changefreq => 'weekly'



  add contact_path, :priority => 0.5, :changefreq => 'weekly'



  add meeting_minutes_templates_path, :priority => 0.9, :changefreq => 'weekly'



  add pricing_path, :priority => 0.5, :changefreq => 'weekly'



  add articles_path, :priority => 0.7, :changefreq => 'weekly'


end
