terraform {
  required_providers {
    inventory = {
      source = "deviacterraform/inventory"
    }
  }
}

# Configure the connection details for the Inventory service
provider "inventory" {
  host = "127.0.0.1"
  port = "8080"
}

# Read in a existing Inventory item
data "inventory_item" "example" {
  id = "1001"
}


# Create new Inventory item
resource "inventory_item" "example" {
  name = "Jones Extreme Sour Cherry Warhead Soda"
  tag  = "USD:2.99"
}
