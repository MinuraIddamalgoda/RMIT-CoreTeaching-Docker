# RMITCTSaaS (RMIT CoreTeaching Servers as a Service)

Almost every Bachelor of IT, CS, and SWE assingment stipulates that your code must compile on the CoreTeaching Servers or risk humiliation/death.

This presents a unique problem: I cbf yeeting my jank code onto a server just to make sure it compiles when I generally finish assignments <60 secs before it's due.

Enter my over-engineered solution: ~time management~ containers that mimic these servers as best as possible and running my code there as part of a CI pipeline.

## How it works

There are two ways you can run this:
#### Option 1 -- Add it to your CI pipeline (preferred but more labour-intensive)
foo

## Why certain versions and libs were chosen

### OS
As of writing this, the CT servers use RHEL 7.7:

```bash
$  cat /etc/redhat-release
Red Hat Enterprise Linux Server release 7.7 (Maipo)
```

and according to the [CentOS Archives](https://wiki.centos.org/Download), version 7 (1908) is the closest build.

### Bash
A fairly standard defualt Shell on the CT servers. Thankfully, it's the same default in our CentOS release so we're good.

```bash
$  bash --version
GNU bash, version 4.2.46(2)-release (x86_64-redhat-linux-gnu)
```

### Python
Technically, the CT servers use Python 2.7 as a default:
```bash
$  ls -la $(which python)
lrwxrwxrwx 1 root root 7 Nov  3  2019 /usr/bin/python -> python2
```
```bash
$  python --version
Python 2.7.5
```

Anecdotally, the assignments I've seen stipulate Python 3 be used. I've opted for 3.6 as that's what I've seen the most. I'll need to figure out how to make this more flexible, though.

### Make

### GCC
