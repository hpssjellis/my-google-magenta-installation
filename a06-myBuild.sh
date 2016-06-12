#!/bin/bash


# Provide a MIDI file to use as a primer for the generation.
# The MIDI should just contain a short monophonic melody.
# primer.mid is provided as an example.
PRIMER_PATH=~/mymagenta/magenta/magenta/models/basic_rnn/primer.mid

bazel run //magenta/models:basic_rnn_generate -- \
--experiment_run_dir=/tmp/basic_rnn/run1 \
--hparams='{"rnn_layer_sizes":[50]}' \
--primer_midi=$PRIMER_PATH \
--output_dir=/tmp/basic_rnn_generated \
--num_steps=64 \
--num_outputs=16
