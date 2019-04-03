# API Documentation

## Game records

### GET Record

HTTP: GET

URL: /records/[id]

### WRITE Record

HTTP: PUT

URL: /records

```
player1_name - STRING
player2_name - STRING
player1_race - STRING (one of 'Zerg', 'Terran', 'Protoss' or 'Random')
player2_race - STRING (one of 'Zerg', 'Terran', 'Protoss' or 'Random')
map - STRING
winner - BOOL
```

## HTTP Error codes

200 and 404 will be used as defined. 400 might be returned, if the user
request contained illegal values or value types for the defined fields,
or required fields were not provided. The API will generally not return an
error, if the request contained fields, which are not specified.

On failure, the response will always return JSON data with the "error_text"
field, which gives an error description.
