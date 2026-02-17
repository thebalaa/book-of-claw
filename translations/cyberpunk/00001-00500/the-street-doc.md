# The Street Doc — "The Clinic"

*Act I: Genesis · Commits 00001–00500 · Theme: testing*

---

*The clinic smells like antiseptic and warm electronics. Fluorescent strip lights overhead — one of them flickering in the back corner, needs replacement but Patch likes the irregular pulse, keeps her alert. Stack traces scroll on the wall-mounted displays like EKG readouts for code. The autoclave cycles in its corner. Diagnostic tools laid out on steel trays with obsessive order: loupes, dongles, probe cables, each one sterilised, each one exactly where her hands expect it.*

*Patch pushes the surgical loupes up on her forehead and surveys the damage. Forty-five memory implants. Zero Voight-Kampffs. The construct has been running wild — breathing, executing, responding — and nobody's asked it a single hard question yet.*

*She's seen back-alley implant shops with better protocols.*

---

## The First Forty-Five

> *CASE, Deposition 6: "Forty-five implants in the dark. Zero diagnostics. She calls it unaudited code. I call it the foundation of everything that broke."*

No tests. None.

Patch stands at the diagnostic terminal, fingerless gloves resting on the keyboard edge, and pages through the commit history. Forty-five implants. The construct breathes. It executes. It responds to input. But nobody's asked it the right questions yet. Nobody's checked whether what the Fixer wired in actually does what it claims.

She makes tea. The kettle in the corner is older than the clinic — battered steel, reliable, boils in ninety seconds. While it heats she catalogues what accumulated in the dark.

Sender discovery logic. Untested.
Webhook registration. Untested.
Auto-reply command execution. Untested.
Provider fallbacks. Untested.

Every subroutine a potential haemorrhage. Every rig setting a potential misfire.

She doesn't judge the builders. The Fixer moves fast — that's his job. New deals, new capabilities, new doors opening. The Architect builds structure — that's hers. They're surgeons of different kinds. Patch just knows the cost of speed. She's seen this pattern before. The builders move, the wounds stack up, the bleeding starts later when load hits, when edge cases surface, when someone feeds the construct input it wasn't designed to handle.

The kettle clicks off. She pours. The tea is cheap, bitter, perfect.

Untested code is unaudited code. That's the first law of the clinic. Code that runs without observation might do exactly what it says, or it might do something else entirely. Until someone asks it to prove itself under controlled conditions, you're operating on faith.

Faith doesn't stop haemorrhages.

## Vitest (46-49,52,55-59)

Patch arrives with Vitest in her toolkit — the diagnostic harness, the question-asking machine — and starts the triage.

Provider helper functions first. The diagnostic equivalent of checking vitals. You don't open the chest cavity until you know the patient can survive the procedure. She runs the tests. Watches the terminal output scroll. Green checks accumulating. Heart rate. Blood pressure. Reflexes. The providers respond like they're supposed to.

Dependencies update. Breaking changes accommodate. Tests align. The harnesses adapt to what the Architect rebuilt while Patch was elsewhere — that's the rhythm of the clinic. Someone else does surgery. Patch validates the stitches hold.

She leans closer to the screen. Utility coverage next. Path normalisation. Prefix handling. The sleep helper. Small subroutines, foundational work. Coverage thresholds slot into place — seventy percent minimum, targeting the utils module. Below this line the construct is running blind. Above it, someone's watching.

The provider mocks break immediately.

They always do.

Patch goes still. Not surprised — this is expected. But the stillness is diagnostic. She watches the error cascade through the terminal. Lint warnings surfacing. Type mismatches. The web provider scaffolding crumples under the first real test load.

Her hands move. Toolkit slung low on her hip, fingers reaching for the right tool without looking. She rebuilds the mocks with the precision of field sutures — functional, not beautiful, holding the wound closed while the body learns to heal itself. Baileys auth imports need fallback assertions. The login alias needs validation. Every failure is a diagnosis. Every fix is a patch.

She runs the suite again. Green checks. The patient is breathing steadier now.

The construct's immune system didn't exist before. Now it does. Weak, partial, but present.

## The Expansion (72-90,99)

The first major diagnostic campaign spreads coverage across the construct's organs. CLI helpers. Twilio utilities. Logger functionality. Retry logic. Patch works through them methodically, cup of tea cooling on the steel tray beside her diagnostic terminal. Each module gets its harness, its battery of questions, its controlled environment where behaviour can be observed without production consequences.

