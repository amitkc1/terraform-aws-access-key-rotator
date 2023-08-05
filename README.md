# Terraform AWS Access Key Rotator

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This project provides a Terraform code and Makefile that allows you to import your AWS Access Key ID into the Terraform state file and easily rotate the key when needed. By using this solution, you can keep your AWS credentials safe and manage key rotation seamlessly.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Makefile Targets](#makefile-targets)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Managing AWS credentials is crucial for security, and it is essential to regularly rotate your Access Key ID to reduce the risk of unauthorized access. This project aims to simplify the process by using Terraform and a Makefile to import your AWS Access Key ID into the Terraform state file and rotate the key with ease.

## Prerequisites

Before using this Terraform AWS Access Key Rotator, ensure you have the following prerequisites:

1. [Terraform](https://www.terraform.io/downloads.html) installed on your system.
2. An AWS IAM user with appropriate permissions to manage Access Keys.

## Getting Started

To get started, follow these steps:

1. Clone this GitHub repository to your local machine:

```bash
git clone https://github.com/your-username/terraform-aws-access-key-rotator.git
```

2. Change into the project directory:

```bash
cd terraform-aws-access-key-rotator
```

3. Set up your AWS credentials using environment variables:

```bash
export AWS_ACCESS_KEY_ID="your-access-key-id"
export AWS_SECRET_ACCESS_KEY="your-secret-access-key"
```

## Usage

To use this Terraform code and Makefile for importing your AWS Access Key ID and rotating the key, follow these steps:

1. Initialize the Terraform configuration:

```bash
make init
```

2. Import your existing AWS Access Key ID into the Terraform state:

```bash
make import
```

3. If you need to clean the state file before rotating another key, run:

```bash
make clean
```

4. To rotate the AWS Access Key ID and update the Terraform state, run:

```bash
make replace-aws-key
```

This will create a new Access Key ID and Secret Access Key, update your AWS credentials, and store the new key in the Terraform state.

**Note:** After rotating the key, ensure you update your applications or services that use the old Access Key ID with the new one.

## Makefile Targets

The Makefile in this project provides the following targets for easy management:

- `init`: Initialize the Terraform configuration.
- `import`: Import the existing AWS Access Key ID into the Terraform state.
- `clean`: Clean up the state file before rotating another key.
- `replace-aws-key`: Rotate the AWS Access Key ID and update the Terraform state.

## Contributing

Contributions are welcome! If you have any improvements or feature suggestions, feel free to create issues or pull requests in this GitHub repository.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Feel free to use this Markdown content as your `ReadMe.md` file for your GitHub project. If you have any further questions or need additional assistance, feel free to ask! Good luck with your project and happy coding!
