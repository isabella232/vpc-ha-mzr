
###################################################################################################
###################################################################################################
#####                This Terraform file defines the variables used in COS Module           #######
#####                                      COS Module                                        ######
###################################################################################################
###################################################################################################

/**
* Name: cos_bucket_plan
* Type: String
* Desc: List of available plan for the COS bucket. 
* Exam: Followings are the list of available
* 1. lite
* 2. standard
**/
variable "cos_bucket_plan" {
  description = "Please enter plan name for COS bucket. Possible value is \n1:lite\n2:standard"
  type        = string
  default     = ""
  validation {
    condition     = contains(["lite", "standard", ""], var.cos_bucket_plan)
    error_message = "Error: Incorrect value for cos_bucket_plan. Allowed values are lite, standard."
  }
}


/**
* Name: cross_region_location
* Type: String
* Desc: Cross Region service provides higher durability and availability than using a single region, 
* at the cost of slightly higher latency. This service is available today in the U.S., E.U., and A.P. areas. 
* Followings are the list of available cross_region_location as of now.
* 1. us
* 2. eu
* 3. ap 
**/
variable "cross_region_location" {
  description = "Cross Region service provides higher durability and availability than using a single region, at the cost of slightly higher latency. This service is available today in the U.S., E.U., and A.P. areas."
  type        = string
  default     = ""
  validation {
    condition     = contains(["us", "eu", "ap", ""], var.cross_region_location)
    error_message = "Error: Incorrect value for cross_region_location. Allowed values are us, eu, ap."
  }
}

/**
* Name: storage_class
* Type: String
* Desc: Storage class helps in choosing a right storage plan and location and helps in reducing the cost. 
* Followings are the list of available storage_class as of now.
* 1. Smart Tier
* 2. Standard
* 3. Vault
* 4. Cold Vault
* Note: Flex has been replaced by Smart Tier for dynamic workloads. 
* Flex users can continue to manage their data in existing Flex buckets, although no new Flex buckets may be created. Existing users can reference pricing information
**/
variable "storage_class" {
  description = "Storage class helps in choosing a right storage plan and location and helps in reducing the cost."
  type        = string
  default     = ""
  validation {
    condition     = contains(["standard", "vault", "cold", "smart", ""], var.storage_class)
    error_message = "Error: Incorrect value for storage_class. Allowed values are standard, vault, cold, or smart."
  }
}

/**
* Name: bucket_location
* Type: String
* Desc: The location of the COS bucket. 
**/
variable "bucket_location" {
  description = "The location of the COS bucket"
  type        = string
  default     = ""
}

/**
* Name: obj_key
* Type: String
* Desc: The name of an object in the COS bucket. This is used to identify our object. 
**/
variable "obj_key" {
  description = "The name of an object in the COS bucket. This is used to identify our object."
  type        = string
  default     = ""
}

/**
* Name: obj_content
* Type: String
* Desc:  Literal string value to use as an object content, which will be uploaded as UTF-8 encoded text. Conflicts with content_base64 and content_file. 
**/
variable "obj_content" {
  description = "Literal string value to use as an object content, which will be uploaded as UTF-8 encoded text. Conflicts with content_base64 and content_file"
  type        = string
  default     = ""
}

/**               
#################################################################################################################
*                                   End of the Variable Section 
#################################################################################################################
**/