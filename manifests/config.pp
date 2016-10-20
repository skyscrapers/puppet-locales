##### LICENSE

# Copyright (c) Skyscrapers (iLibris bvba) 2014 - http://skyscrape.rs
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# == Class locales::config
#
# This class is called from locales
#
class locales::config {
  file {
    $::locales::config_file:
      ensure => file,
      source => 'puppet:///modules/locales/var/lib/locales/supported.d/puppet',
      mode   => '0644',
      owner  => root,
      group  => root,
      notify => Exec['generate-locales'];

    '/etc/default/locale':
      ensure => file,
      source => 'puppet:///modules/locales/etc/default/locale',
      mode   => '0644',
      owner  => root,
      group  => root;
  }
}
