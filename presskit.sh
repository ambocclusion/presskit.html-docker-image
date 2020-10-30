[ "$(ls -A /home/node/presskit/site)" ] && echo "found presskit files" || presskit new && echo "done creating new presskit files"

if [[ $collapsemenu = "TRUE" ]]
then
	presskit build --watch --collapse-menu /home/node/presskit/site
else
	presskit build --watch /home/node/presskit/site
fi
