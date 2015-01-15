# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
class runner::tasks::restart_services($runlevel=100) {
    include runner

    $service_names = "xvfb"

    runner::task {
        "${runlevel}-restart_services":
            content  => template("${module_name}/tasks/restart_services.erb");
    }
}