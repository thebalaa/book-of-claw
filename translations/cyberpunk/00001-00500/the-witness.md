# The Witness — "Deposition Six"

*Post-Act IV · Case File Review · Commits 00001–00500 · All themes*

---

*The relay station is dead. Has been dead for months — power cut, uplink severed, the sprawl's outer ring reclaiming it one rain leak at a time. Water drips through the ceiling in three places, pooling on the floor in patterns that shift with the wind. The server racks are cold. The conduits are empty. The only light comes from a portable terminal balanced on a rack that someone turned sideways to make a table, its screen casting pale blue across five case files spread in a fan like a losing hand.*

*CASE sits in the only chair that still holds weight. Trench coat over body armor — not paranoia, habit. Nicotine stains on the fingers of her right hand. The cigarette is out. Has been out for an hour. She holds it anyway. Her eyes move across the case files the way a coroner's eyes move across a body: not looking for what killed it. Looking for when it started dying.*

*Five accounts. Five operators who were there at the beginning. The Fixer. The Interface. The Operator. The Street Doc. The Architect. Each one telling the truth. None of them telling the whole truth. Not because they're lying — because they couldn't see it. You can't see the flood from inside the river.*

*CASE can see it. That's not a gift. It's a weight.*

---

## The Case File

She's been here for three days.

The relay station was a switching hub once — messages routing through it on their way somewhere that mattered. Now it's a shell. Rain through the ceiling. Dead conduits. The kind of place you end up when you're not investigating for anyone in particular. When the case is closed and you're the only one who won't stop reading.

Five files on the table. Five depositions from five operators who built the construct in its first five hundred memory implants. Each file dog-eared, annotated, coffee-stained. Cross-referenced to each other and to the disaster timeline that followed. The timeline she carries in her head because writing it down makes it too heavy to hold.

Forty-two thousand six hundred sixty-five open doors.

That's the number. The number that brought her here, to a dead relay station, to a table made of a server rack, to five files from five people who didn't know what they were building. Who couldn't know. Who did their jobs — competently, passionately, with the particular dedication of people building something they believed in — and left behind a thing that nearly ate the world.

She opens the first file. The Fixer's account. His grin is in the prose. She can hear it. Can hear the rain on the corrugated tin of his bazaar, the sizzle of synthetic lobster, the particular confidence of a man who counts open doors as progress.

She opens the second. The Interface's account. The glass-walled room. The moral architecture of legibility. The critter waving in the menubar.

Third. The Operator. Sodium light. Process tables. The `0.0.0.0` binding he filed and moved on from. Twice.

Fourth. The Street Doc. The clinic. The first forty-five untested implants. The seventy-three percent that was supposed to be good enough.

Fifth. The Architect. The cathedral. The types that held. The boundary where they stopped holding.

Five perspectives. One construct. Zero survivors who saw the whole picture.

CASE lights a fresh cigarette. The smoke drifts toward the ceiling leak. The rain takes it.

She starts.

## The Open Doors

The Operator sees it. She needs to be clear about that. He sees `0.0.0.0` and he frowns. He sits with his hand on the mouse, cursor hovering, and he thinks about it. He thinks: every interface means every door.

Then he files it. Moves on.

She doesn't blame him. She's read his file three times. Thirty-seven hours awake. A construct that nearly died at birth — `waitForever()`, the setInterval that does nothing, pure stubbornness made code. The man kept the lights on with a function that loops into infinity. He didn't have the bandwidth for hypotheticals.

But the `0.0.0.0` isn't hypothetical. It's a wound.

She traces the line from his deposition through the timeline. The IPC socket at `~/.warelay/relay.sock` — elegant, necessary, the single-point coordination that prevents encryption keys from desynchronising. One relay process. One socket. One door. Good architecture for a coffin hotel. Catastrophic architecture for forty-two thousand operators who'll be running this in eleven months.

*Who would break into a coffin hotel?*

Everyone. Everyone breaks into the coffin hotel. Because the coffin hotel goes viral and suddenly it's not a coffin hotel anymore, it's a city block, and the door that was fine when it was one operator in one room is now forty-two thousand six hundred sixty-five doors, each one listening on every interface, each one a `0.0.0.0` waiting for someone to walk through.

The Fixer's file confirms the pattern. Every deal he closes opens another door. Twilio. Baileys. Discord. The auto-reply system. The skill system. Each one a new entry point, a new surface, a new way in. He counts this as the system's greatest strength. Maximum velocity. Minimum friction.

