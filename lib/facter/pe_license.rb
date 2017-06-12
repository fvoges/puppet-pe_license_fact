require 'yaml'

Facter.add(:pe_license) do
  setcode do
    if File.exist?('/etc/puppetlabs/license.key')
      license = YAML.load_file('/etc/puppetlabs/license.key')
      license['start'] = license['start'].to_s
      license['end'] = license['end'].to_s
      license
    end
  end
end
