class BookBuilder
  def build(attributes)
	# pega o tipo de livro e cria o livro especifico, no caso, PaperBook ou Ebook
	# o constatize usa metaprogramação e transforma a string em uma constante
	# exemplo: "Ebook".constantize => retorna a constante Ebook
  	book_type = attributes.delete('type').constantize

  	# inicia um novo livro com os atributos recebidos, no caso book type vai ser a classe Ebook ou PaperBook
  	book_type.new(attributes)
  end
end