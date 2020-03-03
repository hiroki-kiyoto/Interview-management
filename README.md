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
| name | string | null: false |
| locate | string | null: false |

### Asociation
has_many :clients

## clients
| column | type |option |
|----|---- |----|
| id |  |  |
| name | string | null: false |
| period| integer | null: false |
| url |  text|  |
| locate | string | null: false |
| progresstable | text |  |
| mentor | references | foreign_key |

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
| starttime | datetime | null: false |
| endtime | datetime | null: false |
| courseperiod | integer | |
| weeklystudyhours | integer | |
| client | references | foreign_key |


### Asociation
belongs_to :client

## regularinterviews
| column | type |option |
|----|---- |----|
| id |  |  |
| nextgoal | text | |
| memo | text | |
| status | text | |
| starttime | datetime | null: false |
| endtime | datetime | null: false |
| weeklystudyhours | integer | |
| client | references | foreign_key |

### Asociation
belongs_to :client
