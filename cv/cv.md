# Massimiliano Aroffo

Cagliari · maroffo [at] gmail.com · linkedin.com/in/maroffo · github.com/maroffo

## About me

Engineering leader with 25 years in software, now deliberately back to hands-on IC work to build the AI and cloud layer myself rather than manage it. My primary role today is Principal Engineer on a real-time agentic-security platform, building in Go the AI-firewall and agent zero-trust system that gives every agent action a security boundary and an audit record.

After leading and scaling teams as CTO, VP Engineering, and CISO, I returned to code because the current shift in AI-assisted development is best understood by building with it. I work AI-augmented (Claude Code, modular skills, automated code reviews), which is how a single engineer ships at this throughput, and I hold the same engineering rigor on security, performance, and testing.

My leadership background still shapes how I build: with team scalability in mind, with institutional knowledge captured as reusable patterns, and with developer experience weighted alongside raw performance. Google Cloud Professional Architect certified, with deep AWS serverless experience and a CISO/DPO security background.

## Key Skills

**AI & Agentic Security**: Designed and shipped an LLM-firewall gateway and agent zero-trust stack (cryptographic policy signing, attestation chains, SSRF defense, prompt-injection and PII detection). EU AI Act / OWASP ASI / NIST control mapping.

**AI-Assisted Development**: Practical experience integrating AI tools into development workflows: Claude Code for pair programming, Gemini for automated code reviews, modular AI skills systems. Published author on AI collaboration methodologies.

**Cloud Computing & Serverless**: GCP Professional Cloud Architect. Deep expertise in AWS (Lambda, SAM, ECS, S3). Infrastructure as Code with Terraform. Container orchestration with Kubernetes and Docker.

**Software Development**: Go, Python, Ruby, Java. High-performance systems, systematic optimization. Strong focus on testing (TDD, integration, e2e).

**DevOps & CI/CD**: GitLab CI / GitHub Actions template systems, Jenkins, automated deployment pipelines. Platform Engineering principles for developer experience optimization.

**Cybersecurity & Compliance**: CISO and DPO experience. GDPR, ISO 27001, Security Risk Assessment.

**Leadership & Architecture**: 25+ years designing SOA and EDA systems. Team scaling (0->40, multiple companies). Engineering ladders, career paths, Modern Agile practices.

## Work Experience

### 2026 - PRESENT
**Principal Engineer @ HikmaAI**
*Sardinia (remote) - https://hikmaai.io/*

Principal Engineer at a seed-stage startup building a real-time agentic-security platform: every agent action gets a security boundary and an audit record. Architected and delivered the v1 core across its two largest services and an on-prem distribution, working AI-augmented across security, observability, and GCP infrastructure.

**AI-Firewall Gateway (Go)**: Architect and lead author of the platform's core product, a privacy-first LLM firewall: 8 provider adapters (OpenAI, Anthropic, Gemini, Vertex, Bedrock, Azure, MCP, A2A) behind a unified streaming interface, with input controls, output detectors, and mid-stream blocking.

**Backend Control Plane (Go)**: Led the ground-up rewrite of a legacy NestJS backend to Go, holding byte-for-byte API parity gated by an E2E suite through each module cutover.

**Security Engineering**: Turned security audits into shipped, test-covered fixes across the gateway and backend (SSRF, auth-bypass, and policy-integrity hardening). Built an agent zero-trust backbone with cryptographic policy signing: per-agent identity, tool allowlists, attestation chains, and a live kill-switch.

**On-Prem Appliance**: Delivered the v1 HikmaAI Edge distribution: a multi-service bundle with one-command installer, air-gapped and Podman/BYO-infra modes, and a k3s Helm tier.

**Architecture & Observability**: Established the architecture baseline (C4 model and the majority of platform ADRs, with EU AI Act / OWASP ASI / NIST mapping) and wired distributed observability (OpenTelemetry, OCSF/SIEM, Cloud Trace) across Go, Python, and cloud.

### 2025 - PRESENT
**Cloud Architect (Fractional) @ Wishew**
*Sardinia (remote) - https://wishew.com*

