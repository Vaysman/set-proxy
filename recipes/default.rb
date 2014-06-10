template "/etc/environment" do
  source "environment.erb"
end

template "/etc/apt/apt.conf.d/00proxy" do
  source "00proxy.erb"
end

ENV['http_proxy'] = "http://#{node["set-proxy"]["host"]}:#{node["set-proxy"]["port"]}"
ENV['https_proxy'] = "http://#{node["set-proxy"]["host"]}:#{node["set-proxy"]["port"]}"
