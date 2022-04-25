copy-liagent-rpm:
   cmd.run:
      - name: sudo curl -k https://github.com/vmwvbcindia/Saltstack/vmware-log-insight-agent_8.6.2-19075480_all.deb --output /tmp/vmware-log-insight-agent_8.6.2-19075480_all.deb
install-liagent:
   cmd.run:
      - name: sudo dpkg -i /tmp/vmware-log-insight-agent_8.6.2-19075480_all.deb
copy-liagentconfig:
   cmd.run:
      - name: sudo curl -k https://github.com/vmwvbcindia/Saltstack/liagent.ini --output /var/lib/loginsight-agent/liagent.ini
restart-liagentd:
   cmd.run:
      - name: sudo systemctl restart liagentd
