# Azure Security Center Recommendations

This guide provides insights into security recommendations provided by Azure Security Center to help you enhance the security posture of your Azure environment.

## Table of Contents

- [Introduction](#introduction)
- [Security Baseline Policy](#security-baseline-policy)
- [Network Security Groups (NSGs)](#network-security-groups-nsgs)
- [Resource Compliance](#resource-compliance)
- [Custom Policies](#custom-policies)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Azure Security Center continuously assesses the security state of your Azure resources and provides recommendations to address potential security issues. This guide explores some of the key security recommendations and how to implement them effectively.

## Security Baseline Policy

### [security-policy.json](./security-policy.json)

This JSON file defines a security policy named "Security Baseline Policy" that enforces security baselines for resources. It includes rules like requiring disk encryption and Network Security Group associations.

### [Learn More](./security-policy.json)

## Network Security Groups (NSGs)

Explore recommendations related to Network Security Groups (NSGs):

- **NSG Best Practices**: Learn about best practices for configuring NSGs to secure network traffic.
- **NSG Monitoring**: Implement monitoring for NSG flow logs to detect and respond to network threats.

## Resource Compliance

Understand how Azure Security Center assesses resource compliance:

- **Compliance Score**: Learn about the compliance score and how to improve it.
- **Resource Hygiene**: Recommendations for maintaining resource hygiene and security.

## Custom Policies

Discover how to create custom security policies tailored to your organization's specific security requirements:

- **Policy Authoring**: Author custom policies to enforce unique security standards.
- **Policy Assignment**: Assign policies to resource groups and subscriptions.

## Contributing

We welcome contributions! If you have insights, tips, or additional resources related to Azure Security Center recommendations, please follow our [Contribution Guidelines](../CONTRIBUTING.md) to contribute to this guide.

## License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.
