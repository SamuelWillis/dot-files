# The following should be moved to fish/functions/<function_name>.fish
function webapp
  clear
  cd ~/echosec.dev/
end

function thunder
  clear
  cd ~/thunder.echosec.dev
end

# Start up ember and suporvisor processes easily.
function be
    bootember
end
function bootember
  clear
  sudo supervisorctl start all
  webapp
  cd client/
  ember build --environment=development --watch
end

# Fire up the vagran box easily.
function bd
    bootdev
end
function bootdev
    cd ~/Documents/dev-box
    vagrant up
    vagrant ssh
end

# SSH into the dev box easily.
function ssd
    sshdev
end
function sshdev
    cd ~/Documents/dev-box
    vagrant ssh
end
