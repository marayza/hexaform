variable "cluster_name" {
  default = "hexaform"
}

variable "region" {
  default = "us-east-1"
}

variable "kubernetes_version" {
  default = "1.27"
}

variable "nodes_instances_type" {
  default = [
    "t2.medium"
  ]
}

variable "auto_scale_options" {
  default = {
    min     = 2
    max     = 4
    desired = 2
  }
}

variable "auto_scale_cpu" {
  default = {
    scale_up_threshold  = 80
    scale_up_period     = 60
    scale_up_evaluation = 2
    scale_up_cooldown   = 300
    scale_up_add        = 2

    scale_down_threshold  = 40
    scale_down_period     = 120
    scale_down_evaluation = 2
    scale_down_cooldown   = 300
    scale_down_remove     = -1
  }
}

variable "db_name" {
  default = "hexabase"
}

variable "db_instance_type" {
  default = "db.t3.micro"
}

variable "db_allocated_storage" {
  default = 5
}

variable "db_engine" {
  default = "postgres"
}

variable "db_version" {
  default = "12.5"
}

variable "db_username" {
  default = "hexabase"
}

