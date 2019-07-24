// Configure the Google Cloud provider

provider "google" {
  credentials = "${file("credentials.json")}"
  project     = "test-assesstment-2456"
  region      = "us-east1"
}





