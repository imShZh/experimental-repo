#!/usr/bin/env sh

_() {
  YEAR="2000"
  echo "Github Username: "
  read -r USERNAME

  [ -z "$USERNAME" ] && exit 1
  git add .
  GIT_AUTHOR_DATE="${YEAR}-07-21T16:00:00" \
    GIT_COMMITTER_DATE="${YEAR}-07-21T16:00:00" \
    git commit -m "🎉🎉🎉 Celebrate the birth of me!"
  git remote add origin "https://github.com/${USERNAME}/experimental-repo.git"
  git branch -M main
  git push -u origin main -f
  cd ..
  rm -rf "${YEAR}"

  echo
  echo "Cool, check your profile now: https://github.com/${USERNAME}"
} && _

unset -f _