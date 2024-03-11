var heatdist = fx_create("_filter_heathaze")
var rippledist = fx_create("_filter_ripples");
show_debug_message(string(fx_get_parameters(rippledist)))
fx_set_parameter(rippledist,"g_RipplesAmplitude",.25);//height of waves
fx_set_parameter(rippledist,"g_RipplesWidth",128);//how wide the waves are
layer_set_fx("Instances_1",heatdist)
layer_set_fx("Instances_1",rippledist)
//g_RipplesAmplitude