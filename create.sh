#!/bin/sh -

set -e

if [ x"$#" != x"3" ]; then
	echo "Usage: $0 <type> <org> <name>"
	echo ""
	echo "type:	sco, sdo, ext"
	echo "org:	name of sponsoring orginization."
	echo "name:	name of the feature."
	exit 1
fi

type="$1"
if [ x"$type" = x"sco" ]; then
	:
elif [ x"$type" = x"sdo" ]; then
	:
elif [ x"$type" != x"ext" ]; then
	type="extension"
else
	echo "Invalid type.  Must be one of sco, sdo, or ext."
	exit 1
fi

org="$2"
name="$3"
src="templates/${type}_sep_template"
bname="x-${org}-${name}"
dst="seps/draft/${type}s/${bname}"

if [ x"${bname}" != x"${bname##*/}" ]; then
	echo "Error: Neither org nor name may have a slash in them."
	exit 3
fi

if ! mkdir "$dst"; then
	echo "Error: This combination already exists:"
	echo "${dst}"
	exit 2
fi

for i in json md; do
	out="${dst}/${bname}.$i"
	cp "${src}/template.$i" "${out}"
	sed -i '' -e "s/x-oasis-cti-tc-silver-bullet/${bname}/g" "${out}"
done

echo "Directory $dst created."
