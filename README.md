# Triagem inteligente de documentos com mapa

Mini-sistema em Django/GeoDjango que recebe textos públicos (dados abertos),
processa em segundo plano com Celery, classifica/resume com IA e mostra tudo num mapa.

## Como rodar

```bash
make up          # sobe Django, PostGIS e Redis
make migrate     # em outro terminal
make test        # testes
make lint        # ruff
```

Para criar um usuário do admin: `docker compose exec web python manage.py createsuperuser`.

- Health check: `/health/` (retorna a versão do PostGIS)
- Admin: `/admin/`

## Roadmap

- [x] 1. Django + PostgreSQL/PostGIS + Redis no docker-compose
- [ ] 2. Modelo com ponto geográfico + endpoint de cadastro
- [ ] 3. Tarefa Celery que processa o documento
- [ ] 4. Classificação e resumo com LLM + conjunto de avaliação
- [ ] 5. Mapa com filtro (OpenLayers)
- [ ] 6. CI no GitHub Actions + requisitos funcionais/não funcionais + diagrama

## Como o projeto é conduzido

- `docs/spec.md`: requisitos funcionais, não funcionais e critérios de aceite.
- `docs/adr/`: decisões de arquitetura (uma por arquivo).
- `CLAUDE.md`: contexto e regras de trabalho para o assistente de código.
- Trabalho em fatias pequenas, uma por commit.

> Usa apenas dados públicos. Nenhum documento sigiloso.
