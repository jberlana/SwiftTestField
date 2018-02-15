# Another test field project

[![IDE](https://img.shields.io/badge/Xcode-9-blue.svg)](https://developer.apple.com/xcode/)
[![Language](https://img.shields.io/badge/swift-4-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/platform-iOS%2011-green.svg)](https://developer.apple.com/ios/)
[![Build Status](https://travis-ci.org/jberlana/SwiftTestField.svg?branch=master)](https://travis-ci.org/jberlana/SwiftTestField)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## Things I want to test:
- MVP Architecture on the presentation layer.
- 3 isolated layers: Data, Domain and Presentation.
- Promisekit
- Moya?
- Travis
- Codable
- Cargar endpoint del plist

## Resources

Movies Api to do things
https://www.themoviedb.org/documentation/api?language=es

## Arquitecture


En la capa de red:
- Definir los endpoints como enums en lugar de constantes.
- Usar typealias para definir los callbacks de las llamadas de red
typealias AddBookEntityGatewayCompletionHandler = (_ books: Result<Book>) -> Void


El repository define una interfaz

- La base de datos implementa la interfaz.
- El web service implementa la interfaz.

Un caso de uso tiene dos protocolos, uno de entrada y otro de salida
- el de entrada lo implementa el interactor.
- el de salida lo implenta el presenter.

Coordinator.
- Factory: Crea cada una de los módulos accediendo al storyboard.
- Router: Presenta los módulos.

Presentation Layer:
- Un protocolo que define las entradas (eventos) implementado por el presenter
- Un protocolo define las respuestas (actualizaciones de vista) implementado por la vista.


La vista recibe eventos.
  - Los pasa al presenter decide que hacer con esos eventos.
  - El presenter llama al interactor en función al usecase que haya que ejecutar.
  - El interactor decide que hacer
  
Estudiar el como controlar el ViewState en las vistas (cargando, datos vacíos, lista de datos, error)



Dividir la app en modulos.Cada modulo tiene storyboard y todas las capas desde la capa de dominio.


-----

Data Layer:

  Repository
  - NetworkDataSource
  - DB DataSource

Domain layer:
- Interactors. Define cada uno de los casos de uso.

- View Models
- Scenes
  - MovierViewController.
  - MoviePresenter
  - MovieRouter
- Views

## Links
http://iyadagha.com/using-mvp-ios-swift/

