


gcloud compute networks create staging --subnet-mode=custom --project=$DEVSHELL_PROJECT_ID

gcloud compute networks create development --project=$DEVSHELL_PROJECT_ID

gcloud compute networks subnets create dev-1 \
    --network=development \
    --region=us-west1 \
    --range=10.1.0.0/24 \
    --project=$DEVSHELL_PROJECT_ID

gcloud compute networks subnets delete dev-1 --region=us-west1 --quiet

gcloud compute networks subnets create dev-1 \
    --network=development \
    --region=us-east1 \
    --range=10.1.0.0/24 \
    --project=$DEVSHELL_PROJECT_ID




