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

    style A fill:#f9f,stroke:#333,stroke-width:2px,font-size:16px
    style B fill:#ff9,stroke:#333,stroke-width:2px,font-size:16px
    style C fill:#9f9,stroke:#333,stroke-width:2px,font-size:16px
    style D fill:#ff9,stroke:#333,stroke-width:2px,font-size:16px
    style E fill:#ff9,stroke:#333,stroke-width:2px,font-size:16px
    style F fill:#f99,stroke:#333,stroke-width:2px,font-size:16px
    style G fill:#9f9,stroke:#333,stroke-width:2px,font-size:16px
    style H fill:#ff9,stroke:#333,stroke-width:2px,font-size:16px
    style I fill:#9f9,stroke:#333,stroke-width:2px,font-size:16px
    style J fill:#f99,stroke:#333,stroke-width:2px,font-size:16px
    style K fill:#ff9,stroke:#333,stroke-width:2px,font-size:16px
    style L fill:#9f9,stroke:#333,stroke-width:2px,font-size:16px
    style M fill:#9f9,stroke:#333,stroke-width:2px,font-size:16px
    style N fill:#9f9,stroke:#333,stroke-width:2px,font-size:16px
    style O fill:#ff9,stroke:#333,stroke-width:2px,font-size:16px
    style P fill:#f99,stroke:#333,stroke-width:2px,font-size:16px
    style Q fill:#f99,stroke:#333,stroke-width:2px,font-size:16px
    style R fill:#f99,stroke:#333,stroke-width:2px,font-size:16px
    style S fill:#f99,stroke:#333,stroke-width:2px,font-size:16px
    style T fill:#9f9,stroke:#333,stroke-width:2px,font-size:16px
    style U fill:#9f9,stroke:#333,stroke-width:2px,font-size:16px
    style V fill:#9f9,stroke:#333,stroke-width:2px,font-size:16px
    style W fill:#f99,stroke:#333,stroke-width:2px,font-size:16px
    style X fill:#f99,stroke:#333,stroke-width:2px,font-size:16px
    style Y fill:#f99,stroke:#333,stroke-width:2px,font-size:16px
    style Z fill:#f99,stroke:#333,stroke-width:2px,font-size:16px
    style AA fill:#ff9,stroke:#333,stroke-width:2px,font-size:16px
    style AB fill:#ff9,stroke:#333,stroke-width:2px,font-size:16px
    classDef default font-size:16px;
