# The following should be moved to fish/functions/<function_name>.fish
function webapp
  clear
  cd ~/echosec.dev/
end

function thunder
  clear
  cd ~/thunder.echosec.dev
end

function boot
  clear
  sudo supervisorctl start all
  webapp
  cd client/
  ember build --environment=development --watch
end
