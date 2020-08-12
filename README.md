# sftp-blobfuse

Based on `atmoz/sftp` but with added blobfuse for Azure Blob Storage

## Environment variables

The entrypoint expects the following environment variables:

* `AZURE_STORAGE_ACCOUNT`
* `AZURE_STORAGE_ACCESS_KEY` or `AZURE_STORAGE_SAS_TOKEN`
* `AZURE_STORAGE_ACCOUNT_CONTAINER`
* `AZURE_MOUNT_POINT`

Note: You must provide either `AZURE_STORAGE_ACCESS_KEY` or
`AZURE_STORAGE_SAS_TOKEN`. If you specify both, blobfuse will fail and
remind you "exactly one of the environment variables
`AZURE_STORAGE_ACCESS_KEY` or `AZURE_STORAGE_SAS_TOKEN` must be set."
