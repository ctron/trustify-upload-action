# Trustify SBOM upload action

## Inputs

### `target`

The URL of the target upload API.

### `files`

A list of files or directories to process. Each path on a new line.

### `issuerUrl` (optional)

The URL to the OIDC issuer. This can be used in combination with `clientId` and `clientSecret` to acquire an OIDC
token which will then be used for authenticating during the upload process.

### `clientId` (optional)

The ID of the OIDC client.

### `clientSecret` (optional)

The secret of the OIDC client.

## Example usage

```yaml
uses: ctron/trustify-upload-action@v1
with:
  target: https://my.trustify.instance.example.com
  files: |
    sbom1.json
    more-sboms/

  issuerUrl: <OIDC issuer URL>
  clientId: <OIDC client id>
  clientSecret: <OIDC client secret>
```
