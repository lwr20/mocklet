#!/bin/bash
set -e

# Use this script to change the version of K8s we are building with for this project
# Taken from here:  https://github.com/kubernetes/kubernetes/issues/79384#issuecomment-521493597

VERSION=${1#"v"}
if [ -z "$VERSION" ]; then
    echo "You must specify version such as '1.15.4'"
    exit 1
fi
echo Switching to K8s $VERSION

# This will collect all the k8s module dependencies from the k8s go.mod file into an array called "MODS"
#
# Example:
#
# k8s.io/api
# k8s.io/apiextensions-apiserver
# k8s.io/apimachinery
# k8s.io/apiserver
# k8s.io/cli-runtime
# k8s.io/client-go
# k8s.io/cloud-provider
# k8s.io/cluster-bootstrap
# k8s.io/code-generator
# k8s.io/component-base
# k8s.io/cri-api
# k8s.io/csi-translation-lib
# k8s.io/kube-aggregator
# k8s.io/kube-controller-manager
# k8s.io/kube-proxy
# k8s.io/kube-scheduler
# k8s.io/kubectl
# k8s.io/kubelet
# k8s.io/legacy-cloud-providers
# k8s.io/metrics
# k8s.io/node-api
# k8s.io/sample-apiserver
# k8s.io/sample-cli-plugin
# k8s.io/sample-controller

MODS=($(
    curl -sS https://raw.githubusercontent.com/kubernetes/kubernetes/v${VERSION}/go.mod |
    sed -n 's|.*k8s.io/\(.*\) => ./staging/src/k8s.io/.*|k8s.io/\1|p'
))
if [ -z ${MODS} ]; then
    echo "No modules found. You must specify version such as 'v1.15.4'"
    exit 1
fi

# Next, for each module, we download the module information in JSON format and extract
# the specific revision we need from the "Version" property. We then update the go.mod
# file using `go mod edit` supplying the specific module revision we need to pin for
# that version of k8s.
#
# Example JSON:
#
#{
#	"Path": "k8s.io/api",
#	"Version": "v0.0.0-20190918195907-bd6ac527cfd2",
#	"Info": "/Users/doug/go/pkg/mod/cache/download/k8s.io/api/@v/v0.0.0-20190918195907-bd6ac527cfd2.info",
#	"GoMod": "/Users/doug/go/pkg/mod/cache/download/k8s.io/api/@v/v0.0.0-20190918195907-bd6ac527cfd2.mod",
#	"Zip": "/Users/doug/go/pkg/mod/cache/download/k8s.io/api/@v/v0.0.0-20190918195907-bd6ac527cfd2.zip",
#	"Dir": "/Users/doug/go/pkg/mod/k8s.io/api@v0.0.0-20190918195907-bd6ac527cfd2",
#	"Sum": "h1:bkwe5LsuANqyOwsBng5Qc4S91D2Tv0JHctAztt3YTQs=",
#	"GoModSum": "h1:AOxZTnaXR/xiarlQL0JUfwQPxjmKDvVYoRp58cA7lUo="
#}

for MOD in "${MODS[@]}"; do
    V=$(
        go mod download -json "${MOD}@kubernetes-${VERSION}" |
        sed -n 's|.*"Version": "\(.*\)".*|\1|p'
    )
    go mod edit "-replace=${MOD}=${MOD}@${V}"
done

# Finally, we `go get` the version of K8s we need and tidy up

go get "k8s.io/kubernetes@v${VERSION}"
go mod tidy