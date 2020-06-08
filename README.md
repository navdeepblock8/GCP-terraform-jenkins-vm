This is a terraform boiler plate project to launch an <b>GCP VM for Jenkins and Docker </b> . This will launch a GCP VM in Hong-Kong region. 

Steps to run this project:

1.) Clone this project to your machine.<br>
2.) Create a project in your GCP account, enable billing for that project and enable Compute Engine for the same.<br>
3.) Create a service account for the project with Compute admin policy and download credentials for that.<br>
4.) Go to <b>Providers.tf</b> file and change the credentials file path with your gcp service account credentials path.<br>
5.) Provide required variables in <b>Variables.tf</b> file and replace them with your own variables.<br>
6.) Run <b> Terraform init</b> and then <b>Terraform Apply</b> commands.<br>

Your jenkins service will be running at port <b>8080</b> on the ip address provided by running command terraform apply.