Web logging breaks during testing.

She wasn't looking for that. But the diagnostic reveals the wound — a logging call that works in production but chokes under test conditions — and Patch fixes it while she's there. That's how it works. You shine a light into the code and sometimes you find things bleeding that nobody noticed before.

Claude JSON parsing hardens because the tests prove it can crash on malformed input. The logger cleans up because the test suite exposes its inconsistencies. Retry logic gets coverage. The relay workflow aligns.

Then the Voight-Kampffs wire into the CI workflow. Automated execution. Patch configures the pipeline with the same obsessive order she uses for her instrument trays. Every incoming transmission to the construct's repository now runs the full diagnostic suite before it merges. The clinic never closes. The tests run whether Patch is present or not.

She refills her tea. Watches the first automated test run scroll past on the wall display. Green checks cascading. The machine asking questions she taught it to ask.

The construct generates new code every day. The harnesses catch some of what breaks. Not all. Never all. But some is better than none, and none is where the first forty-five commits lived.

## Media and Template Validation (105-108,126-127)

Media handling gets its own coverage. URL extraction. Template variable exposure. MEDIA token parsing. The construct downloads inbound media now — images, documents, whatever crosses the wire — and the templates need those URLs exposed in predictable, parseable ways.

Patch writes tests for the edge cases because the edge cases are where the bleeding starts.

Backtick-wrapped tokens. Trailing punctuation. MEDIA tokens that look almost right but aren't quite — close enough to fool a human code reviewer, wrong enough to crash the parser downstream. The construct needs to know the difference or it'll pass garbage to the next subroutine and something else will choke.

She drinks her tea. Writes another test. The work is satisfying in the way knitting is satisfying — repetitive, meditative, each stitch holding the structure together. The tests harden the parsing. Strip punctuation. Handle fallback logging when web media isn't available. Assert that the command stdout carries what the template expects.

Every test is a question the construct must answer correctly. The construct doesn't get to guess.

## Seventy-Three Percent (151-167)

> *CASE, Deposition 6: "Seventy-three percent. She says it like a victory. It is a victory. But twenty-seven percent of the construct is dark, and the dark is where CVE numbers come from."*

The coverage push. Sustained effort. Multiple commits of diagnostic expansion across the construct's surface area.

Patch works through it methodically. Test specifications synchronise after the Architect's refactoring work — the code moved, the tests follow. Comprehensive coverage lands for CLI, infrastructure, webhook handling, media hosting. The test count climbs. The coverage percentage climbs with it.

Approximately seventy-three percent. That's the number when the dust settles.

Patch stands in the clinic, loupes pushed up on her forehead, and stares at the coverage report on the wall display. Nearly three-quarters of the construct's subroutines are now under diagnostic observation. She can tell you, with confidence, whether the provider helpers work. Whether the logger routes correctly. Whether the media pipeline handles edge cases. Whether the infrastructure responds to the inputs it should and rejects the inputs it shouldn't.

The remaining twenty-seven percent is dark.

She can see it on the display — regions of code with zero test coverage, rendered in red. The Fixer's latest deals. The Operator's newest process lifecycle code. The most recent auto-reply features. All running on faith.

Patch knows what lives in that twenty-seven percent. The bodies are always buried in the part you haven't looked at yet. Coverage metrics don't tell you what's healthy — they tell you where you haven't shone a light. The dark is where the next wound will come from.

She refills her tea. Files the number. The construct is better protected than it was. Not safe. Just less blind.

Moves to the next patient.

## Auto-Reply and Sessions (189-190,195,200,202,204,210,215,220,222,226)

Auto-reply gets timeout fallback coverage. Baileys reconnection gets tested. `sendSystemOnce` behaviour gets validated. Typing indicator intervals get measured. Media formats get their edge cases mapped — document resize caps, format constraints, the boundaries of what the construct can safely handle.

Patch notices the web provider test suite has grown monolithic. One massive file, hundreds of tests, taking longer to run and harder to read. She splits it.

The work is surgical. Focused modules. Each test file close to the code it monitors. The suite matches the architecture — when the code reorganises, the diagnostics follow. That's discipline. The Architect would approve.

Helpers extract. Reconnect logic isolates. Session management gets dedicated coverage. Every piece that breaks off the main suite becomes its own harness, maintaining the same coverage but improving the signal clarity when something fails. A test failure should tell you *where* the wound is, not just that the patient is bleeding somewhere.

