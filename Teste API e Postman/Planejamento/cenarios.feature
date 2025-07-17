Feature: Testes na API Panda Video seção folders

  Como um usuário registrado na plataforma
  Quero enviar requisições seguindo a documentação
  Para receber os resultados esperados conforme a especificação

Background:
  Given que o usuário informou a API key válida

@IDPV-001
Scenario: Listar pastas existentes
  When enviar uma requisição GET para "https://api-v2.pandavideo.com.br/folders"
  Then a resposta deve conter todos os arquivos da conta
  And o código de status deve ser 200

@IDPV-002
Scenario: Criar pasta com nome válido
  When enviar uma requisição POST para "https://api-v2.pandavideo.com.br/folders"
  And informar no corpo da requisição um título entre 3 e 50 caracteres
  Then a resposta deve indicar que a pasta foi criada com sucesso
  And deve retornar os dados da pasta criada
  And o código de status deve ser 201

@IDPV-003
Scenario: Tentar criar pasta com nome inválido
  When enviar uma requisição POST para "https://api-v2.pandavideo.com.br/folders"
  And informar no corpo da requisição um título com menos de 3 ou mais de 50 caracteres
  Then a resposta não deve criar a pasta
  And o corpo da resposta deve estar vazio
  And o código de status deve ser 400

@IDPV-004
Scenario: Atualizar nome da pasta com valor válido
  Given que existe uma pasta com um ID válido
  When enviar uma requisição PUT para "https://api-v2.pandavideo.com.br/folders/{folder_id}"
  And informar no corpo da requisição um novo nome entre 3 e 50 caracteres
  Then a resposta deve indicar que as propriedades da pasta foram atualizadas com sucesso
  And deve retornar os dados atualizados da pasta
  And o código de status deve ser 200

@IDPV-005
Scenario: Tentar atualizar nome da pasta com valor inválido
  Given que existe uma pasta com um ID válido
  When enviar uma requisição PUT para "https://api-v2.pandavideo.com.br/folders/{folder_id}"
  And informar no corpo da requisição um novo nome com menos de 3 ou mais de 50 caracteres
  Then a resposta não deve atualizar a pasta
  And o corpo da resposta deve estar vazio
  And o código de status deve ser 400

@IDPV-006
Scenario: Enviar requisição DELETE para excluir uma pasta
  Given que existe uma pasta com um ID válido
  When enviar uma requisição DELETE para "https://api-v2.pandavideo.com.br/folders/{folder_id}"
  Then a resposta deve indicar que a pasta foi excluída com sucesso
  And o código de status deve ser 200