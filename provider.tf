terraform { 
  cloud { 
    
    organization = "ValueMomentumInc" 

    workspaces { 
      name = "claims-infra-workspace" 
    } 
  } 
}