# HashiCorp Vault Unsealer

This service runs every 10 seconds to see if the vault is unsealed. If it is not, it transmits it's portion of the Unseal Key.

If the service stops for any reason it must be automatically restarted or risk vault not being available to client applications.
