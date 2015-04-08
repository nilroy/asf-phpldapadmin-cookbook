phpldapadmin-cookbook
=====================

Cookbook for installation phpldapadmin with custom configuration for [ASF-Platform](https://github.com/griddynamics/asf-platform).

Depends
-------
Depends from ['yum' cookbook](https://github.com/opscode-cookbooks/yum.git)

Usage
-----
#### phpldapadmin-cookbook::default

Just include `phpldapadmin-cookbook` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[phpldapadmin-cookbook]"
  ]
}
```
