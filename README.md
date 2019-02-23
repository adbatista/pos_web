# Trabalho pós

se quiser pode configurar o Ruby em sua maquina
 - instalar Ruby
 instalar rvm https://rvm.io/
 depois rodar `rvm install 2.5.0`
 dentro do diretorio raiz rodar 
 - `bundle install`
 - `rails db:create`
 - `rails db:migrate`
 - `rails server`

 pronto, a aplicaçao estará rodando em http://localhost:3000

ou voce pode usar uma imagem docker e com ruby, ai só seguir os passos a partir do `bundle install`

se não quieser rodar a aplicaçao voce pode acessar ela pela URL: https://trabalho-pos-web.herokuapp.com/


----

Tem duas tabelas, books e users, os books podem ser 2 tipos, Paper book e Ebook, usam um conceito no rails chamado single table inheritance (https://medium.com/@jacksonpires/usando-single-table-inheritance-sti-com-active-record-no-rails-2fd2eb21485e, "A ideia de STI parte do princípio que podemos ter tabelas que compartilham dos mesmos dados mas que possuem ações diferences quando o tipo é diferente"), deixando o codigo mais organizado e seguindo o principio de aberto/fechado (aberto para extensão, fechado para alteração) o O do SOLID

implementando isso é basicamente o pattern composite voce pode ver dentro do diretorio `app/models/`


---

Para criar um Ebook ou Paper Book, dentro de `app/builders` tem a classe `book_builder.rb` que implementa o metodo build, esse método recebe os atributos de um livro e verifica o type e gera o tipo de livro que o usuario escolheu

---

O user tem o campo born_date, na view ao invés de exibir a data de nascimento no formato dia/mes/ano decorei a classe e na view onde é chamado `app/views/users/index.html.erb` retorna a data em uma forma legivel exemplo: February 23, 2019, o metodo active também foi decorado, ao invés de retornar true ou false, retorna "Yes" ou "No" respectivamente.
O decorator pode ser encontrado em `app/decorators/`

---

Para unificar a inteface na tela de listar usuários `app/views/users/index.html.erb` criei `app/facades/users_facade.rb` assim simplificou inicializaçao de objetos no controller e desacoplou a logica, deixando mais isolado e sguindo mais parar o principio de responsabilidade unica, o S do SOLID


## Doc

Diagrama UML está no diretório raiz com o nome `Diagrama.png`

## Observação

Tentei comentar detalhes do código principalmente os que o Ruby faz de forma diferente de outras linguagens, e não tem interface, por que o Ruby é de tipagem dinâmica e não possui interface, ruby preza mais pelo duck typing (https://pt.wikipedia.org/wiki/Duck_typing)