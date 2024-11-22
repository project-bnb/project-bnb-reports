# FRONTEND task setup
# https://github.com/project-bnb/BoolBnB-front
ORGANIZATION="project-bnb"
REPO="BoolBnB-front"

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
