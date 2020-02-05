# kibana-bash

TODO: Enter the cookbook description here.

bash 'kibana' do
  code <<-EOH
  cd /opt
  sudo wget https://download.elastic.co/kibana/kibana/kibana-4.5.3-linux-x64.tar.gz
  sudo tar -xzf kibana-4.5.3-linux-x64.tar.gz
  sudo mv kibana-4.5.3-linux-x64 kibana
  cd /opt/kibana/bin
  ./kibana
  netstat -pltn
  sudo apt-get install ruby -y
  sudo gem install package pleaserun
  pleaserun -p systemd -v default –install /opt/kibana/bin/kibana -p 5601 -H 0.0.0.0 -e http://localhost:9200
  systemctl start kibana
  systemctl status kibana
  EOH
end
