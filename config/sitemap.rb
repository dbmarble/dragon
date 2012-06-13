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
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end


  add articles_path, :priority => 0.7, :changefreq => 'daily'
  add how_to_make_a_meeting_agenda_path, :priority => 0.7, :changefreq => 'daily'
  add what_is_a_meeting_agenda_path, :priority => 0.7, :changefreq => 'daily'
  add how_to_run_an_effective_meeting_path, :priority => 0.7, :changefreq => 'daily'
  add why_take_meeting_minutes_path, :priority => 0.7, :changefreq => 'daily'
  add important_aspects_to_consider_for_meeting_path, :priority => 0.7, :changefreq => 'daily'
  add prelaunch_list_path, :priority => 0.7, :changefreq => 'daily'
  add about_path, :priority => 0.7, :changefreq => 'daily'
  add contact_path, :priority => 0.7, :changefreq => 'daily'
  add pricing_path, :priority => 0.7, :changefreq => 'daily'
  add tour_path, :priority => 0.7, :changefreq => 'daily'
  add new_agenda_sample_path, :priority => 0.7, :changefreq => 'daily'
  add new_minutes_sample_path, :priority => 0.7, :changefreq => 'daily'

end

