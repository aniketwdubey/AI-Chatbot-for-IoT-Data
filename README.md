 # AI Chatbot for IOT Data

This project deploys an AWS Lex V2 chatbot for analyzing IoT data stored in an S3 bucket. The infrastructure is defined using Terraform, and the project includes a Lambda function for chatbot fulfillment.

![Lex V2](https://github.com/aniketwdubey/AI-Chatbot-for-IoT-Data/assets/58386130/34516f52-61cf-40b0-a1b6-0a19c74bb2b6)

## Key Features:

* Leverages AWS Lex V2 for natural language understanding and conversation management.
* Utilizes Lambda function to process user input and retrieve data from S3.
* Provides dynamic responses based on information stored in the CSV file.
* Offers a cost-effective and scalable solution for chatbot development.

## Project Structure

* `bot.tf`: Defines the Lex V2 bot configuration using Terraform.
* `lambda_function.zip`: Contains the Python code for the Lambda function.
* `main.tf`: Defines the main Terraform configuration for Lambda and IAM roles.
* `provider.tf`: Configures the Terraform AWS provider.
* `S3bucket.tf`: Defines the S3 bucket to store the energy consumption data CSV file.
* `Energy Consumption Data.csv`: The CSV file containing the energy consumption data (to be uploaded manually).

## Getting Started

1. **Terraform Setup**: Make sure you have Terraform installed. If not, follow the [official installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).

2. **AWS Credentials**: Configure your AWS credentials using `aws configure` if not done already.

3. **Clone the Repository**: `git clone <repository-url>`
   ```
   git clone <repository-url>
   ```

5. **Initialize Terraform**: 
   ```
   terraform init
   ```

6. **Deploy Infrastructure**: to deploy the AWS resources.
   ```
   terraform apply
   ```

7. **Upload Data to S3**: Manually upload the CSV file (Energy Consumption Data.csv) to the S3 bucket created.

8. **Create Intents**: Create intents using lex console.

   Create 1st intent

      <img width="1440" alt="1 1" src="https://github.com/aniketwdubey/AI-Chatbot-for-IoT-Data/assets/58386130/35cc1f32-0104-4101-9c8d-8d7b035c170b">
      
      <img width="1440" alt="1 2" src="https://github.com/aniketwdubey/AI-Chatbot-for-IoT-Data/assets/58386130/8097dac7-ad71-44d7-bbac-a3cd686876ff">

      <img width="1440" alt="Screenshot 2024-01-29 at 9 12 45 PM" src="https://github.com/aniketwdubey/AI-Chatbot-for-IoT-Data/assets/58386130/138e18be-d884-465f-a708-30732f2d79cb">

      <img width="1440" alt="Screenshot 2024-01-29 at 9 13 14 PM" src="https://github.com/aniketwdubey/AI-Chatbot-for-IoT-Data/assets/58386130/d6909fa4-db97-482b-bc30-397653183469">

      <img width="1440" alt="Screenshot 2024-01-29 at 9 13 29 PM" src="https://github.com/aniketwdubey/AI-Chatbot-for-IoT-Data/assets/58386130/43bb130b-b733-4a19-86ce-9f482b96e144">

      <img width="1440" alt="Screenshot 2024-01-29 at 9 13 55 PM" src="https://github.com/aniketwdubey/AI-Chatbot-for-IoT-Data/assets/58386130/259667d5-087b-4f54-aa49-1630ce02e513">

   Create 2nd intent

      
10. **Test the Chatbot**: Interact with the chatbot using the Lex console or a chatbot client integrated with Lex.


## Notes

- The Lex V2 bot creation is currently done manually through the AWS console due to Terraform AWS provider limitations.
- Ensure proper IAM roles and policies are in place for the Lambda function to access S3 and CloudWatch Logs.
- This is a basic example and can be extended to support more complex interactions and data sources.
- Modify the code and configuration files to fit your specific needs.


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

