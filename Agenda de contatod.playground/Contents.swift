import Foundation

// Definir a estrutura de um contato
struct Contato {
    var nome: String
    var telefone: String
    var email: String
}

// Definir a classe da Agenda de Contatos
class AgendaDeContatos {
    var contatos: [Contato] = []
    
    // Método para adicionar um novo contato
    func adicionarContato(nome: String, telefone: String, email: String) {
        let novoContato = Contato(nome: nome, telefone: telefone, email: email)
        contatos.append(novoContato)
    }
    
    // Método para remover um contato pelo nome
    func removeContato(nome: String) {
        contatos = contatos.filter { $0.nome != nome }
    }
    
    // Método para editar um contato pelo nome
    func editaContato(nome: String, novoTelefone: String, novoEmail: String) {
        for i in 0..<contatos.count {
            if contatos[i].nome == nome {
                contatos[i].telefone = novoTelefone
                contatos[i].email = novoEmail
        }
    }
}
    
    // Método para listar todos os contatos
    func listaContatos() {
        for contato in contatos {
        print("Nome: \(contato.nome), Telefone: \(contato.telefone), Email: \(contato.email)")
 }
}
}
let minhaAgenda = AgendaDeContatos()
minhaAgenda.adicionarContato(nome: "farley", telefone: "40028922", email: "FarleyMassacre@gmail.com")
minhaAgenda.adicionarContato(nome: "shopia", telefone: "89224002", email: "FaiskaSophia@gmail.com")
minhaAgenda.listaContatos()

print("\nRemovendo contato Shopia")
minhaAgenda.removeContato(nome: "shopia")
minhaAgenda.listaContatos()

print("\nEditando contato farley...")
minhaAgenda.editaContato(nome: "farley", novoTelefone: "89274657", novoEmail: "faiskinhadimel@gmail.com")
minhaAgenda.listaContatos()
