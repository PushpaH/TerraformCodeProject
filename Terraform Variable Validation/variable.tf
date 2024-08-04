variable "location01" {
  type        = string
  description = "Location of the resource group 01"
}

variable "location02" {
  type = string
  validation {
    condition     = var.location02 != var.location01
    error_message = "Location 02 should be different from Location 01"
  }
}
