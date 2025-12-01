VERSION=1.25.0

if [ -z "$REGISTRY" ]; then
  echo "Erreur: La variable REGISTRY est vide ou non définie"
  exit 1
fi

docker buildx build --platform linux/amd64 --build-arg VERSION=$VERSION -t $REGISTRY/pgbouncer:$VERSION . --push
