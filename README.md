# AI Chatbot for IOT Data

This project deploys an AWS Lex V2 chatbot for analyzing IoT data stored in an S3 bucket. The infrastructure is defined using Terraform, and the project includes a Lambda function for chatbot fulfillment.

## Key Features:**

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

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Getting Started

1. **Terraform Setup**: Make sure you have Terraform installed. If not, follow the [official installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).

2. **AWS Credentials**: Configure your AWS credentials using `aws configure` if not done already.

3. **Clone the Repository**: `git clone <repository-url>`
   ```
   git clone <repository-url>
   ```

5. **Initialize Terraform**: Run `terraform init` in the project directory.

6. **Deploy Infrastructure**: Execute `terraform apply` to deploy the AWS resources.

7. **Upload Data to S3**: Manually upload the CSV file (Energy Consumption Data.csv) to the S3 bucket created.

8. **Test the Chatbot**: Interact with the chatbot using the Lex console or a chatbot client integrated with Lex.

## AWS Resources

### Prerequisites

What things you need to install the software and how to install them

```
Give examples
```

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
