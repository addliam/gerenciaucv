# Gerencia UCV

# TODO

- email unique
- persona 1:1 usuario
- constrains db

Requiere una base de datos llamada `bdgerencia`

`GET /checkia`
Descripción: Permite verificar si la conexión con la Api OPENAI de está funcionando correctamente a través de una simple pregunta.

`POST /ia?userid=1`
Descripción: Basado en la lista de gastos e información personal del usuario, emite una lista de tres recomendaciones.

Respuesta:

```
{
    "recomendaciones": [
        {
            "descripcion": "Aunque es importante ahorrar e invertir, también es recomendable diversificar tus gastos para poder cubrir diferentes áreas como entretenimiento, educación, alimentación, etc.",
            "titulo": "Diversifica tus gastos"
        },
        {
            "descripcion": "Dado que has realizado gastos en compra de vitaminas, es importante que sigas priorizando tu salud y cuidado personal. Asegúrate de destinar un presupuesto adecuado para mantener tu bienestar.",
            "titulo": "Prioriza tu salud y cuidado personal"
        },
        {
            "descripcion": "Aunque ya realizas depósitos a tu cuenta de ahorro, sería beneficioso considerar aumentar la cantidad que destinas a ahorro e inversión para fortalecer tu futuro financiero y cumplir metas a largo plazo.",
            "titulo": "Considera aumentar el ahorro e inversión"
        }
    ]
}
```

TODO: Agregar tokenizacion para limitar las consultas hacia un endpoint, por ejemplo únicamente créditos para tres veces por semana.
