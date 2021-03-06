 #!/bin/bash
rc-status
touch /run/openrc/softlevel
rc-service nginx restart
/bin/sh