#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOCS=$(realpath "$DIR/../docs")
CSS=$(realpath "$DOCS/css")

if [[ $1 == 'watch' ]]; then
	sass -t compressed --watch "$CSS/src.scss":"$CSS/build.css"
else
	echo 'Building SCSS…'
	sass -t compressed "$CSS/src.scss":"$CSS/build.css"
fi