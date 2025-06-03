@echo off
set dataset=QM9_under14atoms
set property=U0(kcalmol^^-1)
set dim=200
set layer_hidden=6
set layer_output=6
set batch_train=32
set batch_test=32
set lr=1e-3
set lr_decay=0.99
set decay_interval=10
set iteration=10
set setting=%dataset%--%property%--dim%dim%--layer_hidden%layer_hidden%--layer_output%layer_output%--batch_train%batch_train%--batch_test%batch_test%--lr%lr%--lr_decay%lr_decay%--decay_interval%decay_interval%--iteration%iteration
python train.py %dataset% "U0(kcalmol^-1)" %dim% %layer_hidden% %layer_output% %batch_train% %batch_test% %lr% %lr_decay% %decay_interval% %iteration% %setting%