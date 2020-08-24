# README


-- to connect with sequel pro, first install mysql --
brew install mysql@5.7
brew servicecs start mysql@5.7

host: 127.0.0.1
username: root
password: empty
port: default

-- adding bootstrap --
To install bootstrap:

1. First we will use yarn to add bootstrap and its dependencies by typing the following in the command line:
bin/yarn add bootstrap jquery popper.js

2. Then we need to configure Rails to alias $ to the jquery namespace in config/webpack/environment.js.
const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))

module.exports = environment

3. After that we need to require bootstrap in app/javascript/packs/application.js:
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")

4. Now rename app/assets/stylesheets/application.css to app/assets/stylesheets/application.scss
mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss

5. Last but not least require bootstrap styles to app/assets/stylesheets/application.scss:
@import "bootstrap/scss/bootstrap";


------ Dropping table -----
ActiveRecord::Migration.drop_table(:table_name)





------------ Note -----------

Focus more on structures my data.
How the components will interact with each other.
What does OOP adds on top of procedural programming (C, for instance)?
- Encapsulation
- A way to combine data and behavior in the same components
- Dynamic dispatch (polimorphism)
  -  Dispatches the correct method implementation based on the type of object on the left side of the dot.

class B < A
class C < A

def do_something(a: A)


----------- Database Diagram ------------

* Quest
| id | num_players | failures_threshold | outcome |
|----+-------------+--------------------+---------|
|  1 |           2 |                  1 | success |
* Turn
 | id | quest_id | decision |
 |----+----------+----------|
 |  1 |        1 | disagree |
 |  2 |        1 | agree    |
* QuestAction
 | id | quest_id | player_id | action   |
 |----+----------+-----------+----------|
 |  1 |        1 |         1 | help     |
 |  1 |        1 |         2 | sabotage |