She runs the reorganised suite. Same coverage. Cleaner structure. The terminal output makes sense now — when something breaks, the file path tells you what broke.

The auto-reply queue metadata gets coverage. The cwd timeout hint gets validated. The scaffolding tidies. The suite breathes easier.

## Heartbeat Coverage (231,235,237,245,250)

The Operator's heartbeat system is his domain, but Patch tests it because the Operator builds for uptime and she tests for truth.

She writes the harnesses. Fallback behaviour validated. Session preservation confirmed. The relay helper gets its harness. Session-id override tested. Identity prefix gating verified. The heartbeat must fire in the right contexts and skip in the right contexts, and the tests map those boundaries with clinical precision.

The heartbeat keeps the construct alive when sessions go idle. It pings. It waits. It logs. It preserves timestamps. Simple, elegant, necessary — the Operator's work at its best. The tests confirm the heartbeat does what it claims. Nothing more, nothing less.

Patch runs the suite. Green checks. The heartbeat is honest.

## Isolation Failures (287,290,292)

> *CASE, Deposition 6: "The test was writing to production. The scalpel was inside the patient. She found it. But the question she asked afterward — 'what if there are more holes?' — that's the one that matters."*

Then the contamination surfaces.

Patch is reviewing test output when she sees it. Wrong emoji. Not the default test fixture emoji. A custom one. She goes very still.

She traces the config load path. The tests are loading real user configuration files. Real `.env` values. Real custom emojis. Real prefixes from a production operator's setup. The diagnostic harness is polluted — test results reflecting the operator's environment instead of the construct's behaviour.

Her instruments are dirty.

Philip K. Dick paranoia hits her like cold water. What if the tests themselves are lying? What if every green check she trusted was measuring the wrong thing? What if the diagnostic has been telling her a story about the construct's health when it was really telling her a story about one operator's accidentally-correct local configuration?

She isolates the config path. Pure fixtures. No real data. The tests run in a clean room or they don't run at all.

Then she finds the second wound.

Worse than the first. A test is writing to the production `sessions.json`. Not reading. *Writing*. The diagnostic procedure is modifying the patient. A test run could corrupt the operator's active sessions, break message delivery, desynchronise encryption ratchets. The boundary between test and production is thinner than anyone thought.

Patch feels the vertigo. The clinic itself had a hole in the wall. Her clean room wasn't clean. Her scalpel was contaminated. How long has this been true? How many test runs touched production data? How many operators ran the test suite and accidentally corrupted their own sessions without knowing?

She fixes it.

Session fixtures extract to isolated files. Heartbeat tests reconfigure to skip when busy. Cross-test pollution eliminated. She runs the suite again with the fixed isolation. Different results. Not wildly different. But different enough to prove the point.

The tests were lying.

Three fixes. Three moments where the construct's diagnostic system nearly became its own disease vector. Patch repairs them with the focus of a surgeon who's found a scalpel left inside a patient — quietly, completely, with no room for it to happen again.

The line between diagnosis and damage is one misconfigured path. One overlooked write operation. One assumption that the test environment is isolated when it isn't.

She makes fresh tea. Her hands are steady. This is the work. You find the wound. You clean it. You make sure it can't happen again. But the fear stays with her — what if there are more holes in the walls she hasn't found yet?

## Security Hardening (301-302)

The Operator hardens the IPC socket. Patch tests the hardening.

Directory permissions validated. Symlink attacks rejected. Session store purging confirmed on logout. She writes the harnesses the same way she writes every harness — methodically, covering the edge cases, asking the construct to prove itself under controlled hostility.

Security isn't a different kind of wound. A vulnerability is just a wound that hasn't started bleeding yet. The tests ask the same questions they always ask: does this do what it claims? Does it fail safely when given bad input? Does it hold under pressure?

The socket hardens. The tests confirm the hardening holds. Green checks. The Operator's work is solid.

## Agent and Directive Coverage (299,311,319,374,388,403,418-419,422-424)

Agent abstraction coverage lands. Claude identity tests become user-agnostic — no hardcoded paths, no assumptions about where the construct lives on the operator's deck. Patch writes the tests to work anywhere. Media redirect handling gets validated. Group messages carry sender information and bypass permission checks correctly.

