# Program Production

> **How to Produce Software 1.0 (Program)?** Software 1.0 refers to traditional software: source code written by human developers using deterministic logic, algorithms, and data structures to solve well-specified problems.

## Formulation

> **What is a Software 1.0 (Program)?**

Software 1.0 is a human-authored, static set of instructions (source code) that executes on a computing platform to perform a defined function or service. It is characterized by:

- Explicit logic written in programming languages (e.g., Python, C++, Java)
- Deterministic behavior (given same inputs, produces same outputs)
- Verifiable correctness through testing, formal methods, or code review
- Manual design of algorithms, data flows, and control structures

## Task Space

> **Which are the tasks (problems) handled in the Technical Domain?**

| **Category** | **Task** | **Description** |
|--------------|----------|-----------------|
| **Requirements** | Requirements Elicitation | Gather and clarify functional and non-functional needs from stakeholders |
| **Requirements** | Specification | Translate needs into precise, testable technical specifications |
| **Design** | Architecture Design | Define high-level system structure (modules, layers, interfaces) |
| **Design** | Detailed Design | Specify algorithms, data structures, and class/component interactions |
| **Implementation** | Coding | Write source code that implements the design |
| **Verification** | Testing | Validate correctness via unit, integration, and system tests |
| **Verification** | Debugging | Identify and fix defects in logic or behavior |
| **Maintenance** | Refactoring | Improve code structure without changing external behavior |
| **Deployment** | Build & Packaging | Compile, bundle, and prepare software for distribution |
| **Operations** | Monitoring & Logging | Observe runtime behavior for reliability and diagnostics |

## Technique Space

> **Methods or techniques used to address tasks.**

| **Category** | **Technique Type** | **Technique** | **Description** |
|--------------|--------------------|---------------|-----------------|
| **Requirements** | Modeling | Use Cases / User Stories | Describe system interactions from user perspective |
| **Design** | Architectural Style | Layered Architecture | Organize system into horizontal layers of abstraction |
| **Design** | Design Pattern | MVC (Model-View-Controller) | Separate data, presentation, and control logic |
| **Implementation** | Programming Paradigm | Object-Oriented Programming | Structure code around objects and classes |
| **Implementation** | Practice | Test-Driven Development (TDD) | Write tests before implementing functionality |
| **Verification** | Testing Strategy | Unit Testing | Verify individual functions or methods in isolation |
| **Verification** | Analysis | Static Code Analysis | Detect bugs or vulnerabilities without execution |
| **Maintenance** | Refactoring Technique | Extract Method | Break large functions into smaller, reusable ones |
| **Deployment** | Automation | CI/CD Pipelines | Automate build, test, and deployment processes |
| **Operations** | Observability | Structured Logging | Emit machine-readable logs for debugging and monitoring |

## Constitutive Technical Object

> **Objects forming parts of the final product, ranging from merely integrated components to fully constitutive elements.**

| **Category**                         | **Constitutive Technical Object** | **Description**                                                                     | **Tags**                   |
| ------------------------------------ | --------------------------------- | ----------------------------------------------------------------------------------- | -------------------------- |
| **Source Code**                      | Source Files (.c, .py, .java)     | Human-readable program instructions                                                 | #code #artifact            |
| **Data**                             | Configuration Files (YAML, JSON)  | Define behavior without changing code                                               | #config #data              |
| **Interface**                        | APIs (REST, gRPC)                 | Contracts for external interaction                                                  | #interface #contract       |
| **Library**                          | Linked Libraries (.so, .dll)      | Reusable code modules integrated at build or runtime                                | #dependency #binary        |
| **Asset**                            | Static Assets (images, templates) | Non-executable content bundled with software                                        | #resource #media           |
| **External Service**                 | Cloud or Third-party Services     | Remote functionality accessed via APIs, outside the product’s codebase              | #service #integration      |
| **External Computational Component** | Databases, Message Queues, Caches | Infrastructure components providing computation, storage, or messaging capabilities | #infrastructure #component |

## Production Technical Object (Capital Good)

> **Objects used in the production process**

| **Category** | **Production Technical Object** | **Description** | **Tags** |
|--------------|----------------------------------|-----------------|--------|
| **Toolchain** | Compiler (GCC, Clang) | Translates source code to machine code | #build #tool |
| **Toolchain** | Build System (Make, CMake) | Automates compilation and linking | #automation #build |
| **Environment** | IDE (VS Code, IntelliJ) | Integrated development environment for coding | #editor #productivity |
| **Infrastructure** | CI/CD Server (Jenkins, GitHub Actions) | Automates testing and deployment workflows | #devops #pipeline |
| **Repository** | Version Control System (Git) | Tracks changes and collaboration on code | #vcs #collab |

## Evaluation Criteria

> **How do we evaluate Success?**

| **Category** | **Criterion** | **Description** |
|--------------|---------------|-----------------|
| **Correctness** | Functional Accuracy | Software behaves as specified under all valid inputs |
| **Reliability** | Fault Tolerance | Gracefully handles errors or unexpected conditions |
| **Maintainability** | Code Readability | Code is understandable and modifiable by other developers |
| **Performance** | Execution Efficiency | Meets latency, throughput, or resource constraints |
| **Usability** | User Experience | Interfaces are intuitive and meet user expectations |
| **Deployability** | Release Stability | Can be deployed safely with minimal downtime or risk |
| **Testability** | Coverage & Isolation | Code supports automated, comprehensive testing |

## References

- [Software Technology](../../../../Catalog/Technology/Software/README.md)  
- [Technology](../../../../Catalog/Technology/README.md)  
- [An Essay On Personal Programming Workflow](https://www.notion.so/An-Essay-On-Personal-Programming-Workflow-162c0f5171ec80378c25e846231dad0f?source=copy_link)
