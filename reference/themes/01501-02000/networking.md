# Theme: Networking

Networking commits in the 01501-02000 range span 25 entries covering wide-area Bonjour DNS-SD discovery over Tailscale, unicast discovery domains across iOS and Android, UTF-8 TXT record handling, Bonjour escaped character decoding, cleartext and HTTP loading policies, SSH tunnels for node control, loopback bridge probing, tailnet DNS hints, duplex upgrade sockets, non-blocking web inbox, main-thread host lookup offloading, provider status updates, remote gateway tunnel re-establishment, and MIME header preference for media extensions.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01531 | iOS: allow unicast DNS-SD discovery domain | 2025-12-17 14:14 |
| 01532 | Docs: secure wide-area Bonjour over Tailscale | 2025-12-17 14:27 |
| 01536 | Android: add unicast discovery domain + app icon | 2025-12-17 15:29 |
| 01537 | Android: fix unicast discovery address resolution | 2025-12-17 15:32 |
| 01541 | Gateway: wide-area Bonjour via clawdis.internal | 2025-12-17 17:01 |
| 01542 | Nodes: auto-discover clawdis.internal | 2025-12-17 17:01 |
| 01618 | fix: Use system DNS for wide-area discovery | 2025-12-18 01:04 |
| 01628 | fix: Improve wide-area bridge discovery | 2025-12-18 01:40 |
| 01630 | fix: Decode UTF-8 TXT records | 2025-12-18 01:58 |
| 01654 | fix(android): allow cleartext for tailnet web | 2025-12-18 09:12 |
| 01692 | iOS: allow HTTP loads in WKWebView | 2025-12-18 19:59 |
| 01710 | iOS: allow Tailnet/MagicDNS canvas actions | 2025-12-19 00:52 |
| 01716 | feat: add mac node screen recording and ssh tunnel | 2025-12-19 02:33 |
| 01719 | feat: route mac control via nodes | 2025-12-19 03:16 |
| 01767 | fix: decode bonjour escaped utf8 | 2025-12-19 23:21 |
| 01784 | fix(mac): probe loopback bridge | 2025-12-20 03:05 |
| 01828 | fix: auto-detect tailnet DNS hint | 2025-12-20 14:23 |
| 01837 | fix: include tailnetDns in wide-area beacons | 2025-12-20 15:02 |
| 01877 | fix: accept duplex upgrade sockets | 2025-12-20 18:00 |
| 01880 | fix: make web inbox non-blocking | 2025-12-20 18:24 |
| 01889 | fix: move host lookup off main thread | 2025-12-20 19:26 |
| 01955 | feat(web): emit provider status updates | 2025-12-20 23:30 |
| 01968 | fix(mac): re-ensure remote gateway tunnel | 2025-12-21 00:22 |
| 01974 | fix: restore canvas action bridge | 2025-12-21 00:53 |
| 01998 | fix: prefer header mime for media extensions | 2025-12-21 02:34 |

## Narrative

### Wide-Area Discovery (Commits 01531-01630)

iOS unicast DNS-SD discovery domain was enabled (01531), followed by Android (01536-01537). The gateway advertised wide-area Bonjour via clawdis.internal (01541) with node auto-discovery (01542). System DNS fallback was added (01618). Wide-area bridge discovery was improved (01628) and UTF-8 TXT record decoding was fixed (01630).

### Platform Policies and Node Control (Commits 01654-01767)

Android cleartext was allowed for tailnet web (01654). iOS HTTP loads were enabled in WKWebView (01692). Tailnet/MagicDNS canvas actions were allowed on iOS (01710). Mac node screen recording with SSH tunnels (01716) and control routing via nodes (01719) expanded remote capabilities. Bonjour escaped UTF-8 was decoded (01767).

### Reliability and Performance (Commits 01784-01998)

Loopback bridge probing was added (01784). Tailnet DNS hints were auto-detected (01828) and included in wide-area beacons (01837). Duplex upgrade sockets were accepted (01877). Web inbox was made non-blocking (01880). Host lookup was moved off the main thread (01889). Provider status updates were emitted (01955). Remote gateway tunnel was re-ensured (01968). Canvas action bridge was restored (01974). Header MIME preference for media extensions closed the range (01998).

## Cross-references

- [core-feature](core-feature.md) -- discovery and tunneling enable core multi-device features
- [bugfix](bugfix.md) -- many networking fixes address discovery reliability
- [security](security.md) -- tailscale and SSH overlap with security
