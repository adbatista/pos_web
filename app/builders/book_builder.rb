class BookBuilder
  # O Rails ja faz isso por debaixo dos panos na verdade, vai ver o type e criar Ebook ou Paper book sozinho, fiz isso pra usar
  # o Builder pattern e deixar explicito
  def build(attributes)
    # pega o tipo de livro e cria o livro especifico, no caso, PaperBook ou Ebook
    # o constatize usa metaprogramação e transforma a string em uma constante
    # exemplo: "Ebook".constantize => retorna a constante Ebook
    # é praticamente a mesma coisa que se fizesse 
    # 
    # case attributes['type']
    # when "Ebook"
    #   book_type = Ebook #=> classe Ebook
    # when "PaperBook"
    #   book_type = PaperBook #=> classe PaperBook
    # end
    book_type = attributes.delete('type').constantize

    # inicia um novo livro com os atributos recebidos, no caso book type vai ser a classe Ebook ou PaperBook
    book_type.new(attributes)
  end
end