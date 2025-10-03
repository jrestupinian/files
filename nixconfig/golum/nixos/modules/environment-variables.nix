{ config, pkgs, ... }:

{
  # Add configurations
  environment.variables = {    
    WLR_EVDI_RENDER_DEVICE = "/dev/dri/card1";                                                                                                   
  };
}
