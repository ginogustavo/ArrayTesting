import UIKit

class ViewController: UIViewController {
    
    //Variable para pais seleccinado
    var nombrePaisSelected = ""
    
    //con dato de instancia
    var arrayNombreAlumnos = [String]()
    
    //sin datos
    var arrayNombreMascotas:Array<String>?
    var nombrePet:String!
    
    //con datos
    //var arrayPaises = ["Perú", "Chile", "Bolivia", "Paraguay", "Venezuela", "Colombia", "Brasil", "Argentina"]
    
    var arrayPaises = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayPaises = arrayDatos()
        print(arrayPaises)
        print(arrayPaises.count)
    }

    
    @IBAction func selected(_ sender: Any) {
       lblPais.text = "Pais: \(nombrePaisSelected)"
        
    }
    
    
    
    func arrayDatos()->[String]{
            return ["Perú", "Chile", "Bolivia", "Paraguay", "Venezuela", "Colombia", "Brasil", "Argentina"]
    }
}


extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayPaises.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print(row)
        let nombrePais = arrayPaises[row]
        return nombrePais
        //return "Hola \(row)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Se ha seleccionado: \(row)")
        nombrePaisSelected =  arrayPaises[row]
    }
    
    
}