Fractional Cloud Architect operating as an individual contributor. Re-platformed the legacy stack into a polyglot GCP + GitHub monorepo (NestJS, Go, React Native, Terraform).

**Multi-Environment Cloud Foundation (Terraform/GCP)**: Authored the IaC backbone (5 environments, 17 reusable modules), importing live resources into state and reconciling drift; all 7 production Cloud Run services run on it.

**Edge-Security Migration (Cloud Armor + Global Load Balancer)**: Led a 3-wave, 20-PR migration of all 5 public services onto Global Load Balancers behind a Cloud Armor WAF (OWASP CRS + adaptive L7-DDoS), with internal-only ingress and zero-downtime TLS cutovers.

**Cross-Cloud AWS / GCP Production Migration**: Ran the live production cutover off the legacy AWS/Rails stack (~100K users), built an inbound-email bridge and a Go media-migration job, and diagnosed and resolved a production-down cascade under load.

**Self-Hosted Analytics Platform (Beacon)**: Built a consent-gated, privacy-first product-analytics pipeline to replace third-party trackers: a 113-event typed schema feeding a universal TypeScript SDK and a stateless Go ingest service on Cloud Run streaming to BigQuery. Instrumented across 17 backend services and the mobile app.

**Hybrid Search Platform**: Built a 3-channel search system (PostgreSQL full-text, fuzzy trigram, and pgvector semantic via Vertex AI embeddings) fused with Reciprocal Rank Fusion, split across a NestJS writer and a Go read-only reader.

**Feed Platform (Go)**: Rebuilt the feed service (Redis caching, read replicas, Stale-While-Revalidate) for a 75% latency reduction (P50 ~200ms -> ~50ms via Profile-Guided Optimization), plus two admin-tunable ranking engines that retired 3 legacy endpoints.

### 2018 - 2025
**CTO → Technology Fellow · CISO @ iungo SpA**
*Modena - https://www.iungo.com*

Led transformation from custom software factory to international SaaS enterprise. Served as CTO (2018-2022), then transitioned to Technology Fellow role focused on technical innovation, Agile mentoring, and cybersecurity leadership.

**System Overhaul**: Redesigned legacy monolith into scalable cloud platform on GCP with well-defined integration APIs.

**Cost Optimization**: Reduced cloud and operations spend by ~75% through strategic refactoring and GCP migration.

**Team & Agile**: Grew the engineering team by 100% and transitioned the company from waterfall to Modern Agile, adding Product Management and UX Design.

**Security Compliance**: Implemented a Security Risk Assessment process, laying the groundwork for ISO 27001 certification.

### 2015 - 2018
**VP Engineering · CISO · DPO @ ShopFully International Group**
*Cagliari / Bologna - http://corporate.shopfullygroup.com/*

Led software engineering and information security for a digital retail platform. Dual role as VP Engineering (team leadership, architecture, delivery) and CISO/DPO (security strategy, GDPR compliance).

**Scale & Cost Optimization**: Grew the user base from 20M to 30M while reducing infrastructure costs by 53% (API re-architecture, mobile optimization, Fastly CDN, AWS migration).

**Team Expansion**: Grew the team by 80%, recruiting 12 engineers and strengthening technical capabilities.

**Security and Compliance**: Achieved GDPR compliance ahead of the May 2018 deadline; designed the Security and Data Protection Assessment process.

### 2011 - 2014
**Principal Software Architect · Team Leader @ Energeya Srl**
*Milano / Cagliari - Now FIS Global*

Software architecture and team leadership for energy sector clients (Enel, Enel Green Power, Enel Gas). Built the Cagliari development center from scratch, growing the team from 0 to 20 developers.

### 2007 - 2011
**Tech Lead @ Sinapsi SpA**
*Milano*

### 2005 - 2007
**Software Architect @ Editoriale Domus SpA**
*Milano*

### 1999 - 2005
**CTO @ Motonline SpA**
*Milano*

## Education and Certifications

- Google Cloud Certified - Professional Cloud Architect
- Cybersecurity Management Program - Bologna Business School
- Cybersecurity Master's Program - Rochester Institute of Technology
- Master's Degree in Computer Science Engineering - Polytechnic University of Milan
