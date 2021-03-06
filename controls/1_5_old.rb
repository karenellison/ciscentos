control "cis-1-5-1" do
    impact 1.0
    title "1.5.1 Set User/Group Owner on /etc/grub.conf (Scored)"
    desc "Set the owner and group of /etc/grub.conf to the root user."
    describe file('/etc/grub.conf') do
        its('group') { should eq 'root' }
        its('owner') { should eq 'root' }
    end
end