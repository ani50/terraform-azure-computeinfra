provider "azurerm" {
  version = "~> 1.0"
}
variable "subscriptionId" {}
variable "clientId" {}
variable "clientSecret" {}
variable "tenantId" {}
variable "region" {}
variable "hradwareType" {}
variable "vmname" {}
variable "rgName" {}
variable "network" {}
variable "subnet" {}

module "computeinfra" {
    source = "git::https://github.com/ani50/azure-compute.git"
    prefix = "${var.prefix}"
    subscriptionId = "${var.subscriptionId}"
    clientId = "${var.clientId}"
    clientSecret = "${var.clientSecret}"
    tenantId = "${var.tenantId}"
    region = "${var.region}"
    hradwareType = "${var.hradwareType}"
    vmname = "${var.vmname}"
    rgName = "${var.rgName}"
    network = "${var.network}"
    subnet = "${var.subnet}"

}
