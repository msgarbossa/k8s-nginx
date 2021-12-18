# microk8s install on Ubuntu

Install microk8s from CLI

```
$ sudo snap install microk8s --classic
```

Enable addon and other optional components

```
$ sudo microk8s enable dns dashboard storage ingress
```

Add your user to the microk8s group

```
$ sudo usermod -a -G microk8s myuser
```

Assuming kubectl is not installed separately, create an alias for kubectl by adding the following line to ~/.bashrc (consider aliasing "k" to kubectl for a shorter alias)

```
alias kubectl='microk8s.kubectl'
```

Log out and back in for group membership and alias changes to take affect or reboot.  Alternatively, root and the microk8s.kubectl command can be used.
