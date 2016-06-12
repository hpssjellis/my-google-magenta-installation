#!/bin/bash


# TFRecord file containing NoteSequence protocol buffers from convert_midi_dir_to_note_sequences.py.
SEQUENCES_TFRECORD=/tmp/notesequences.tfrecord

# TFRecord file that TensorFlow's SequenceExample protos will be written to. This is the training dataset.
TRAIN_DATA=/tmp/training_melodies.tfrecord

# Optional evaluation dataset. Also, a TFRecord file containing SequenceExample protos.
EVAL_DATA=/tmp/evaluation_melodies.tfrecord

# Fraction of input data that will be written to the eval dataset (if eval_output flag is set).
EVAL_RATIO=0.10

# Name of the encoder to use. See magenta/lib/encoders.py.
ENCODER=basic_one_hot_encoder

bazel run //magenta:convert_sequences_to_melodies -- \
--input=$SEQUENCES_TFRECORD \
--train_output=$TRAIN_DATA \
--eval_output=$EVAL_DATA \
--eval_ratio=$EVAL_RATIO \
--encoder=$ENCODER
