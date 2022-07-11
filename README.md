# tf-ob-remotestate-read
Read remote state from other git repository

This manual is dedicated to read remote Terraform state from the external repository

## Requirements

- Hashicorp terraform recent version installed
[Terraform installation manual](https://learn.hashicorp.com/tutorials/terraform/install-cli)

- git installed
[Git installation manual](https://git-scm.com/download/mac)

- README followed on the antonakv/tf-ob-remotestate-random-pet repository 
[antonakv/tf-ob-remotestate-random-pet](https://github.com/antonakv/tf-ob-remotestate-random-pet.git)

## Preparation 

- Clone git repository

```bash
git clone https://github.com/antonakv/tf-ob-remotestate-read.git
```

Expected command output:

```
% git clone https://github.com/antonakv/tf-ob-remotestate-read.git
Cloning into 'tf-ob-remotestate-read'...
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 5 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (5/5), done.
```

- Change folder to tf-ob-remotestate-read

```bash
cd tf-ob-remotestate-read
```

## Run terraform code

- In the same folder you were before, run 

```bash
terraform init
```

Sample result

```
% terraform init   

Initializing the backend...

Initializing provider plugins...
- terraform.io/builtin/terraform is built in to Terraform
- Reusing previous version of hashicorp/random from the dependency lock file
- Installing hashicorp/random v3.3.2...
- Installed hashicorp/random v3.3.2 (signed by HashiCorp)

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Run the `terraform apply`

Expected result:

```
% terraform apply
data.terraform_remote_state.rstat: Reading...
data.terraform_remote_state.rstat: Read complete after 0s

Changes to Outputs:
  + pet_local_remote = "mako"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes


Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

pet_local_remote = "mako"
```
