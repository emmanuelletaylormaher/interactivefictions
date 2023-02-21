

VAR gf_mad=0
VAR first_response=2

- Your girlfriend is pissed. What happened?

 * You interrupted her in the middle of her explaining how you interrupt her often.
    Nice cognitive dissonance there, bucko. This will be a toughie but we'll figure it out.
        ~ gf_mad=4
 * You didn't roll down the windows after you farted.
    Woof. Why didn't you?
        ~ gf_mad=3
 * You ordered a sandwich but did not give her your pickle.
    Aw, jeez. Okay— this is a minor fix.
        ~ gf_mad=1
 * Nothing. You're perfect.
    Did you tell her this with your whole chest? No wonder why she's pissed.
        ~ gf_mad=5
- Moving on. 
    *Let's scope out the situation.

//talk to girlfriend
-
{shuffle:
    - Your girlfriend is the silent type when angry. Nothing is said, but you could cut the harsh vibes with a butter knife. She hasn't said anything all day. She ignores you when you address her. Maybe this time will be different?
    - Your girlfriend hasn't been completely ignoring you. She'll speak when spoken to, but she tends to respond passive-aggressively.
    - It isn't immediately obvious that she's upset, but you've been with her long enough to know. She's been carrying on with her day like usual, but her actions and words are laced with a tinge of sadness.
}
    What do you say to her?
    * "What's up?"
        ~gf_mad++
        ~first_response++
    * "Do you want to talk?"
    * "I'm sorry."
        ~gf_mad--
        ~first_response--
    * Nothing. Let her say something to you first.
        

- Your girlfriend looks straight at you. She thinks hard about what she's going to say.
{gf_mad:
    -0: "I love you."
    -1: "It's okay."
    -2: "Alrighty then."
    -3: "Don't let it happen again."
    -4: "Ugh, whatever."
    -5: "Fuck you. Fuck you and fuck off."
}

//conclusion
    -> END