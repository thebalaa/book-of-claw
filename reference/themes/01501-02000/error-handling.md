# Theme: Error Handling

Error handling commits in the 01501-02000 range span 14 entries covering FileHandle read guards, gateway agent message validation, image MIME hardening, WhatsApp error formatting, oversized image failure surfacing, gateway failure details, device model decoding hardening, skills loading crash prevention, remote gateway error clarification, Telegram chat ID normalization, SSH host key acceptance, skill install target access, gateway handshake crash prevention, and onboarding workspace bootstrap guards.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01512 | test(macos): guard FileHandle read APIs | 2025-12-16 10:41 |
| 01540 | GatewayConnection: validate agent message | 2025-12-17 16:09 |
| 01548 | fix(pi): harden image read mime | 2025-12-17 15:29 |
| 01688 | Web: improve WhatsApp error formatting | 2025-12-18 18:03 |
| 01701 | Agent: avoid silent failures on oversized images | 2025-12-18 22:58 |
| 01745 | fix: surface gateway failure details | 2025-12-19 18:48 |
| 01772 | fix: harden device model decoding | 2025-12-20 01:48 |
| 01798 | fix(skills): prevent skills loading crash | 2025-12-20 11:49 |
| 01838 | fix: clarify remote gateway error | 2025-12-20 15:05 |
| 01842 | fix(telegram): normalize chat ids and improve errors | 2025-12-20 14:21 |
| 01917 | fix: accept new ssh host keys | 2025-12-20 21:06 |
| 01932 | fix: fix skill install target access | 2025-12-20 22:01 |
| 01981 | fix(gateway): avoid crash in handshake auth | 2025-12-21 00:41 |
| 01996 | fix(mac): guard onboarding workspace bootstrap | 2025-12-21 01:31 |

## Narrative

### Input Validation (Commits 01512-01701)

FileHandle read APIs were guarded (01512). Gateway agent messages were validated (01540). Image read MIME was hardened (01548). WhatsApp error formatting was improved (01688). Oversized image failures were surfaced instead of silently dropped (01701).

### System Resilience (Commits 01745-01996)

Gateway failure details were surfaced (01745). Device model decoding was hardened (01772). Skills loading crash was prevented (01798). Remote gateway error messages were clarified (01838). Telegram chat IDs were normalized with improved error messages (01842). SSH host key acceptance was automated (01917). Skill install target access was fixed (01932). Gateway handshake auth crash was prevented (01981). Onboarding workspace bootstrap was guarded (01996).

## Cross-references

- [bugfix](bugfix.md) -- error handling improvements often accompany bug fixes
- [security](security.md) -- input validation overlaps with security hardening
- [core-feature](core-feature.md) -- new features require error handling for edge cases
