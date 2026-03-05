module "network" {
  source = "./modules/network"
}

module "iam" {
  source = "./modules/iam"
}

module "compute" {

  source = "./modules/compute"

  subnet_id    = module.network.public_subnet_ids[0]
  jenkins_role = module.iam.jenkins_role_name
}

module "platform" {

  source = "./modules/platform"

  vpc_id       = module.network.vpc_id
  subnets      = module.network.private_subnet_ids
  cluster_role = module.iam.eks_cluster_role
  node_role    = module.iam.eks_node_role

}

module "observability" {

  source = "./modules/observability"

}
