After do |scenario|
   if scenario.failed?
      t = date_time.gsub!(/[:.]/,' ')
      page.save_screenshot("screenshots/#{scenario.name.delete!(" ")}#{t.delete!(' ')}_screenshot.png")
   end
end