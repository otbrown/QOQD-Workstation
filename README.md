# QOQD-Workstation
Space to store settings and tools, and track issues relating to the running of the group workstation.

Welcome to the workstation repository! If you lost your job submission files you can find some to modify in the [EXAMPLE](https://github.com/otbrown/QOQD-Workstation/tree/master/EXAMPLE) folder, if you're feeling nosy you can take a look at the queue config files in [QSET](https://github.com/otbrown/QOQD-Workstation/tree/master/QSET), or the source code for `qpeek` in [TOOLS](https://github.com/otbrown/QOQD-Workstation/tree/master/TOOLS), or if you're having a problem that isn't solved by the *FAQ* below then you can file an [issue](https://github.com/otbrown/QOQD-Workstation/issues).

I hope to add more detailed information (which ought to be useful to my successor) to the [Wiki](https://github.com/otbrown/QOQD-Workstation/wiki) some time soon.

## F.A.Q.

### Where's my outfile?!
[TORQUE](http://www.adaptivecomputing.com/products/open-source/torque/) is well maintained and documented, making it easy to set up and simple to use, but it is designed for much larger systems than we are using. As a result it keeps output files from each job in a local folder on the *compute node*, and only copies them back to the *submit node* once the job has completed. Obviously (at the moment) we only have one computer which acts as both, but TORQUE still keeps hold of the output file in a separate folder until the job completes. That said, you can use ```qpeek``` to take a look at the output file during a run. By default ```qpeek``` just returns the last 10 lines of the output file, but you can request the first or last *x* lines, or the entire file. To tell ```qpeek``` which job you want to see the output of, you need the **Job ID** which can be found in the output of the ```qstat``` command. For more information on using ```qpeek``` run
```bash
qpeek --help
```
or check the [source](https://github.com/otbrown/QOQD-Workstation/blob/master/TOOLS/qpeek) for yourself.

If your job has definitely finished and the output file isn't in the folder you submitted from, then file an [issue](https://github.com/otbrown/QOQD-Workstation/issues), or drop me an e-mail!

### My job isn't running.
It could just be that the workstation is at capacity -- use ```htop``` to see usage, or look at the output from ```qstat -a``` which shows the number of processors for each job under the seventh column, headed *TSK*. Jobs that are running show *R* under the tenth column, headed *S*. The workstation has a total of 32 threads, so if all the running jobs add up to more than 32 minus the number of threads your job has requested, then there simply isn't enough room on the workstation right now. Your job will be run once some of the others complete. Please note that only one job that requires the gpu can run at any time (as we only have one gpu).

If you've followed the above advice and think your job should be running, but it still isn't, then file an [issue](https://github.com/otbrown/QOQD-Workstation/issues), or drop me an e-mail!

### Something else is wrong!
File an [issue](https://github.com/otbrown/QOQD-Workstation/issues), send me an e-mail, or just swing by my office!  
