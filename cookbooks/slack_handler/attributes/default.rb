#
# Copyright ???
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Attributes for Slack intergration Using slackr gem. Requires API key
## required attributes
#default['chef_client']['handler']['slack']['team']       = nil
#default['chef_client']['handler']['slack']['api_key']    = nil
## Optional attributes
#default['chef_client']['handler']['slack']['channel']    = nil

# Attributes for Slack intergration using webhook. No API key required.
# Multiple webhooks supported. Report detail and fail_only set per webhook.
default_unless['chef_client']['handler']['slack']['webhooks']['name'] = []
# use like this
default['chef_client']['handler']['slack']['webhooks']['name'].push('chef_bot_hook1')
default['chef_client']['handler']['slack']['webhooks']['chef_bot_hook1']['url'] = 'https://hooks.slack.com/services/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'
default['chef_client']['handler']['slack']['webhooks']['chef_bot_hook1']['fail_only'] = false
#default['chef_client']['handler']['slack']['webhooks']['webhook1']['send_start_message'] = nil
#default['chef_client']['handler']['slack']['webhooks']['webhook1']['message_detail_level'] = 'elapsed'
default['chef_client']['handler']['slack']['webhooks']['webhook1']['cookbook_detail_level'] = 'all'
default['chef_client']['handler']['slack']['webhooks']['webhook1']['send_environment'] = true

# shared attributes
#default['chef_client']['handler']['slack']['timeout']    = 120
default['chef_client']['handler']['slack']['username']   = 'Chef Bot'
#default['chef_client']['handler']['slack']['icon_url']   = nil
# OR
#default['chef_client']['handler']['slack']['icon_emoji'] = nil
# Valid options here are basic, elapsed, resources
#default['chef_client']['handler']['slack']['message_detail_level'] = 'basic'
# Valid options here are off, all
#default['chef_client']['handler']['slack']['cookbook_detail_level'] = 'off'
# Only report failures
#default['chef_client']['handler']['slack']['fail_only'] = false
# Whether to send a message to when the Chef run starts
#default['chef_client']['handler']['slack']['send_start_message'] = false
# Whether to send a message the node.chef_environment as well as the node.name
#default['chef_client']['handler']['slack']['send_environment'] = false
