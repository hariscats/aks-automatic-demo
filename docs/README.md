# Decision Criteria: AKS Automatic vs. AKS Standard

## Flowchart

```mermaid
flowchart TD
    A[Start] --> B{Do you need an easy-to-manage, preconfigured Kubernetes cluster?}
    B -->|Yes| C[Use AKS Automatic]
    B -->|No| D{Do you need flexibility and control over configurations?}
    
    C --> E{Do you require advanced customizations not covered by default settings?}
    E -->|Yes| F[Use AKS Standard]
    E -->|No| G[Continue with AKS Automatic]
    
    D -->|Yes| F[Use AKS Standard]
    D -->|No| H{Do you prefer a balance between ease of use and some control?}
    H -->|Yes| I[Consider AKS Automatic]
    H -->|No| J[Reevaluate requirements]
    
    G --> K{Evaluate specific features needed}
    K --> L[Preconfigured Node Management]
    K --> M[Streamlined Application Deployment]
    K --> N[Default Security Posture]
    
    F --> O{Consider additional effort for management}
    O --> P[Manual Node Pool Creation]
    O --> Q[Custom Monitoring and Logging]
    O --> R[Manual Scaling]
    O --> S[Manual Upgrades]
    
    L --> T[Dynamic Resource Adjustment]
    M --> U[Quick Deployment]
    N --> V[Enhanced Security with Preconfigured Settings]
    P --> W[Full Control over Node Pools]
    Q --> X[Flexible Monitoring Solutions]
    R --> Y[Control over Scaling Policies]
    S --> Z[Selectable Upgrade Channels]

    J --> AA[Consult Azure Documentation]
    AA --> AB[Consider Alternative Solutions]
