# Triagem inteligente de documentos com mapa

Mini-sistema em Django/GeoDjango que recebe textos públicos (dados abertos),
processa em segundo plano com Celery, classifica/resume com IA e mostra tudo num mapa.

## Como rodar

```bash
docker compose up --build
docker compose exec web python manage.py migrate
docker compose exec web python manage.py createsuperuser
```

- Health check: `/health/` (retorna a versão do PostGIS)
- Admin: `/admin/`

## Roadmap

- [x] 1. Django + PostgreSQL/PostGIS + Redis no docker-compose
- [ ] 2. Modelo com ponto geográfico + endpoint de cadastro
- [ ] 3. Tarefa Celery que processa o documento
- [ ] 4. Classificação e resumo com LLM + conjunto de avaliação
- [ ] 5. Mapa com filtro (OpenLayers)
- [ ] 6. CI no GitHub Actions + requisitos funcionais/não funcionais + diagrama

> Usa apenas dados públicos. Nenhum documento sigiloso.
