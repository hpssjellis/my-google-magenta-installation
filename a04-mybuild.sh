#!/bin/bash


./bazel-bin/magenta/models/basic_rnn_train --experiment_run_dir=/tmp/basic_rnn/run1 --sequence_example_file=$TRAIN_DATA --eval=false --hparams='{"rnn_layer_sizes":[50]}' --num_training_steps=20000
