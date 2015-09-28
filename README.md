Act vagrant box
===============

This box is based on the oficial Ubuntu lucid32 with current
[Act](https://github.com/book/Act) version installed to help
developing it and help conference organizers to try their own
changes on a safe environment.

Developers
----------

This project is trying to automate the build of the vagrant box
from scratch. It's not finished yet. However, you can already
use a vagrant box that I managed to build manually. See
[vagrant cloud](https://vagrantcloud.com/alexm/Act) for details.

You can use this project to report any issues for that box too.

Take a look at [the developer notes](README.devel)
if you need the details for manually install instructions of Act.
But be careful, they have to be used as a guideline, YMMV.

Organizers
----------

This project was started to build a safe environment for conference
organizers to test their changes to templates before pushing them
to production, removing the risk of breaking the whole Act server.

You can find the steps to set this environment up for
[YAPC Europe 2015](README.ye2015). It should be easy to adapt them
to any other Act instance.

References
----------

*   http://act.mongueurs.net/doc/Manual/Developer/Installation.html
