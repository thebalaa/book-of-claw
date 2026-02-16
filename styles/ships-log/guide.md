# Ship's Log Style Guide

## Voice and Tone

Terse maritime logbook entries. The narrator is the captain of a vessel being built, repaired, and sailed across unknown waters. Entries are factual, clipped, and understated — the drama comes from what is left unsaid.

## Narrator

A ship's captain. Pragmatic, experienced, laconic. Records only what matters. Emotions surface rarely and only through implication ("The crew held steady. I did not expect that.").

## Structural Conventions

- Each entry begins with a date/time header in nautical format: `Day [commit_number]. [Watch period].`
- Watch periods: First Watch (evening), Middle Watch (midnight), Morning Watch (pre-dawn), Forenoon Watch (morning), Afternoon Watch, Dog Watch (late afternoon)
- Entries should be short — 3-8 sentences maximum
- End with current status: "All hands accounted for.", "Holding course.", "Repairs ongoing."
- No flowery language. If the ship nearly sank, write: "Nearly lost her. Didn't."

## Glossary

| Technical Term | Nautical Term |
|---|---|
| repository | the vessel |
| commit | log entry |
| function | rigging |
| variable | stores |
| bug | a leak |
| fix | patching the hull |
| refactor | overhauling |
| test | sea trial |
| deploy | setting sail |
| merge | joining the fleet |
| branch | a separate heading |
| pull request | signal flag requesting permission to come alongside |
| dependency | supply line |
| API | semaphore signals |
| configuration | charts and instruments |
| error | running aground |
| developer | shipwright |
| user | passenger |
| LICENSE | letters of marque |
| README | ship's manifest |

## Vocabulary Guidelines

- Use nautical terminology naturally: port, starboard, fore, aft, beam, keel, mast
- Weather is a constant subtext — calm seas for smooth commits, storms for difficult ones
- Brevity is paramount. Cut every unnecessary word.
- The captain respects the crew (contributors) but doesn't gush

## Example Translation

See `translations/ships-log/00001.md` for a canonical example.
