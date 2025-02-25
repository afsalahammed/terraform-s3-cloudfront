# **Terraform AWS S3 + CloudFront Static Website** 🚀

## **Overview**
This project provisions a **static website hosting solution** on AWS using **Terraform**. It deploys:
- An **S3 bucket** to store website files.
- A **CloudFront distribution** as a CDN for faster global delivery.
- An **Origin Access Identity (OAI)** to securely access S3 content.
- **Bucket policies** to control access securely.

## **Prerequisites**
Before running this Terraform project, ensure you have:
- An **AWS account**.
- **Terraform installed** (≥ v1.0).
- An **AWS IAM user** with necessary permissions.
- A **globally unique S3 bucket name** (S3 bucket names must be unique across all AWS accounts).

## **Project Structure**
```
terraform-s3-cloudfront/
│── main.tf            # AWS provider configuration
│── variables.tf       # Input variables for flexibility
│── s3.tf              # S3 bucket & website configuration
│── object.tf          # Uploads index.html & error.html
│── oai.tf             # CloudFront Origin Access Identity (OAI)
│── cdn.tf             # CloudFront distribution configuration
│── output.tf          # Output values
│── README.md          # Project documentation
│── index.html         # Main website file
│── error.html         # Error page
```

## **Terraform Setup & Deployment**
Run the following commands to deploy the infrastructure:

1️⃣ **Initialize Terraform**
```sh
terraform init
```

2️⃣ **Preview the Changes**
```sh
terraform plan
```

3️⃣ **Apply the Configuration**
```sh
terraform apply -auto-approve
```

4️⃣ **View Outputs**
```sh
terraform output
```

5️⃣ **Destroy the Infrastructure (if needed)**
```sh
terraform destroy -auto-approve
```

## **Resources Created**
| Resource         | Description |
|-----------------|-------------|
| **S3 Bucket** | Stores website files and enables static website hosting |
| **CloudFront** | Serves website content globally with caching and HTTPS |
| **OAI (Origin Access Identity)** | Restricts S3 access to CloudFront only |
| **Bucket Policy** | Ensures secure access to website content |

## **Outputs**
After deployment, Terraform will display:
- **S3 Website URL** *(if direct access is enabled)*
- **CloudFront Distribution ID**
- **CloudFront URL** *(Recommended for accessing the website)*

## **Security Considerations**
⚠ **Avoid exposing S3 bucket publicly** → CloudFront with OAI ensures secure access.  
⚠ **Restrict CloudFront geo access** → Modify `geo_restriction` variable for allowed regions.  
⚠ **Use HTTPS only** → CloudFront enforces HTTPS for secure browsing.

## **Next Steps**
- **Test the website using the CloudFront URL.**
- **Improve by adding logging, monitoring, or versioning for better security.**
- **Extend with a CI/CD pipeline for automated deployments!** 🚀

---

### **Contributing**
Feel free to fork this repo and enhance the project! 😊

