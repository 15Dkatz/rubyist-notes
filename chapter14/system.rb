puts "Adding all, committing, and pushing to master. Commit message:"
message = gets
system("git add --all")
system("git commit -m #{message}")
system("git push origin master")