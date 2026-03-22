# HackaTruck — Exercícios de SwiftUI

Repositório com exercícios e práticas em **SwiftUI** desenvolvidos durante o **HackaTruck**.  
A ideia aqui é registrar a evolução dos estudos, experimentar componentes do SwiftUI e consolidar fundamentos (layout, estado, navegação, listas, etc.).

## Tecnologias
- Swift
- SwiftUI
- Xcode (iOS)

## Como executar
1. Clone o repositório:
   ```bash
   git clone https://github.com/valneymaia/HackaTruck.git
   ```
2. Abra o projeto no **Xcode**.
3. Selecione um simulador (ou um device).
4. Execute com **Run (⌘R)**.

> Dica: caso existam vários exercícios separados por pastas/targets, abra o arquivo do exercício desejado e defina o *target/scheme* correspondente antes de rodar.

## Estrutura (sugestão)
A organização pode variar conforme você foi evoluindo, mas normalmente fica algo como:

- `HackaTruck/`
  - `Exercicios/`
    - `Aula01_ViewsBasicas/`
    - `Aula02_Stacks/`
    - `Aula03_StateBinding/`
    - `Aula04_Listas/`
    - `Aula05_Navegacao/`
  - `Assets.xcassets/`
  - `ContentView.swift`

Se a estrutura do seu projeto estiver diferente, ajuste esta seção para refletir a realidade do repositório.

## Conteúdos praticados (exemplos)
Dependendo do que você implementou, aqui vão tópicos comuns em exercícios de SwiftUI:

- Views básicas (`Text`, `Image`, `Button`, `Spacer`, `Divider`)
- Layout com `HStack`, `VStack`, `ZStack`
- Modificadores (`padding`, `frame`, `background`, `cornerRadius`, `font`, etc.)
- Estado e reatividade:
  - `@State`
  - `@Binding`
  - `@ObservedObject` / `@StateObject` (se aplicável)
- Listas e coleções:
  - `List`
  - `ForEach`
- Navegação:
  - `NavigationStack` / `NavigationLink`
- Componentização (criação de views reutilizáveis)
- Previews (`#Preview` / `PreviewProvider`)

## Prints / Demonstração (opcional)
Adicione imagens/gifs aqui para mostrar os resultados:

- Exercício 1: (descrição)
- Exercício 2: (descrição)

Exemplo:
```md
![Tela do Exercício X](docs/exercicio-x.png)
```

## Próximos passos (opcional)
- [ ] Refatorar exercícios em componentes menores
- [ ] Adicionar mais comentários no código
- [ ] Criar uma pasta `docs/` com prints de cada exercício
- [ ] Adicionar desafios extras (animações, consumo de API, persistência)

## Autor
- **valneymaia**
