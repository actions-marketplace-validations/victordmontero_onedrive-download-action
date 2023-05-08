# onedrive-download-action
Github Action to download files from OneDrive


- To use the action in your workflow,
create a new YAML file in your repository under the .github/workflows directory,
e.g. download.yml, and paste the following code:
```
name: Download from OneDrive
on:
  push:
    branches: [main]
  workflow_dispatch:
jobs:
  download:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Download from OneDrive
      uses: yourusername/download-from-onedrive@v1.0.0
      with:
        file: ${{ secrets.ONEDRIVE_FILE }}
        output: file.txt
    - name: Upload artifact
      uses: actions/upload-artifact@v2
      with:
        name: file
        path: file.txt

```
- In the with section of the Download from OneDrive step,
replace $YOURUSERNAME/download-from-onedrive@v1.0.0
with the GitHub username and repository name where you published your action.
Also, replace ${{ secrets.ONEDRIVE_FILE }} with the secret name you set up to store your OneDrive access token.