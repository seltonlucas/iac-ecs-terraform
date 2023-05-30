resource "aws_elastic_beanstalk_application" "aplicacao_beantalk" {
  name        = var.nome
  description = var.descricao
}

resource "aws_elastic_beanstalk_environment" "ambiente_beantalk" {
  name                         = var.ambiente
  application                  = aws_elastic_beanstalk_application.aplicacao_beantalk.name
  solution_solution_stack_name = "64bit Amazon Linux 2 v3.5.7 running Docker"
}

setting {
  namespace = "aws:autoscaling:launchconfiguration"
  name      = "InstaceType"
  value     = var.maquina
}

setting {
  namespace = "aws:autoscaling:asg"
  name      = "MaxSize"
  value     = var.max
}

setting {
  namespace = "aws:autoscaling:launchconfiguration"
  name      = "IamInstanceProfile"
  value     = aws_iam_instance_profile.beanstalk-ec2_profile.name
}
