# The Puppet Beginner's Guide, 2nd Edition


![It's great having a robot butler](http://bitfieldconsulting.com/files/1240_03_01_small.png)

Keyboards wear out; that's a scientific fact. As a small measure to prevent this, I'm making all the code examples in the forthcoming second edition of [The Puppet Beginner's Guide](http://bitfieldconsulting.com/pbg2) freely available to download and use in this repo, so you don't have to type them in from the book. You'll find them in the [examples](https://github.com/bitfield/puppet-beginners-guide/tree/master/examples) directory. 

If you're already using Puppet, you can dive straight in and look at the examples. You can read, use, and modify them without needing to buy the book, although obviously I will be happier if you do. (Buy two copies, in case you leave one on the bus by mistake.)

Throughout the book, we'll be developing a complete, working example infrastructure, which you can use as a basis for your own. You can view and download it at the [Puppet Beginner's Guide demo repo](https://github.com/bitfield/control-repo).

If you're new to Puppet, a great way to try it out quickly is to use a Vagrant virtual machine, which will run on your own computer, and there's a specific [Vagrant image](https://atlas.hashicorp.com/puppetlabs/boxes/ubuntu-16.04-64-puppet) recommended for use with this book. Follow the instructions below to install Virtualbox and Vagrant, and you'll be able to run the examples in this repo in just a few minutes.

Download and install [Virtualbox](https://www.virtualbox.org/).

Download and install [Vagrant](https://www.vagrantup.com/downloads.html).

In the `puppet-beginners-guide` repo directory, run:

    vagrant plugin install vagrant-vbguest
    vagrant up
    ...

    Machine booted and ready!

Connect to the VM with the following command:

    vagrant ssh

You now have a command line shell on the VM. Check that Puppet is installed and working:

    puppet --version
    4.9.2

Try the 'Hello, world' example:

    puppet apply /vagrant/examples/file_hello.pp
    Notice: Compiled catalog for localhost in environment production in 0.07 seconds
    Notice: /Stage[main]/Main/File[/tmp/hello.txt]/ensure: defined content as '{md5}22c3683b094136c3398391ae71b20f04'
    Notice: Applied catalog in 0.01 seconds

    cat /tmp/hello.txt
    hello, world

To make sure you have the latest version of Puppet installed, run the following commands (answer `y` to any prompts):

    curl https://apt.puppetlabs.com/DEB-GPG-KEY-puppet |sudo apt-key add
    sudo apt-get update
    sudo apt-get install -y puppetlabs-release-pc1
    sudo apt-get install -y puppet-agent

To check that Puppet is installed and working, run this command (you may get a different version number, which is fine):

    sudo /opt/puppetlabs/bin/puppet --version
    4.10.0

Well, that was easy! Reward yourself with a big cup of tea and a slice of cake. It's important to keep your strength up. 
