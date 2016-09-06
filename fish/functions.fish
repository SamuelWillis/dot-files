# The following should be moved to fish/functions/<function_name>.fish
function webapp
  clear
  cd ~/echosec.dev/
end

function thunder
  clear
  cd ~/thunder.echosec.dev
end

function bootember
  clear
  sudo supervisorctl start all
  webapp
  cd client/
  ember build --environment=$argv --watch
end

function re
  rebuildember
end

function rebuildember
  webapp
  cd client/
  npm install
  bower install
  ember build --environment=$argv
  webapp
  npm install
  gulp
  cd client/
  ember build --environment=$argv --watch
end
