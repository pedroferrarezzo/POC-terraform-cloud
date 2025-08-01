terraform {
  cloud {
    organization = "FIAP-SOAT11"

    workspaces {
      name = "Production"
    }
  }
}
