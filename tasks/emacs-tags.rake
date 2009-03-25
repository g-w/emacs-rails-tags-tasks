# -*- coding: utf-8 -*-

namespace "tags" do
  
  task :emacs do
    
    puts "Making Emacs TAGS file"
    
    files = FileList["**/*.rb"].exclude("pkg")
    
    sh "ctags -e #{files}", :verbose => false
    
  end
  
end

task :tags => ["tags:emacs"]
