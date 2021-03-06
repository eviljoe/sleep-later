# Sleep Later - Put Windows to sleep... later.
# Copyright (C) 2015 Joe Falascino
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

$total_delay_time = 90
$delayed_time = 0
$delay = 5
$time_until_sleep = 0

# Give the user some time to make sure he/she REALLY wants to shutdown
while ($delayed_time -lt $total_delay_time) {
	$total_until_sleep = $total_delay_time - $delayed_time
	$minutes_until_sleep = [Math]::Floor($total_until_sleep / 60)
	$seconds_until_sleep = $total_until_sleep - ($minutes_until_sleep * 60)
	
	$minute_unit = "minute"
	$second_unit = "second"
	
	if ($minutes_until_sleep -ne 1) {
		$minute_unit += "s"
	}
	
	if ($seconds_until_sleep -ne 1) {
		$second_unit += "s"
	}
	
	if ($minutes_until_sleep -gt 0) {
		if ($seconds_until_sleep -gt 0) {
			Write-Host "Self destruct in $minutes_until_sleep $minute_unit $seconds_until_sleep $second_unit"
		} else {
			Write-Host "Self destruct in $minutes_until_sleep $minute_unit"
		}
	} else {
		Write-Host "Self destruct in $seconds_until_sleep $second_unit"
	}
	sleep -s $delay
	$delayed_time += $delay
}

# Put the computer to sleep
Write-Host "Self destructing now!"
ps-tools\psshutdown -d -t 0
