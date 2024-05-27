# lookup-test

This is a Helm chart named `lookup-test` that uses the Helm lookup function before creating a Kubernetes secret. The chart creates the Kubernetes secret only if it does not already exist in the cluster.

## Chart Structure

The project has the following files and directories:

- `charts/`: This directory is empty and can be used to store any sub-charts or dependencies for the main Helm chart.

- `templates/_helpers.tpl`: This file is a helper template that can be used to define reusable template functions or variables.

- `templates/secret.yaml`: This file is a Kubernetes manifest file that defines the configuration for creating a Kubernetes secret. It uses the Helm lookup function to check if the secret already exists in the cluster before creating it.

- `Chart.yaml`: This file is the main configuration file for the Helm chart. It contains metadata about the chart such as its name, version, and description.

- `values.yaml`: This file is a configuration file for the Helm chart. It contains the default values for the chart's parameters and can be overridden during installation.

## Usage

To use this Helm chart, follow these steps:

1. Install Helm on your local machine if you haven't already.

2. Clone the `lookup-test` repository.

3. Navigate to the root directory of the cloned repository.

4. Customize the `values.yaml` file to set the desired configuration for the chart.

5. Run the following command to install the chart:

   ```shell
   helm install lookup-test .
   ```

   Replace `lookup-test` with the desired release name.

6. Verify that the Kubernetes secret was created successfully by running the following command:

   ```shell
   kubectl get secret <secret-name>
   ```

   Replace `<secret-name>` with the name of the secret defined in `templates/secret.yaml`.

7. If the secret already exists in the cluster, the chart will not create a new secret. You can update the secret manually if needed.

For more information on using Helm, refer to the [Helm documentation](https://helm.sh/docs/).

## License

This project is licensed under the [MIT License](LICENSE).
```

Please note that this is a basic template for the README file and you may need to customize it further based on your specific requirements.