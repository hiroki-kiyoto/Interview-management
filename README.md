# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version 2.5.1

- Rails version 5.2.3

- Database creation mysql version 5.6

# DB設計

## mentors
| column | type |option |
|----|---- |----|
| id |  |  |
| name | text | |
| locate | text | |

### Asociation
has_many :clients

## clients
| column | type |option |
|----|---- |----|
| id |  |  |
| name | text |  |
| period| integer |  |
| url |  text|  |
| progresstable | text |  |
| mentor_id | integer |  |

### Asociation
has_many :firstinterviews

has_many :regularinterviews

belongs_to :mentor

## firstinterviews
| column | type |option |
|----|---- |----|
| id |  |  |
| skill | text |  |
| goal | text | |
| nextgoal | text | |
| memo | text | |
| starttime | datetime | |
| endtime | datetime | |
| courseperiod | integer | |
| weeklystudyhours | integer | |
| client_id | integer | |


### Asociation
belongs_to :client

## regularinterviews
| column | type |option |
|----|---- |----|
| id |  |  |
| nextgoal | text | |
| memo | text | |
| status | text | |
| starttime | datetime | |
| endtime | datetime | |
| weeklystudyhours | integer | |
| client_id | integer | |

### Asociation
belongs_to :client
