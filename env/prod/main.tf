module "producao" {
  source = "../../infra"

  nome      = "producao"
  descricao = "Aplicacaodeproducao"
  maquina   = "t2.micro"
  max       = 1
  ambiente  = "ambientedeproducao"
}