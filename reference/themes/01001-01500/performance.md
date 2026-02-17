# Theme: Performance

Performance commits in the 1001-1500 range address gateway health caching, webchat panel caching, context menu prewarming, and screenshot size optimization. These are targeted improvements rather than a broad optimization campaign.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01012 | gateway: cache health snapshot | 2025-12-09 23:38 |
| 01090 | fix(mac): cache webchat panel | 2025-12-12 15:33 |
| 01212 | macOS: prewarm context menu card | 2025-12-13 03:42 |
| 01306 | feat(browser): clamp screenshots under 5MB | 2025-12-13 18:08 |

## Narrative

Commit 01012 added health snapshot caching to the gateway server with configurable refresh intervals, broadcasting health status events to connected clients and managing health state more efficiently instead of recalculating on every request.

Commit 01090 added panel session caching to the macOS WebChat panel, preventing duplicate panel windows when toggling with different session keys. Panels now track which session they are bound to, avoiding redundant WebView creation.

Commit 01212 added prewarming logic for the context menu card, preparing the card view in advance so it displays faster when the menu appears. This improves perceived performance of the status bar menu interaction.

Commit 01306 implemented intelligent screenshot normalization that automatically resizes and compresses oversized screenshots to stay under 5MB while maintaining visual quality. This was accompanied by comprehensive test coverage for screenshot sizing across various quality levels.

## Cross-references

- [logging](logging.md) -- health caching relates to gateway observability
- [build](build.md) -- screenshot clamping affects browser automation pipeline