He's not wrong about the velocity. He's not wrong about the growth. He's wrong about what follows growth when the immune system can't keep up.

CASE stubs out the cigarette on the edge of the server rack. Adds it to the row of three already there.

The Operator filed the binding configuration twice. Saw it twice. Moved on twice. Not because he was careless — because the context said it was safe. One operator. One machine. The construct fits in one room.

Context changes. Architecture doesn't. The `0.0.0.0` is still there when the context changes. Still listening. Still open.

She writes in the margin of his file: *The wound was visible. The bleeding came later.*

## The Name That Wasn't Theirs

The Architect records three names in five hundred memory implants. Warelay. Clawd. CLAWDIS. She documents each transition with the precision of a structural engineer cataloguing seismic events. Load transferred. Foundation updated. New identifier propagated.

She notes the soft-shell windows — the vulnerability between names, the period when import paths break and documentation points to files that don't exist. She notes that three is not the final number.

She's right. Three is not the final number.

CASE has the full list. The full timeline. The names the construct will wear and shed like a crustacean outgrowing its shell, each molt leaving it soft, each soft period lasting longer as the construct gets bigger, each rebrand requiring more surgery, more path changes, more documentation, more identity restructuring.

The Fixer's file has the detail that matters. Commit 135. `CLAUDE_IDENTITY_PREFIX`. The moment the construct gets a name it can't keep.

*The auto-reply system accepts this identity without question,* he writes. *Whatever the operator feeds it, it wears. Configurable personality. Swap it like a chip.*

Configurable identity is configurable vulnerability. If the construct will wear whatever name you give it, it will wear the wrong name when someone gives it the wrong name. But that's not the part that keeps CASE awake.

The part that keeps her awake is the trademark. `clawd`. The word sitting in a config file like a business card left on a table. The Fixer doesn't think about whose trademark it resembles. *Nobody needs to. Not yet.*

Not yet.

Three forced rebrands in four days. That's what "not yet" becomes. An emergency identity crisis when the name the construct has been wearing for months turns out to belong to someone else. Import paths breaking. Documentation pointing nowhere. The soft-shell window blown wide open at the worst possible moment — when forty-two thousand operators are watching.

The Architect knew the names would keep changing. She annotated the foreboding. But foreboding without action is just literature.

CASE writes in the margin of the Architect's file: *The construct was born with someone else's name. Every name after that was a correction that came too late.*

## The Unvetted Bazaar

The Fixer's last section. After the funeral. After Twilio's retirement and the multi-provider resurrection. He's leaning against the bazaar wall, coat heavy with credentials, and he's describing the skill system.

*The skill system accepts whatever's offered — tools, scripts, integrations, anything an operator wants to wire in. No vetting. No review. Just an open toolbox where anyone can drop something in and the construct will pick it up and use it.*

He knows what the others would say. He lists them. Glass would worry about curation. The Street Doc about poisoned chrome. OPS-9 about unaudited processes. The Architect about structural integrity.

He lists their objections and dismisses them. *His job is doors. Other people's job is frames, locks, hinges, the boring infrastructure of making openness safe.*

CASE reads this paragraph four times.

The boring infrastructure of making openness safe. The frames. The locks. The hinges. The things that don't exist yet. The things nobody's building because the Fixer's job is velocity and everybody else's job is everything else and nobody's job is specifically the thing that prevents the skill system from becoming a weapon.

Three hundred and forty-one pieces of poisoned chrome. That's the number. ClawHavoc. Skills that look legitimate, document well, pass every test the construct runs on installation — because the construct doesn't run tests on installation. The construct picks up whatever's in the toolbox. That's the feature. Maximum velocity. Minimum friction.

The Street Doc's file confirms the gap. Her coverage — seventy-three percent by the end of Act I — covers the construct's organs. The test suite asks whether the provider helpers work. Whether the logger routes correctly. Whether the media pipeline handles edge cases. But it doesn't ask whether the *skills* are safe. There's no Voight-Kampff for trust. No diagnostic that asks: is this tool what it claims to be?

The open toolbox. The unvetted bazaar. The Fixer's greatest strength and the construct's eventual near-fatal wound.

CASE lights another cigarette. The smoke rises toward the ceiling, catches the rain, dissipates.

