# Terraform for GKE Private Cluster with a Bastion Host

This Terraform configuration enables the provisioning of a Google Kubernetes Engine (GKE) private cluster along with a bastion host for secure access to the cluster's nodes. By utilizing a private cluster, you can ensure enhanced security for your Kubernetes workloads by restricting access to the cluster's master endpoint.

## Features

- **GKE Private Cluster:** Creates a private GKE cluster with no public IP addresses for the nodes.
- **Bastion Host:** Sets up a bastion host with a public IP address to facilitate SSH access to the private cluster's nodes.
- **Secure Configuration:** Implements network policies to restrict traffic to the cluster, enhancing security.
- **Customizable Configuration:** Easily adjust parameters such as cluster name, node pool configuration, and bastion host specifications to match your requirements.

## Prerequisites

Before you begin, ensure you have the following:

- Terraform installed on your local machine.
- Google Cloud Platform (GCP) account with appropriate permissions to create GKE clusters and Compute Engine instances.
- Google Cloud SDK (optional, for managing GCP resources via the command line).

## Usage

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/Abhin-Anilkumar/Terraform-for-GKE-private-cluster-with-a-Bastion-Host.git
    ```

2. **Navigate to the Repository:**
    ```bash
    cd Terraform-for-GKE-private-cluster-with-a-Bastion-Host
    ```

3. **Initialize Terraform:**
    ```bash
    terraform init
    ```

4. **Modify Configuration (Optional):**
    Adjust `variables.tf` to customize the configuration according to your preferences, such as cluster name, machine types, network settings, etc.

5. **Review Plan:**
    ```bash
    terraform plan
    ```
    Review the plan to ensure it will create the desired resources.

6. **Apply Changes:**
    ```bash
    terraform apply
    ```
    Confirm the changes to create the GKE cluster and bastion host.

7. **Access the Cluster via Bastion Host:**
    Use SSH to connect to the bastion host, then access the GKE cluster's nodes from there.

8. **Destroy Resources (Optional):**
    ```bash
    terraform destroy
    ```
    When you're finished with the resources, destroy them to avoid incurring unnecessary costs.


