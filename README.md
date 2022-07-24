# terraform-aws-spot-ec2-x86-magma-agw

Initalize terraform:
```bash
terraform init
```

Deploy Spot EC2 instance:
```bash
export TF_VAR_attach_second_interface=false
terraform apply -auto-approve

export TF_VAR_attach_second_interface=true
terraform apply -auto-approve
```

Update your netplan configuration:
```bash
sudo vim /etc/netplan/50-cloud-init.yaml
```
```yaml
network:
    ethernets:
        ens5:
            dhcp4: true
            dhcp6: false
            match:
                macaddress: 0a:35:6f:e2:a4:75
            set-name: eth0
        ens6:
            addresses:
            - 172.31.16.77/20
            set-name: eth1
    version: 2
```

Restart system to apply network changes:
```bash
sudo reboot
```

Delete everything:
```bash
terraform destroy -auto-approve
```
