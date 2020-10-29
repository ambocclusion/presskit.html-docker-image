[ "$(ls -A /home/node/presskit/site)" ] && echo "found presskit files" || presskit new && echo "done creating new presskit files"
presskit build --watch /home/node/presskit/site