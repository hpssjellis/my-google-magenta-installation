#!/bin/bash

MIDI_DIRECTORY=~/mymagenta/magenta/magenta/testdata


# TFRecord file that will contain NoteSequence protocol buffers.
SEQUENCES_TFRECORD=~/mymagenta/magenta/magenta/myout05/notesequences06.tfrecord

bazel run //magenta:convert_midi_dir_to_note_sequences -- \
--midi_dir=$MIDI_DIRECTORY \
--output_file=$SEQUENCES_TFRECORD \
--recursive
