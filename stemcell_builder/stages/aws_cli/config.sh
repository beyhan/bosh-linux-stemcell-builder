#!/usr/bin/env bash

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_config.bash

# Download CLI source or release from github into assets directory
cd $assets_dir
rm -rf s3cli
mkdir s3cli
current_version=0.0.68
curl_five_times "s3cli/s3cli" "https://s3.amazonaws.com/s3cli-artifacts/s3cli-${current_version}-linux-amd64"
echo "8238efd5d8f86f3f1d1881e6c138895ee8462f3b s3cli/s3cli" | sha1sum -c -
