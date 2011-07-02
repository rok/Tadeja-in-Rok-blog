print "Naslov: "
naslov = gets.chomp
print "Title: "
title = gets.chomp
print "Tag: "
tag = gets.chomp
print "Location: "
location = gets.chomp
time = Time.now.strftime("%d %B %Y")
post = "#{Time.now.strftime("%Y-%m-%d")} #{title.downcase}".gsub(/ /,'-')
file = "_posts/#{post}.textile"
File.open(file,"w") do |f|
f.write <<EOF
---
layout: post
naslov: #{naslov}
title: #{title}
tag: #{tag}
location: #{location}
time: #{time}
---

p(meta). {{ page.time }} - {{ page.location }}

h2(#slovenian). {{ page.naslov }}


h2(#english). {{ page.title }}

EOF
end
system "notepad++ #{file}"