# Commafy

Write a Rails application. The application has a single endpoint of form:

`GET /commafy/n​/x`

Where n​ can be any number and x ​is an integer between 2 and 4 inclusive. When called with valid values for n​and x ​the app is going to return JSON that looks like this:

```json
{
  "original": n​,
  "commafied": A
}
```

A​ is a string, formed by adding commas, at intervals of x​, to the string representation of n​.

Commas are added starting from the right of the string and moving left. If there is a decimal point, only add commas to the stuff to the left of the decimal point. For example:

`GET /commafy/1234567/3`

Should return:

```json
{
  "original": 1234567,
  "commafied": "1,234,567"
}
```

`GET /commafy/12345678/4`

Should return:

```json
{
  "original": 12345678,
  "commafied": "1234,5678"
}
```

`GET /commafy/123456.789/2`

Should return:

```json
{
  "original": 123456.789,
  "commafied": "12,34,56.789"
}
```

The only other requirement is that the app should have decent tests.
