#!/bin/bash
service vos3000dall stop
service ivrd stop
service mbx3000d stop
rm -f /usr/kunshi/mbx3000/bin/mbx3000
rm -f /usr/kunshi/vos3000/webclient/jsp/WEB-INF/lib/vos3000webclient.jar
rm -f /usr/java/jdk1.6.0_19/jre/lib/rt.jar
cp -f mbx3000 /usr/kunshi/mbx3000/bin/mbx3000
cp -f ivr /usr/kunshi/ivr/bin/ivr
cp -f vos3000webclient.jar /usr/kunshi/vos3000/webclient/jsp/WEB-INF/lib/vos3000webclient.jar
cp -f rt.jar /usr/java/jdk1.6.0_19/jre/lib/rt.jar
chmod 777 /usr/kunshi/ivr/bin/ivr
chmod 777 /usr/kunshi/mbx3000/bin/mbx3000
chmod 777 /etc/rc.d/init.d/vos3000websv
chmod 777 /etc/rc.d/init.d/vos3000d
echo "Record the following License information:"
echo "RPM Time:"
/bin/rpm --qf %{INSTALLTIME} -q rpm
echo ""
echo "VOS Time:"
/bin/rpm --qf %{INSTALLTIME} -q vos3000
echo ""
echo "JDK Time:"
/bin/rpm --qf %{INSTALLTIME} -q jdk
echo ""