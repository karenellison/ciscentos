control "cis-1-6-1-4" do
    impact 1.0
    title "1.6.1.4 Ensure SETroubleshoot is not installed (Scored)"
    desc "The SETroubleshoot service notifies desktop users of SELinux denials through a user-friendly interface. The service provides important information around configuration errors, unauthorized intrusions, and other potential errors."
    describe package('setroubleshoot') do
        it { should_not be_installed }
    end
end
control "cis-1-6-1-5" do
    impact 1.0
    title "1.6.1.5 Ensure the MCS Translation Service (mcstrans) is not installed (Scored)"
    desc "The mcstransd daemon provides category label information to client processes requesting information. The label translations are defined in /etc/selinux/targeted/setrans.conf"
    describe package('mcstrans') do
        it { should_not be_installed }
    end
end