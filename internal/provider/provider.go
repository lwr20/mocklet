package provider

import (
	"context"

	"github.com/virtual-kubelet/virtual-kubelet/node/nodeutil"
	v1 "k8s.io/api/core/v1"
	stats "github.com/virtual-kubelet/virtual-kubelet/node/api/statsv1alpha1"
)

// Provider wraps the core provider type with an extra function needed to bootstrap the node
type Provider interface {
	nodeutil.Provider
	// ConfigureNode enables a provider to configure the node object that
	// will be used for Kubernetes.
	ConfigureNode(context.Context, *v1.Node)
}

// PodMetricsProvider is an optional interface that providers can implement to expose pod stats
type PodMetricsProvider interface {
	GetStatsSummary(context.Context) (*stats.Summary, error)
}
