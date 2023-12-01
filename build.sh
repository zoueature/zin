

latestCommit=`git log --pretty=oneline --abbrev-commit | awk '{print $1}' | head -n 1`
name=`pwd | awk -F '/' '{print $NF}'`
docker build -t  $name:$latestCommit .