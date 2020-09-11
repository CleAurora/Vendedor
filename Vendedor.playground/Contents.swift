import UIKit

public class Vendedor{
    var nome: String
    var idade: Int
    var cpf: String
    private var saldoEmConta: Double
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double){
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    func getSaldoEmConta() -> Double{
        return self.saldoEmConta
    }
    
    private func setSaldoEmConta(valorAdicionado: Double){
        self.saldoEmConta += valorAdicionado
    }
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String){
        if tipoDePeca == "Terno"{
            if quantidadeDePecas >= 3 {
                setSaldoEmConta(valorAdicionado: Double(quantidadeDePecas) * 350)
            }else{
                setSaldoEmConta(valorAdicionado: Double(quantidadeDePecas) * 400)
            }
        }else if tipoDePeca == "Vestido"{
            if quantidadeDePecas >= 5 {
                setSaldoEmConta(valorAdicionado: Double(quantidadeDePecas) * 900 - 250)
            }else{
                setSaldoEmConta(valorAdicionado: Double(quantidadeDePecas) * 900 )
            }
        }else if tipoDePeca == "Bone"{
            let vendidos: Int = quantidadeDePecas/2
        if quantidadeDePecas == 1 {
            setSaldoEmConta(valorAdicionado: 50)
            return
        }else if vendidos >= 1{
            let qteSemBrinde: Int = quantidadeDePecas % 2
            let vendidosComBrinde: Double = Double(vendidos) * 100
            //let vendidosSemBrinde: Double = Double(qteSemBrinde) * (-50)
            let valorDosBrindes: Double = Double(vendidos) * 50
            setSaldoEmConta(valorAdicionado: vendidosComBrinde + valorDosBrindes)
            }
        }
    }
}

var vendedor1 = Vendedor(nome: "Narlei", idade: 26, cpf: "111222333777", saldoEmConta: 0)

vendedor1.vender(quantidadeDePecas: 5, tipoDePeca: "Bone")

print(vendedor1.getSaldoEmConta())
