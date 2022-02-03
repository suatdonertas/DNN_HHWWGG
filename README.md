# DNN_HHWWGG

Repository for the DNN for HH->WWGG Snowmass analysis. 

To run jupyter from within ingrid, do the two steps:

```
on your local, ssh -NL port_number:localhost:port_number -i .ssh/ssh_key ingrid1-gwceci
on the cluster, jupyter notebook --no-browser --port port_number
```

Give a port number of your choice (one that you know is not being used at that moment); 1234, 1235 etc.

`ingrid`-gwceci` can/should be replaced with whatever you 
