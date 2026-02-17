# Theme: Networking

Networking commits in the 1001-1500 range focus on Bonjour service discovery, gateway advertisement, and WebSocket reconnection. Work includes fixing Bonjour default domain resolution, implementing gateway beacons and presence bridging, normalizing hostnames for beacons, fixing gateway hostname advertisement, and handling WebChat WebSocket reconnection.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01155 | fix(bridge): use default Bonjour domain | 2025-12-12 21:59 |
| 01217 | feat(discovery): gateway bonjour + node pairing bridge | 2025-12-13 03:47 |
| 01225 | feat(discovery): bonjour beacons + bridge presence | 2025-12-13 04:28 |
| 01246 | fix(gateway): advertise bonjour hostname | 2025-12-13 18:51 |
| 01453 | fix(webchat): reconnect gateway ws | 2025-12-14 03:26 |

## Narrative

Commit 01155 changed Bonjour discovery to use the default domain (nil) instead of explicitly specifying a domain, allowing proper mDNS resolution across different network segments and simplifying configuration.

Commit 01217 implemented gateway discovery via Bonjour and a node pairing bridge, allowing gateways to announce themselves on the local network and clients to discover and pair with them. Commit 01225 extended this with Bonjour beacon broadcasting and presence bridging, so gateways advertise their availability and bridge presence information from discovered nodes.

Commit 01246 fixed gateway Bonjour advertisement to include the correct hostname, ensuring clients can properly connect using the advertised name. Finally, commit 01453 fixed WebChat WebSocket reconnection logic, updating both the bootstrap and main webchat bundle to properly handle connection failures and restore gateway WebSocket state.

## Cross-references

- [logging](logging.md) -- Bonjour advertisement failure logging supports networking diagnostics
- [debugging](debugging.md) -- iOS discovery debug logs relate to network troubleshooting
