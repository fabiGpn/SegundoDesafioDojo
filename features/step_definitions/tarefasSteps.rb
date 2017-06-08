Dado(/^que eu esteja no site suiteondemand$/) do
 @tarefas = PaginaLogin.new
 @tarefas.load

end

Dado(/^eu efetuo login com usuario '([^"]*)' e senha '([^"]*)'$/) do |user, pass|
 @tarefas.efetuarLogin(user, pass)
end

Então(/^entro na página de criação de tarefas$/) do
  @ManipularTarefa = ManipularTarefas.new
  @ManipularTarefa.comboBox.click
  @ManipularTarefa.criarTaskBotao.click
end

Então(/^cadastrado a tarefa com a tarefa "([^"]*)"$/) do |arg1|
  @ManipularTarefa.createTask(arg1)

end

Entao(/^o cadastro sera efetuado$/) do
 assert_text('TASK OVERVIEW')
end

Quando(/^entro na página de editar tarefas$/) do                                         
click_link('View Tasks')
end                                                                                                                                                       
                                                                                         
Quando(/^edito a tarefa com os parametros "([^"]*)" e "([^"]*)"$/) do |arg1, arg2|       
  @ManipularTarefa.editTaks(arg1,arg2)       
end                                                                                      
                                                                                         
Então(/^minha tarefa tem que aparecer com os novos parãmetros$/) do                      
    assert_text('CRIAR AUTOMAÇÃO')
end                                                                                      

Então(/^clico para excluir minha tarefa$/) do
@ManipularTarefa.allCheckBox.first.click
@ManipularTarefa.removeButton.first.click
@ManipularTarefa.deleteButton.click
@ManipularTarefa.page.driver.browser.switch_to.alert.accept
end

Então(/^minha tarefa não deve mais existir$/) do
assert_no_text('Criar automação')
end
