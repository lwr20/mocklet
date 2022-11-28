module github.com/VineethReddy02/mocklet

go 1.18

require (
	contrib.go.opencensus.io/exporter/jaeger v0.2.0
	contrib.go.opencensus.io/exporter/ocagent v0.7.0
	github.com/mitchellh/go-homedir v1.1.0
	github.com/pkg/errors v0.9.1
	github.com/sirupsen/logrus v1.9.0
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	github.com/virtual-kubelet/virtual-kubelet v1.2.1-0.20200320220811-47a353897e8d
	go.opencensus.io v0.22.3
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/api v0.17.14
	k8s.io/apimachinery v0.17.14
	k8s.io/client-go v10.0.0+incompatible
	k8s.io/klog v1.0.0
	k8s.io/kube-openapi v0.0.0-20200410163147-594e756bea31 // indirect
	k8s.io/kubernetes v1.17.14
)

require (
	cloud.google.com/go v0.56.0 // indirect
	github.com/census-instrumentation/opencensus-proto v0.2.1 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/docker/spdystream v0.1.0 // indirect
	github.com/gogo/protobuf v1.2.2-0.20190723190241-65acae22fc9d // indirect
	github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e // indirect
	github.com/golang/protobuf v1.4.2 // indirect
	github.com/google/go-cmp v0.4.0 // indirect
	github.com/google/gofuzz v1.0.0 // indirect
	github.com/googleapis/gnostic v0.1.0 // indirect
	github.com/gorilla/mux v1.7.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.14.6 // indirect
	github.com/hashicorp/golang-lru v0.5.1 // indirect
	github.com/imdario/mergo v0.3.5 // indirect
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/json-iterator/go v1.1.8 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/uber/jaeger-client-go v2.15.0+incompatible // indirect
	golang.org/x/crypto v0.0.0-20200220183623-bac4c82f6975 // indirect
	golang.org/x/net v0.0.0-20200520182314-0ba52f642ac2 // indirect
	golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d // indirect
	golang.org/x/sync v0.0.0-20200317015054-43a5402ce75a // indirect
	golang.org/x/sys v0.0.0-20220715151400-c0bba94af5f8 // indirect
	golang.org/x/text v0.3.2 // indirect
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0 // indirect
	google.golang.org/api v0.25.0 // indirect
	google.golang.org/appengine v1.6.5 // indirect
	google.golang.org/genproto v0.0.0-20200527145253-8367513e4ece // indirect
	google.golang.org/grpc v1.29.1 // indirect
	google.golang.org/protobuf v1.24.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	k8s.io/apiextensions-apiserver v0.0.0 // indirect
	k8s.io/apiserver v0.17.14 // indirect
	k8s.io/component-base v0.17.14 // indirect
	k8s.io/utils v0.0.0-20191114184206-e782cd3c129f // indirect
	sigs.k8s.io/yaml v1.1.0 // indirect
)

replace k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.17.14

replace k8s.io/cloud-provider => k8s.io/cloud-provider v0.17.14

replace k8s.io/cli-runtime => k8s.io/cli-runtime v0.17.14

replace k8s.io/apiserver => k8s.io/apiserver v0.17.14

replace k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.17.14

replace k8s.io/cri-api => k8s.io/cri-api v0.17.18-rc.0

replace k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.17.14

replace k8s.io/kubelet => k8s.io/kubelet v0.17.14

replace k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.17.14

replace k8s.io/apimachinery => k8s.io/apimachinery v0.17.18-rc.0

replace k8s.io/api => k8s.io/api v0.17.14

replace k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.17.14

replace k8s.io/kube-proxy => k8s.io/kube-proxy v0.17.14

replace k8s.io/component-base => k8s.io/component-base v0.17.14

replace k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.17.14

replace k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.17.14

replace k8s.io/metrics => k8s.io/metrics v0.17.14

replace k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.17.14

replace k8s.io/code-generator => k8s.io/code-generator v0.17.18-rc.0

replace k8s.io/client-go => k8s.io/client-go v0.17.14

replace k8s.io/kubectl => k8s.io/kubectl v0.17.14

replace k8s.io/node-api => k8s.io/node-api v0.17.14

replace k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.17.14

replace k8s.io/sample-controller => k8s.io/sample-controller v0.17.14
