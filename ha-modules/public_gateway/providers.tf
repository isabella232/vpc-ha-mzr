provider "ibm" {
  ibmcloud_api_key = var.api_key
  region           = var.regions[var.zones[0]]
}
