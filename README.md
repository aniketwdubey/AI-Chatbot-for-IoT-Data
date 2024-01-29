# IotChatBot: Energy Consumption Chatbot with AWS Lex V2 and Lambda

This project demonstrates how to build an energy consumption chatbot using AWS Lex V2 and Lambda. Users can interact with the chatbot through text or voice to ask questions about their energy usage data stored in an S3 bucket.

**Key Features:**

* Leverages AWS Lex V2 for natural language understanding and conversation management.
* Utilizes Lambda function to process user input and retrieve data from S3.
* Provides dynamic responses based on information stored in the CSV file.
* Offers a cost-effective and scalable solution for chatbot development.

**Project Structure:**

* `bot.tf`: Defines the Lex V2 bot configuration using Terraform.
* `lambda_function.zip`: Contains the Python code for the Lambda function.
* `main.tf`: Defines the main Terraform configuration for Lambda, IAM roles, and S3 bucket.
* `provider.tf`: Configures the Terraform AWS provider.
* `S3bucket.tf`: Defines the S3 bucket to store the energy consumption data CSV file.
* `Energy Consumption Data.csv`: The CSV file containing the energy consumption data (to be uploaded manually).

**Prerequisites:**

* An AWS account with access to Lex V2, Lambda, S3, and IAM.
* Python 3.6 or later.
* Terraform version 0.12 or later.

**Deployment:**

1. **Manual Configuration (AWS Console):**
    * Create an S3 bucket and upload the `Energy Consumption Data.csv` file.
    * Create an IAM role with necessary permissions for Lex V2, Lambda, and S3.
    * Create a Lambda function and upload the `lambda_function.zip` file.
    * Create an Lex V2 bot and define intents and fulfillment logic.
    * Configure the chatbot to use the Lambda function for fulfillment.
2. **Automated Configuration (Terraform):**
    * Deploy the Terraform configuration (instructions not included in this README).

**Testing:**

* Use the AWS Lex V2 console or API to test the chatbot with different inputs.
* Verify that the chatbot returns accurate information from the S3 bucket.

**Additional Notes:**

* This is a basic example and can be extended to support more complex interactions and data sources.
* Modify the code and configuration files to fit your specific needs.
* For detailed deployment instructions, refer to the provided Terraform files.

**Author:** [Your Name/Team Name]

**License:** [License type]

**Contributing:**

We welcome contributions! Please see the CONTRIBUTING.md file for guidelines.

**Changelog:**

See the CHANGELOG.md file for details on project updates.
