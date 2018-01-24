 class fuel_plugin_region::override_region {

   $region_hiera_values = hiera_hash('fuel-plugin-region', {})
   $region_region       = pick($region_hiera_values['region_region'], RegionOne)

   file { '/etc/hiera/plugins/fuel-plugin-region.yaml':
     ensure  => file,
     content => "region: $region_region",
   }
 }

