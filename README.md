### Revolution API

Find and create your legislators!

**Author:** Beth Secor

**Framework:** Rails 4.2.5

**Production Site:** [https://revolution-api-secor.herokuapp.com/api/v1/legislators/1](https://revolution-api-secor.herokuapp.com/api/v1/legislators/1)

#### Using This API

Welcome young revolutionary! This API has two endpoints, one for getting a legislator and one for creating a legislator.

#### Legislator Attributes

Legislators have the following attributes:

- Name
- State
- District
- Political party
- Term start date
- Term end date

##### Creating a Legislator

To create a legislator, make a post request to `https://revolution-api-secor.herokuapp.com/api/v1/legislators` with JSON data like so:

```
curl -X POST -H "Content-Type: application/json" -H "Cache-Control: no-cache" -d '{"legislator": {
        "name": "John Smith",
        "state": "CA",
        "district": 1,
        "political_party": "independent",
        "term_starts_on": "2016-02-01",
        "term_ends_on": "2018-02-01"
      }
}' "https://revolution-api-secor.herokuapp.com/api/v1/legislators"
```

##### Getting a Legislator

To get a legislator, you must know the `id` of the legislator you wish to retrieve. Here is a `curl` example:

```
curl -X GET -H "Content-Type: application/json" -H "Cache-Control: no-cache" "https://revolution-api-secor.herokuapp.com/api/v1/legislators/1"
```

This will return JSON like so:

```
{
  "id": 1,
  "name": "John Smith",
  "state": "CA",
  "district": 1,
  "political_party": "independent",
  "term_starts_on": "2016-02-01",
  "term_ends_on": "2018-02-01"
}
```
