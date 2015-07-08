#!/bin/sh

set -e

topdir=$(dirname $0)
cd $topdir

autoreconf --install --warnings=all --force

args=""
if [ -f "$topdir/.config.args" ]; then
	args="$(cat $topdir/.config.args)"
else
	args="--with-stage1=coreos"
fi

echo
echo "----------------------------------------------------------------"
echo "Initialized build system. For a common configuration please run:"
echo "----------------------------------------------------------------"
echo
echo "$topdir/configure $args"
echo
