for c in `docker ps -a | awk '{ print $1,$2 }' | grep $IMAGENAME | awk '{ print $1 }'`; do
  docker logs -tf "$c";
done;
