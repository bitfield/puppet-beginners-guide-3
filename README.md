# The Puppet Beginner's Guide, 2nd Edition


![It's great having a robot butler](http://bitfieldconsulting.com/files/1240_03_01_small.png)

Keyboards wear out; that's a scientific fact. As a small measure to prevent this, I'm making all the code examples in the forthcoming second edition of [The Puppet Beginner's Guide](http://bitfieldconsulting.com/pbg2) freely available to download and use in this repo, so you don't have to type them in from the book. You'll find them in the [examples](https://github.com/bitfield/puppet-beginners-guide/tree/master/examples) directory. 

If you're already using Puppet, you can dive straight in and look at the examples. You can read, use, and modify them without needing to buy the book, although obviously I will be happier if you do. (Buy two copies, in case you leave one on the bus by mistake.)

Throughout the book, we'll be developing a complete, working example infrastructure, which you can use as a basis for your own. Check back here every so often to see how it's progressing!

If you're new to Puppet, a great way to try it out quickly is to use a Vagrant virtual machine, which will run on your own computer, and there's a specific [Vagrant image](https://atlas.hashicorp.com/puppetlabs/boxes/ubuntu-16.04-64-puppet) recommended for use with this book. Follow the instructions below to install Virtualbox and Vagrant, and you'll be able to run the examples in this repo in just a few minutes.

  1. Download and install [Virtualbox](https://www.virtualbox.org/)

  1. Download and install [Vagrant](https://www.vagrantup.com/downloads.html)

  1. In the `puppet-beginners-guide` repo directory, run:

        vagrant up

    Vagrant will begin downloading the base box, which is an Ubuntu 16.04 image pre-installed with Puppet. This may take a while, but once the download is complete the virtual machine will start, and you will see this message:

        Machine booted and ready!

  1. Connect to the VM with the following command:

        vagrant ssh

  1. You now have a command line shell on the VM. Check that Puppet is installed and working:

        puppet --version
        4.9.2

  1. Try the 'Hello, world' example:

        puppet apply /vagrant/examples/file_hello.pp
        Notice: Compiled catalog for localhost in environment production in 0.07 seconds
        Notice: /Stage[main]/Main/File[/tmp/hello.txt]/ensure: defined content as '{md5}22c3683b094136c3398391ae71b20f04'
        Notice: Applied catalog in 0.01 seconds

        cat /tmp/hello.txt
        hello, world

  1. Well, that was easy! Reward yourself with a big cup of tea and a slice of cake. It's important to keep your strength up. 
