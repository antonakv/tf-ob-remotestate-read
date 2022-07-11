data "terraform_remote_state" "rstat" {
  backend = "local"

  config = {
    path = "../tf-ob-remotestate-random-pet/terraform.tfstate"
  }
}

output "pet_local_remote" {
  value = data.terraform_remote_state.rstat.outputs.petid
}
