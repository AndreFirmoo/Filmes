# App Filmes
**
Esse Projeto é um estudo de arquitetura VIP com Coordinator.
Com o Coordinator temos um maior controle do fluxo de tela comparado com o Router da arquitetura.


VIP   flow chart:

```mermaid
graph LR
Router --> ViewController 
ViewController --> Interactor
Interactor --> Presenter
Presenter --> ViewController
```

VIP Com Coordinator

```mermaid

graph LR
AppCoordinator --> FlowCoordinator
FlowCoordinator --> ScreenCoordinator
ScreenCoordinator(ChildCoordinator) --> ViewController
ViewController --> Interactor
Interactor --> Presenter
Presenter --> ViewController
```
