# Digital Sound

This chapter is about 

## Sound and waves

- Sound is produced by compression waves in the air.
- Loudspeakers create compression waves in the air by pushing air towards and away from the listener.
- Microphones move in response to pressure waves in the air and create a voltage on a wire.
- (dynamic) Microphones and speakers are basically the same thing: you cann use a speaker as a (bad) microphone.

- pitch (frequency)
- loudness (amplitude)

## Samples

### Analogue to Digital Conversion

- A sound wave is represented as an analogue voltage.
- An ADC periodically records the voltage level as a (digital) number.
- The sound is now represented as a a sequence of numbers.

### Digital to Analogue Conversion

- The sequence of numbers representing a sound is preriodically produced as a voltage on a wire.
- A filter is applied to smooth out the stepped voltage changes
- The sound is now back as an analogue voltage.

### Limitations

- Clipping
- Signal Range
- Frequency Range
- Noise


## Organised Sound

- We can use electronics and computers to create specific sounds at specific times.
- In fact, any sound at any time.
- This was a _big deal_ (TM) when it was realised (well before it was completely practical) in the early twentieth century.
- The composer, Edgard Varese, coined a term "organised sound" to refer to the new kinds of music that might be possible with electronic control over sound creation.

In this class we take an _organised sound_ approach to musical composition. In
"traditional" music theory, you might be aware of concepts like scales, chords,
and harmonic progressions that can be used to build compositions. These
concepts are not helpful, at least in the begining stages of learn ing computer
music. Here, the building blocks are _sounds_, created, mutated, and overlapped
in time to create music.

## Making a beep

- some kind of web audio example making a beep.

## Unit Generators

- coined by Max Mathews to represent components of sound synthesis software
- sound sysnthesis involves a chain (really a graph) of sound creating and processing functions.
- think of the signal chain for a guitar through effects pedals, then to an amplifier.

## Frequency-Time Representations of Sound

- already two representations: analogue voltage, and samples
- another more abstract representation is to consider the frequencies present over time.
- An algorithm called the Fourier transform lets us turn sampled sound into a frequency sequence (although it's not perfect and there are more details about how it works).


