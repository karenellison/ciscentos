control "cis-1-6-1-4" do
    impact 1.0
    title "1.6.1.4 Ensure SETroubleshoot is not installed (Scored)"
    desc "The SETroubleshoot service notifies desktop users of SELinux denials through a user-friendly interface. The service provides important information around configuration errors, unauthorized intrusions, and other potential errors."
    describe package('setroubleshoot') do
        it { should_not be_installed }
    end
end