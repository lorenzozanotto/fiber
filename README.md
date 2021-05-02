<p align="center">
  <img src="https://i.imgur.com/KOvbUQY.png" alt="Fiber by Lorenzo Zanotto" height="400" />
</p>

[![Tests](https://github.com/lorenzozanotto/fiber/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/lorenzozanotto/fiber/actions/workflows/tests.yml)

**Fiber** is an alternative to CoreData, Realm and SQLite.

It's designed to simplify the way Swift developers manage persistent data, removing the need to use complex query systems or deal with manual, repetitive configurations.
Fiber has been built for those apps which don't require a fully fledged DBMS. <br>
Thanks to its swift-native query system it's **easy to use** and it's a perfect solution for mid-sized apps that want to keep things simple.

## What's at the core?

Fiber is not based on user defaults or similar alternatives. It has its own `.fiber` file that contains the data that it's going to be stored. 
This file can be **encrypted** using multiple strategies and **easily inspected** since it's a collection of JSON data structures.

Each entity, or collection of an entity, will be stored in a dedicated file so it's very quick to access to different parts of your stored data.
The main fiber file will keep a reference to each of these files and through native code it's possible to **query** entities in a concise and expressive fashion.

Fiber is inspired by **NoSQL** solutions that enable fast data read/write operations and have the benefits of non-relational DBMS.

## Roadmap

This library is currently an experiment and it's in active development. If you wish to contribute or ask questions feel free to drop an email to info [at] lorenzozanotto [dot] com.

Stay tuned :)
