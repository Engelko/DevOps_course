
# The varibles are located here because chef-solo deletes the /attributes/default.rb file.
node.normal['main']['package']  = "geany"
node.normal['main']['group']  = "hw26"




# Create file
file "/opt/hw26" do
    owner "root"
    group "root"
    mode 00544
    action :create
    content "for testing Chef in hw26"
end

# Create directory
directory "Create test directory hw26" do
    owner "root"
    group "root"
    mode "0755"
    path "/opt/dirhw26"
    action :create
end

# Create file from template with ip address
template '/opt/hw26_info' do
    source 'hw26_info.erb'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

# Copy file from /files to host
cookbook_file "/opt/hw26_test_file" do
    source "hw26_test_file"
    owner "root"
    group "root"
    mode 00600
    action :create_if_missing
  end

# Create Group 
group node['main']['group'] do
    action :create
end

# Create User hw26
user 'hw26' do
    comment 'user hw26 for Homework_26'
    uid 1005
    gid "hw26"
    home "/home/hw26"
    shell "/bin/bash"
end

# Install geany package
apt_package node['main']['package'] do
    action :install
end