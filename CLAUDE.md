# Triagem de documentos com mapa

Objetivo: receber textos públicos, processar em segundo plano com Celery, classificar e resumir com IA
e mostrar o resultado num mapa. Case de portfólio para a vaga de Analista Python e IA (Basis / TRF2).

Stack: Django/GeoDjango, PostgreSQL/PostGIS, Redis, Celery, Docker Compose.

## Comandos
- Subir tudo: `make up`
- Migrar o banco: `make migrate`
- Testes: `make test`
- Lint e formatação: `make lint`

## Regras
- Trabalhar em fatias pequenas; uma fatia = um commit com mensagem clara.
- Antes de codar: ler `docs/spec.md` e os ADRs em `docs/adr/`.
- Só dados públicos. Nenhum documento sigiloso. Nunca commitar segredos (`.env` fica fora do Git).
- Toda decisão de arquitetura nova vira um ADR curto em `docs/adr/`.
- Não declarar uma fatia pronta sem rodar `make test` e `make lint`.
- Não inventar funcionalidade fora da spec; se a spec estiver errada, corrigir a spec primeiro.
- Atualizar o roadmap do README ao concluir cada fatia.
