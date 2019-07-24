// Configure the Google Cloud provider

provider "google" {
  credentials = "${file("test-assesstment-2456-cca023a90c34.json")}"
  project     = "test-assesstment-2456"
  region      = "us-east1"
}





