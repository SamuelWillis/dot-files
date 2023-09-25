# --- Work Utilities ---

# CD alias' for Phoenix
alias phx="cd ~/GitHub/phoenix"
alias phxfe="cd ~/GitHub/phoenix/resources/js/phoenix"
alias phxbe="cd ~/GitHub/phoenix/resources/js/beacon"
alias phxatl="cd ~/GitHub/phoenix/resources/js/atlas"
alias phxcyp="cd ~/GitHub/phoenix/cypress"

# NPM install alias' for Phoenix
alias phx_npm="(phx && npm install)"
alias phxfe_npm="(phxfe && npm install)"
alias phxbe_npm="(phxbe && npm install)"
alias phxatl_npm="(phxatl & npm install)"
alias phxcyp_npm="(phxcyp && npm install)"
alias phxall_npm="(phx_npm && phxfe_npm && phxbe_npm && phxatl_npm && phxcyp_npm)"

function phxgrep() {
 grep -R --exclude=\*mock-report-data.js --exclude=\*.generated.js --exclude=\*.eslintcache --exclude-dir=node_modules --exclude-dir=__tests__ "$@"
}
