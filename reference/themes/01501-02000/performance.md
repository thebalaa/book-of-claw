# Theme: Performance

Performance commits in the 01501-02000 range span 16 entries addressing AVAudioEngine lazy initialization, chat history payload capping, WebSocket log optimization, client maxPayload increases, node pairing polling reduction, gateway environment check offloading and throttling, bytecode-compiled embedded gateway, WhatsApp batching delay removal, browser hook timeout extensions, non-blocking web inbox, main-thread host lookup offloading, and DMG image size optimization.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01509 | fix(macos): lazy-init AVAudioEngine to prevent Bluetooth audio ducking | 2025-12-16 10:41 |
| 01513 | fix(gateway): cap chat.history payload size | 2025-12-16 19:34 |
| 01514 | fix(gateway): cap chat.history to 1000 messages | 2025-12-16 19:44 |
| 01515 | fix(gateway): clamp chat.history to 1000 max | 2025-12-16 19:55 |
| 01517 | fix(chat): reduce system spam and cap history | 2025-12-16 20:35 |
| 01684 | Gateway: optimize ws logs in normal mode | 2025-12-18 13:27 |
| 01691 | Gateway: raise client maxPayload | 2025-12-18 19:48 |
| 01729 | fix(macos): reduce node pairing polling | 2025-12-19 13:58 |
| 01736 | perf: move gateway env checks off main | 2025-12-19 17:54 |
| 01740 | perf: throttle gateway environment checks | 2025-12-19 18:21 |
| 01757 | perf(macos): compile embedded gateway with bytecode | 2025-12-19 22:11 |
| 01771 | fix: remove WhatsApp batching delay | 2025-12-20 01:36 |
| 01788 | fix(browser): extend hook arm timeouts | 2025-12-20 09:43 |
| 01880 | fix: make web inbox non-blocking | 2025-12-20 18:24 |
| 01889 | fix: move host lookup off main thread | 2025-12-20 19:26 |
| 01911 | perf: shrink rw image before lzma convert | 2025-12-20 19:44 |

## Narrative

### Payload and History Limits (Commits 01509-01517)

AVAudioEngine was lazy-initialized to prevent Bluetooth audio ducking (01509). Gateway chat.history payload was progressively capped (01513-01515) and system spam reduced (01517), preventing oversized WebSocket frames from degrading performance.

### Gateway and Build Optimization (Commits 01684-01757)

WebSocket logs were optimized in normal mode (01684). Client maxPayload was raised (01691) to handle larger legitimate payloads. Node pairing polling frequency was reduced (01729). Gateway environment checks were moved off the main thread (01736) and throttled (01740). The embedded gateway was compiled with bytecode (01757) for faster startup.

### Network and Image Optimization (Commits 01771-01911)

WhatsApp batching delay was removed (01771) for lower latency. Browser hook arm timeouts were extended (01788). Web inbox was made non-blocking (01880). Host lookup was moved off the main thread (01889). DMG read-write image was shrunk before LZMA conversion (01911) for smaller distribution size.

## Cross-references

- [networking](networking.md) -- network performance improvements overlap
- [build](build.md) -- bytecode compilation and image optimization are build-related
- [bugfix](bugfix.md) -- some performance fixes address latency bugs
