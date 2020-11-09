//
//  ViewController.swift
//  eventos
//
//  Created by Alumno on 11/9/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var eventos : [Evento] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 284
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaEvento = tableView.dequeueReusableCell(withIdentifier: "celdaEvento") as! CeldaEventoController
        
        celdaEvento.lblTitulo.text = eventos[indexPath.row].titulo
        celdaEvento.lblLugar.text = eventos[indexPath.row].lugar
        celdaEvento.lblFecha.text = eventos[indexPath.row].fecha
        celdaEvento.LblHora.text = eventos[indexPath.row].hora
        
        celdaEvento.imgEvento.image = UIImage(named: eventos[indexPath.row].imagen)
        
        return celdaEvento
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Eventos"
        
        eventos.append(Evento(titulo: "Gorillaz Concierto", fecha: "24/11/2020", hora: "9:00 APM", lugar: "Los angeles", imagen: "gorillaz"))
        eventos.append(Evento(titulo: "Beastie Boys Concierto", fecha: "23/12/2020", hora: "9:00 PM", lugar: "New York", imagen: "beastie boys"))
        
        
    }

    

}