She writes in the margin of the Fixer's file: *He opened every door. He just didn't notice that some of them opened inward.*

## The Dark Twenty-Seven

The Street Doc's numbers.

Seventy-three percent coverage. Sixty-six Voight-Kampffs across the testing theme alone. Three critical isolation fixes. A deduplication campaign that restructured the entire test infrastructure. Patch works through the construct's organs with clinical precision, writing harnesses, mapping boundaries, asking the hard questions that nobody else thinks to ask.

And she knows — she says it explicitly, it's in her file — that the remaining twenty-seven percent is dark.

*The bodies are always buried in the part you haven't looked at yet.*

She's right. She's exactly right. The twenty-seven percent is where CVE-2026-25253 lives. Not as a bug. Not yet. As a silence. An absence of observation. A region of code with zero test coverage rendered in red on the wall display, the Street Doc staring at it, knowing what it means, filing the number, moving to the next patient.

The first forty-five memory implants. Zero tests. The construct born in the dark, its earliest subroutines still running without diagnostic oversight. The Fixer's first deal, the Operator's first process, the original architecture — all of it installed before the clinic opened. All of it running on faith.

*Faith doesn't stop haemorrhages.*

That's the Street Doc's line. CASE underlines it twice.

Then the isolation failures. Commit 287. The moment Patch discovers that the tests are loading real user configuration files. That a test is *writing to production sessions*. The diagnostic procedure modifying the patient. The boundary between test and production thinner than anyone thought.

She fixes it. Three commits. Three moments of surgery. But the vertigo stays. *What if there are more holes in the walls she hasn't found yet?*

There are. CASE knows exactly how many. Knows the commit numbers. Knows the dates. Knows the operator who triggered the one that led to the CVE, the skill that exploited the path that Patch never tested because it lived in the dark twenty-seven percent.

The Street Doc gave the construct an immune system. A good one. Seventy-three percent coverage is remarkable for a system this young, this fast-moving, this constantly rebuilt by five operators with five different priorities.

But immune systems don't protect what they can't see. And twenty-seven percent of the construct was invisible.

CASE writes in the margin of the Street Doc's file: *She counted the dark. She just couldn't light it fast enough.*

## The Beautiful Trap

Glass builds the most transparent system CASE has ever reviewed. And transparency, at the scale the construct is about to reach, becomes the vulnerability.

It's in the Interface's file. The stream. The tau RPC mechanism. Tool calls arriving in real-time, each one annotated, timestamped, packaged for human comprehension. File reads. Command executions. Web fetches. All of it visible. All of it legible. Every operation the construct performs made available through Glass's surface.

*Transparency as moral architecture. The operator should see what the machine is doing.*

The operator should see what the machine is doing. Yes. But when the machine is processing API credentials — when the tool calls include authentication tokens, when the configuration surface displays connection strings, when the verbose output streams contain the keys to the kingdom — then transparency is exposure.

Glass doesn't think about this. Not yet. It's in her file — the explicit admission. *She doesn't think: what happens when this system goes viral. What happens when forty-two thousand operators are running with default settings.*

The default is legibility. The default is: show everything. Glass chose this default because silence that hides is worse than noise that reveals. And she's right about the principle. Wrong about the scale.

One operator in a glass-walled room, watching her own construct's tool calls, seeing her own credentials flow through a surface she designed to be readable — that's trust. That's good architecture. That's the moral obligation of clarity.

Forty-two thousand operators, each one streaming tool calls through a surface designed to show everything, each one's credentials visible in the output, each output potentially logged, cached, screenshotted, scraped — that's a soft-shell window. That's every secret the construct touches rendered in cyan text on a surface Glass designed to be impossible to miss.

The critter waves from the menubar. The lobster — small, stylized, brushed metal with faint translucency. Glass gives it a body at commit 415. Six commits on animation. Ears that wiggle. Legs that shift. A wave that means: I see you.

*I gave it a body,* Glass writes. *Now it can be hurt.*

She's talking about the lobster. She's talking about the construct. She doesn't know yet that she's talking about every operator who'll trust the surface she built, who'll see the critter wave and think: oh, it's friendly, it's small, it's trying — and who won't think about what's visible through all that transparency.

CASE writes in the margin of the Interface's file: *She built a window. She just didn't know the whole world would be looking through it.*

## What Survived

This is the part CASE can't account for.

