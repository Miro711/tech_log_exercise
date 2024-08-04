### Introduction

In the Tech Log an `Aircraft` belongs to an `Operator` and as such an `Operator` can have many `Aircraft`.

The Product Manager has requested a new document management capability as follows:

* An `Operator` will have a `Document`
* An `Aircraft` can optionally have a `Document`
* If an `Aircraft` has an associated `Document` this should be the `Document` that is used for the `Aircraft`, otherwise the `Document` for the `Operator` to which the `Aircraft` belongs should be used.

### Setup

* Ensure you have ruby and bundler installed
* Navigate to the root directory of this challenge
* Run `bundle install` to install dependencies
* Run `IRBRC="./.irbrc" irb` to drop into the interactive ruby environment
* Run `rspec` to run the test suite

### Tasks

1. Add functionality to `Operator`, `Aircraft` and `Document` that allows you to fetch the entire list of records for each. Then add functionality to each that allows you to fetch a specific record by its `id` property.

2. Add functionality to `Aircraft` that allows you to fetch its `Operator`. Then add similar functionality to `Operator` that allows you to obtain a list of its `Aircraft`.

3. Modify the code in such a way that it is possible to find out which record a `Document` belongs to.

4. Modify the code in such a way that when given an id for an `Aircraft` it is possible to determine which `Document` should be referenced.

### Notes

* We’ve given you some boilerplate to start you off, but you’re welcome to change any of it or start from scratch, it’s entirely up to you
* Don't worry about running out of time - you are welcome to provide some additional information about your intentions (see below)
* We care as much about your approach and considerations as the finished product
* Please include answers to the following questions:
  * What more would you do if you spent more time on it? (this is an opportunity to explain your
thinking and approach further)
  * Explain why you took the approach that you did
  * Are there any known issues you'd like to flag?
* You have a total of **60 minutes** to cover both your coding and answering the above questions
* Please submit your work in one of the following ways:
  * Send us a link to a git repository or online IDE (e.g. [Replit](https://replit.com))
  * Send us a Google Drive/Dropbox link (or similar) to download a zip file (**please include your .git folder with this**)
