# teksands-task
## technical-challenge-assignment
`Teksands.ai Your Talent Solutions Partner.`

1. Setup a Kubernetes cluster on an infrastructure of your choice (EKS/AKS,...) or your own environment 
2. Install Istio service mesh on the Kubernetes Cluster created in step 1. 
3. Debug and deploy a sample application `(https://github.com/aztec-se-adp/crp2-tech- challenge)` into the created   cluster with service mesh enabled for the application. 
4. Implement a Python or Golang app / script to perform a periodically health-check for the cluster/apps e.g.: usage of the pods (cpu,memory), status of pod/node...etc without using kubectl if possible. 
5. All the tasks above must be managed in the automation manner / infrastructure as code / configuration as code using terraform.

****** What is IaC? ******
    Infrastructure as code (IaC) means to manage your IT infrastructure using configuration
    files.

# Cluster Creation

1. Set-up a Kubernetes cluster on an infrastructure of EKS.
   - Created "cluster.tf" file for creation of cluster.
   - VPC creation, IAM role for service account, TLS certificate etc.
2.  Installed Istio service mesh on the Kubernetes Cluster.
*  Istio is a service mesh—a modernized service    networking layer that provides a transparent and language-independent way to flexibly and easily automate application network functions. It is a popular solution for managing the different microservices that make up a cloud-native application.
    - Its Entry is done in `cluster.tf` at last.
3. Implement a Python script to perform a periodically health-check for the cluster/apps for checking usage of pods, status of pods.


# Difficuty & Challenges

- Cluster was created by own.
- It was difficult to Install Istio service mesh on Kubernetes cluster without Helm. 
- Used Helm but still script was providing an error `Target machine actively refused it` .
- For periodically health-check script, I took the help of documentation available on google.
- For completing this task I used the medium YouTube, terraform.io, Github.



