Generate Models
===

In the online_store_example directory run:

```
nexus gen models
```

The models.yaml files under conf will be read and generate:
- Create database objects SQL
- Nim data access source files
- A nim module source file
- A Nim model types source file


Data access source files
===

Placed under src/*module*/data_access and src/*module*cached_data_access, these
files provide functions to query, delete, update and insert data into tables
generated by model definitions.

For cache-enabled models you will find both non-cached files under data_access
and cached files under cached_data_access.


Nim module source file
===

This file placed under src/*module*/modules provides procedures to begin,
commit and rollback transactions and some other useful utilities.


Nim model types source file
===

This file is placed under src/*module*/types/model_types.nim and defines
objects and ref objects that the data access files work with.
