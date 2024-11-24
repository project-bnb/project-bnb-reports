# BACKEND task setup
# https://github.com/project-bnb/laravel-db-bnb
ORGANIZATION="project-bnb"
REPO="laravel-db-bnb"

create_issue() {



}

while true; do
  echo "crea la issue? (s/n)"
  read -r choice
  if [ "$choice" = "s" ]; then
    create_issue
  else
    echo "Uscita dallo script."
    break
  fi
done
