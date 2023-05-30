module "cluster" {
  source = "../module/google-kubernetes-engine"

  ip_range_pods     = ""
  ip_range_services = ""
  name              = "<cluster-name>"
  network           = ""
  project_id        = "<project-id>"
  subnetwork        = ""
  region            = "asia-northeast3"
  zones             = ["asia-northeast3-a"]
  regional          = false
  node_pools = [
    {
      name         = "pool-1"
      machine_type = "e2-standard-2"
      autoscaling  = false
      node_count   = 2
      disk_size_gb = 10
      disk_type    = "pd-balanced"
      auto_upgrade = true
    },
  ]
}