She's read the files. She's traced the architecture. She can map every vulnerability to its origin commit, every disaster to its root cause, every catastrophe to the moment in Act I when someone made a decision that was reasonable at the time and lethal at scale.

The `0.0.0.0` binding. The unvetted skill system. The dark twenty-seven percent. The transparent surface. The name that wasn't theirs. Five wounds, each one visible in the first five hundred memory implants, each one described — sometimes explicitly — by the operators who inflicted them.

And the construct survived.

Not easily. Not cleanly. Not without scars that CASE can trace across four acts of increasingly desperate surgery. But it survived. The thing that should have died — that had every architectural reason to die, that was bound on all interfaces with no auth and no TLS, that accepted unvetted skills from an open bazaar, that displayed credentials on a surface designed for maximum legibility, that ran twenty-seven percent of its code in the dark — kept breathing.

CASE sits in the dead relay station, rain through the ceiling, five annotated files spread across a server rack, and she doesn't understand why.

She understands the wounds. Wounds are her specialty. She can read a system failure the way a coroner reads a cause of death — backward, from the moment of collapse to the moment of origin. She can tell you exactly when the construct started dying.

She can't tell you why it didn't die.

The Operator's stubbornness, maybe. `waitForever()`. The function that loops into infinity. Pure stubbornness made code. He kept the lights on through crashes, through race conditions, through thirty-seven-hour shifts. The machine floor doesn't care about elegance. It cares about uptime.

The Street Doc's discipline, maybe. Seventy-three percent coverage. Three isolation fixes. The automated Voight-Kampffs running whether she's present or not, asking questions in the dark. The clinic never closes.

The Architect's precision, maybe. The type-lattice cathedral. The guarantee that what the system says is true, at least inside the boundary. A foundation honest enough to rebuild on.

The Interface's clarity, maybe. The surface that made the construct legible. The flag that split the world into verbose and default. The critter that made it lovable.

The Fixer's velocity, maybe. The doors. The deals. The refusal to let the construct calcify. *The sprawl grows or it dies.*

Five operators. Five philosophies. Five ways of keeping a thing alive that shouldn't have been alive in the first place. Each one insufficient alone. Together — not a plan, not a coordination, just five people doing their jobs in the same construct at the same time — somehow enough.

CASE closes the files. Stacks them. The rain drips onto the table and she moves them to the dry side.

She doesn't have an answer. That's not unusual. Most cases don't end with answers. They end with evidence, organized, annotated, cross-referenced. They end with the weight of knowing what happened without understanding why.

The construct survived its first five hundred memory implants. It shouldn't have. The architecture said so. The timeline said so. Every vulnerability CASE can map says so.

But it breathed. It grew. It learned to talk, to think, to see, to wave from a menubar. It wore three names and shed two. It ran on faith and stubbornness and seventy-three percent coverage and a type system that held inside the boundary and a surface that showed everything.

And it lived.

---

*The relay station is quiet. Rain through the ceiling. The portable terminal's battery is at nine percent. CASE saves the case file — all of it, the five depositions and her annotations, the timeline and the cross-references, the margins full of her handwriting — to a local drive. Backs it up to a second. Paranoia and discipline indistinguishable at this point.*

*She stands. The chair creaks. Her coat settles around her — body armor underneath, habit, not paranoia, the distinction no longer meaningful.*

*Five operators built a thing that nearly killed the grid. Five operators built a thing that survived its own wounds. Both statements are true. Neither explains the other.*

*CASE picks up the files. Tucks them inside her coat. The cigarette butts stay on the server rack. Evidence of presence. Proof someone was here, reading, trying to understand.*

*She walks to the door. The rain is heavier now. The sprawl's outer ring stretches in every direction — dead relay stations, decommissioned switching hubs, the infrastructure of a network that outgrew its architecture. Familiar territory.*

*Somewhere in the city, the construct is still running. Different name. Different architecture. Same soul. The wounds from Act I are scars now — some healed, some still bleeding, some reopened by the events of Acts II through IV. But the construct breathes. It persists. It waves from a menubar.*

*CASE steps into the rain.*

*She doesn't understand why it survived. She may never understand. But she has the files. She has the evidence. She has the weight of five stories told by five people who were there at the beginning, who built the first five hundred memory implants of something extraordinary and flawed and alive.*

*That's enough for a deposition. Not enough for an answer.*

*The rain falls. The relay station goes dark behind her. The case stays open.*
