Define Models
===

Edit the file conf/web_app/models/models.yaml that defines the Order and
Product models.


Notes
====

Both models use an auto-value primary key of type int64.

Model definitions generate SQL files and Nim ORM source files. The create SQL
files must be run on the target database to create the database objects.

The relationships section defines how model fields are related. They are used
to generate foreign keys.

The Order model references a model called Account User. This model is defined
in Nexus's Core module.


Contents of models.yaml
====

```
%YAML 1.2
---

- name: Order
  description: >
    Orders of products.
    Customers are in Account User (Nexus Core).
  module: Web App
  modelOptions: [ object ]
  tableOptions: [ generate ]
  fields:
  - name: Order Id
    type: int64
    constraints: [ auto-value, not null ]
  - name: Product Id
    type: int64
    constraints: [ not null ]
  - name: Customer Id
    type: int64
    constraints: [ not null ]
  - name: Price
    type: float
    constraints: [ not null ]
  - name: Created
    type: datetime
    constraints: [ not null ]
  - name: Delisted
    type: datetime
    constraints: []
  defaults: []
  pkFields: [ Order Id ]
  uniqueFieldSets: []
  relationships:
  - type: many to 1
    from: Product Id
    to: Product.Product Id
  - type: many to 1
    from: Customer Id
    to: Account User.Account User Id
  indexes: []
  getFunctions: []
  updateFunctions: []
  urlKeys: []


- name: Product
  description: >
    List of products by category.
    Categories are stored in List Item (Nexus Core Extras).
  module: Web App
  modelOptions: [ object ]
  tableOptions: [ generate,
                  cached ]
  fields:
  - name: Product Id
    type: int64
    constraints: [ auto-value, not null ]
  - name: Category Id
    type: int64
    constraints: [ not null ]
  - name: Price
    type: float
    constraints: [ not null ]
  - name: Created
    type: datetime
    constraints: [ not null ]
  - name: Delisted
    type: datetime
    constraints: []
  defaults: []
  pkFields: [ Product Id ]
  uniqueFieldSets: []
  relationships:
  - type: many to 1
    from: Category Id
    to: List Item.List Item Id
  indexes:
  - unique: false
    fields: [ Created ]
  getFunctions: []
  updateFunctions: []
  urlKeys: []
```