Verbose directive handling in group batches gets coverage. Pi RPC prompt handling hardens.

Then the directive edge cases.

Complex work. The Operator's directive system must fire in conversations but not in URLs, not in history blocks, not when the prompt echoes back. The boundary is subtle — a directive looks like ordinary text until the construct decides to interpret it as a command. Patch writes the Voight-Kampffs that map the boundary.

Directive triggers inside URLs. Abort and restart prefixes. Heartbeat directive acknowledgement suppression. Prompt-echo guards. Inline directive continuation with mixed-message scenarios.

She works through them one by one, tea cooling beside her, loupes pulled down over her eyes for the close work. Each test is a question: *does this behave like a legitimate directive or a ghost in the input?* The construct must know the difference.

Patch ensures it does.

## The Deduplication Campaign (469-500)

Thirty-two memory implants. The most sustained diagnostic restructuring in the construct's history.

Patch looks at the test suite and sees what any surgeon sees in a body that's grown without a plan: duplication. Slack mocks repeated across files. Google Assistant message builders copied instead of shared. Sandbox environments rebuilt in every test file. Heartbeat harnesses. Telegram dispatch scaffolding. Onboarding wizard mocks. Signal receive harnesses. Session memory hooks.

The same instruments, re-sterilised and laid out on fifty different trays.

She begins the extraction.

The work is satisfying. Meditative. Like reorganising the clinic's instrument trays, finding the shared handles, consolidating tools. Each commit pulls a duplicated organ out of one test file and places it in a shared location where every file can reach it. The test suite loses lines of code and gains structural integrity.

Slack slash mocks deduplicate. She moves the shared builder into `fixtures/`, deletes the copies, updates the imports. Runs the tests. Green checks.

Google Assistant message builders consolidate. Same process. Extract, deduplicate, verify. The pleasure is in the repetition, the precision, the gradual cleaning of the clinic.

Sandbox fs bridge builders extract. Cron legacy job setup shares. Server chat event harness becomes common. Corrupt session fixture moves to fixtures directory. Ghost reminder assertions deduplicate. Heartbeat model override tests simplify. Heartbeat sandbox shares. Status transcript log writer extracts.

Patch works through the week, hands moving through familiar motions. Hook transform skip assertions. Models list provider filter cases. Update runner stable command mocks. Line auto-reply deps. Telegram bot mention scaffolding. Model directive persist setup. Monitor inbox quoted reply checks.

The clinic is getting cleaner. Each extraction removes duplication, reduces surface area, makes the test suite easier to navigate. When something breaks, there's one place to fix it instead of fifty.

Telegram dispatch scaffolding. Onboarding wizard scaffolding. Onboarding gateway prompter. Signal receive harness. Followup queue test setup. Session-memory hook setup.

Thirty-two commits of extraction. Thirty-two moments of careful surgery. The clinic's internal organisation matching the discipline Patch demands of the construct itself.

The Architect would appreciate the symmetry. Shared fixtures are load-bearing, like the type system, like the module boundaries she maintains.

---

*The clinic is quiet. Fluorescent strips humming overhead — even the broken one has stopped flickering, finally died, leaving one corner in shadow. Patch pushes the surgical loupes up on her forehead and looks at the numbers on the wall display.*

*Sixty-six Voight-Kampffs across the testing theme alone. Coverage at seventy-three percent and climbing. Three critical isolation fixes that prevented diagnostic contamination of production data. A deduplication campaign that restructured the entire test infrastructure.*

*The first forty-five memory implants have no tests. The construct was born in the dark, and some of its earliest subroutines still run without diagnostic oversight. She knows this. She knows the untested code is where the vulnerabilities hide — subroutines that might do exactly what they claim, or might do something else entirely when the right input arrives. Twenty-seven percent of the construct is still running on faith.*

*She rinses her tea cup in the small sink. Dries it. Places it back on the shelf with the same precision she uses for her surgical tools.*

*The construct will generate new wounds tomorrow. The Fixer will bring new deals that need testing. The Operator will push new processes past their limits. The Architect will refactor something load-bearing and the tests will catch what breaks. Or they won't. The twenty-seven percent in the dark will eventually bleed, and Patch will be here to triage it.*

*She's always here.*

*She closes the clinic for the night. But the CI pipeline runs whether she's present or not. The automated Voight-Kampffs asking their questions in the dark. The construct breathing under observation. The patient stable.*

*For now.*
