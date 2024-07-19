# Trustify SBOM upload action

## Inputs

### `target`

The URL of the target upload API.

### `files`

A list of files or directories to process. Each path on a new line.

## Example usage

```yaml
uses: ctron/trustify-upload-action@main
with:
  target: https://my.trustify.instance.example.com
  files: |
    sbom1.json
    more-sboms/

  issuerUrl: <OIDC issuer URL>
  clientId: <OIDC client id>
  clientSecret: <OIDC client secret>
```
