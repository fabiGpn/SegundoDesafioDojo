class PaginaLogin < SitePrism::Page

  set_url 'https://demo.suiteondemand.com/'
	element :userTextBox, '#user_name'
	element :passwordTextBox, '#user_password'
	element :loginButton, '#bigbutton'

 
 def  efetuarLogin(user, password)
  userTextBox.set(user)
  passwordTextBox.set(password)
  loginButton.click
 end
end


class ManipularTarefas < SitePrism::Page
  element :comboBox, '#quickcreatetop'
  element :criarTaskBotao, :xpath, './/a[text() = "Create Task"]'
  elements :criarTarefaBotao, '#SAVE'
  element :botaoVerTarefas, ''
  elements :botaoExceluirTarefas, 'effb5aa5-fb19-63b4-d3f4-59357bc51572'
  element :nomeTarefa, '#name'
  element :inicioTarefa, '#date_start_date'
  element :finalTarefa, '#date_due_date'
  element :nomeDoContato, '#contact_name'
  elements :editarTarefa, :xpath, '//a[contains(@id, "edit")]'
  element :comboBoxStatus, :xpath, "//select[@id = 'status']"
  elements :removeButton, :xpath, "//a[@class = 'parent-dropdown-handler']"
  element :deleteButton, :xpath, "//a[@id = 'delete_listview_top' and text() = 'Delete']"
  elements :allCheckBox, '.listview-checkbox'

  def createTask(nome)

      comboBox.click
      criarTaskBotao.click
      nomeTarefa.set(nome)
      comboBoxStatus.click
      comboBoxStatus.find(:xpath, "//option[text() = 'Not Started']").click
      criarTarefaBotao.first.click
  end

  def editTaks(inicio, fim)
    editarTarefa.first.click
    inicioTarefa.set(inicio)
    finalTarefa.set(fim)
    criarTarefaBotao.first.click

  end
end

