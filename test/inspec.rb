
control 'Multiple web pods' do
  describe command('kubectl get pods | grep nginx | wc -l') do
    its('stdout') { should match /2/ }
  end
end

control 'load balancer service' do
  describe port(80) do
    it { should be_listening }
  end
end

control 'Test web server response' do
  describe http('http://localhost:80', method: 'GET', open_timeout: 2, read_timeout: 2) do
    its('status') { should cmp 200 }
    its('body') { should match /^nginx/ }
  end
end

