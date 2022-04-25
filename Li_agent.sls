copy-liagent-rpm:
   cmd.run:
      - name: sudo curl -k https://github.com/vmwvbcindia/Saltstack/Log-insight-agent.deb --output /tmp/Log-insight-agent.deb
install-liagent:
   cmd.run:
      - name: sudo rpm -i /tmp/Log-insight-agent.deb
copy-liagentconfig:
   cmd.run:
      - name: sudo curl -k https://github.com/vmwvbcindia/Saltstack/liagent.ini --output /var/lib/loginsight-agent/liagent.ini
restart-liagentd:
   cmd.run:
      - name: sudo systemctl restart liagentd
