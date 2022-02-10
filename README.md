# DNN_HHWWGG

Repository for the DNN for HH->WWGG Snowmass analysis. 

To run jupyter from within ingrid, do the two steps:

```
on your local, ssh -NL port_number:localhost:port_number -i .ssh/ssh_key ingrid1-gwceci
on the cluster, jupyter notebook --no-browser --port port_number
```

Give a port number of your choice (one that you know is not being used at that moment); 1234, 1235 etc.

 (`ingrid1-gwceci` is the name in my ssh config to connect to ingrid.)
 
 What I run, for example, is `sh -NL 1234:localhost:1234 -i .ssh/id_rsa.ceci ingrid1-gwceci`

Once you trained your model and saved it with tensorflow, use [tf2onnx](https://github.com/onnx/tensorflow-onnx).

To install: `pip install -U tf2onnx`

Once installed : `python -m tf2onnx.convert --saved-model tensorflow-model-path --output model.onnx` will convert your tf model to onnx.
