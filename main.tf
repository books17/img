provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute RDMA GPU Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Auto-Configuration"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Authentication"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "rkrp:AP-SINGAPORE-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaanfqh43v2soi3yuylb7dyrkdkfb4mwxnhyo6bjqdeipdobe3jcawa"
	create_vnic_details {
		assign_ipv6ip = "false"
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "${oci_core_subnet.generated_oci_core_subnet.id}"
	}
	display_name = "instance-20231219-1609"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxfxd8eCgi0nXoKhd2w3vK9KD8JRyN0lROMI3xIyQt0QHFJSdv0yaHRgl0UaGLsVC2jV6EVNfhPQaqY76wCJD3ineF/dDaD3lh3l4l74pPFvWYMztYEjzQvywEGJqyZn4QQMjd+uZdYWQtwnVOy5Cd3c7/4KUiB2ty7caBDqe1Cxb+uo+LZYByjEreTgniY8eyBgqjha8xgvgDqAXQ1K0bgiQ8nSRp4QNVJQYtCqYOc1AnS0wkEjPm0TGjCkuETVk9KiPdLE5Qq5O0ttfzIG0rrSHpJQgzJZHyv8Y5YQQOnQETKSiMsa4KjcW/oAyyf405GDXMZume1JwO+uDigBH3 ssh-key-2023-12-19"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "6"
		ocpus = "1"
	}
	source_details {
		source_id = "ocid1.image.oc1.ap-singapore-1.aaaaaaaahujcmwrw6x7uprliju64sma3xodmfmqgzxn5lhftgkqiqjjvvtyq"
		source_type = "image"
	}
}

resource "oci_core_subnet" "generated_oci_core_subnet" {
	cidr_block = "10.0.0.0/24"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaanfqh43v2soi3yuylb7dyrkdkfb4mwxnhyo6bjqdeipdobe3jcawa"
	display_name = "subnet-20231219-1609"
	dns_label = "subnet12191614"
	vcn_id = "ocid1.vcn.oc1.ap-singapore-1.amaaaaaawuku7zqauf2ehob2tjho3cy6zovwtgt7wbonhyj544ztcjeqecea"
}
