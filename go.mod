module github.com/VineethReddy02/mocklet

go 1.13

require (
	contrib.go.opencensus.io/exporter/jaeger v0.2.1
	contrib.go.opencensus.io/exporter/ocagent v0.7.0
	github.com/google/gnostic v0.6.9 // indirect
	github.com/gorilla/mux v1.8.0 // indirect
	github.com/mitchellh/go-homedir v1.1.0
	github.com/pkg/errors v0.9.1
	github.com/sirupsen/logrus v1.9.0
	github.com/spf13/cobra v1.5.0
	github.com/spf13/pflag v1.0.5
	github.com/virtual-kubelet/virtual-kubelet v1.6.0
	go.opencensus.io v0.23.0
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/api v0.25.0
	k8s.io/apimachinery v0.25.0
	k8s.io/client-go v10.0.0+incompatible
	k8s.io/klog v1.0.0
)

replace k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.21.4

replace k8s.io/cloud-provider => k8s.io/cloud-provider v0.21.4

replace k8s.io/cli-runtime => k8s.io/cli-runtime v0.21.4

replace k8s.io/apiserver => k8s.io/apiserver v0.21.4

replace k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.21.4

replace k8s.io/cri-api => k8s.io/cri-api v0.21.5-rc.0

replace k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.21.4

replace k8s.io/kubelet => k8s.io/kubelet v0.21.4

replace k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.21.4

replace k8s.io/apimachinery => k8s.io/apimachinery v0.21.5-rc.0

replace k8s.io/api => k8s.io/api v0.21.4

replace k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.21.4

replace k8s.io/kube-proxy => k8s.io/kube-proxy v0.21.4

replace k8s.io/component-base => k8s.io/component-base v0.21.4

replace k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.21.4

replace k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.21.4

replace k8s.io/metrics => k8s.io/metrics v0.21.4

replace k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.21.4

replace k8s.io/code-generator => k8s.io/code-generator v0.21.5-rc.0

replace k8s.io/client-go => k8s.io/client-go v0.21.4

replace k8s.io/kubectl => k8s.io/kubectl v0.21.4

replace k8s.io/node-api => k8s.io/node-api v0.17.14

replace k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.21.4

replace k8s.io/sample-controller => k8s.io/sample-controller v0.21.4

replace k8s.io/controller-manager => k8s.io/controller-manager v0.21.4

// replace github.com/moby/spdystream => github.com/docker/spdystream v0.2.0
replace github.com/docker/spdystream => github.com/moby/spdystream v0.2.0

// replace github.com/google/gnostic => github.com/googleapis/gnostic v0.6.9
replace github.com/googleapis/gnostic => github.com/google/gnostic v0.6.9

replace k8s.io/component-helpers => k8s.io/component-helpers v0.21.4

replace k8s.io/mount-utils => k8s.io/mount-utils v0.21.5-rc.0
