require "puppet"

module Puppet
    Puppet::Type.newtype(:vs_bridge) do
        @doc = "A Switch - For example 'br-int' in OpenStack"

        ensurable

        newparam(:name) do
            isnamevar
            desc "The bridge to configure"
        end
    end
end
