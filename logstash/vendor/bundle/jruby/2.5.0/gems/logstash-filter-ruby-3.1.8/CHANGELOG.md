## 3.1.8
 - [DOC] Added doc to describe the option `tag_with_exception_message`[#62](https://github.com/logstash-plugins/logstash-filter-ruby/pull/62)
 - Fix SyntaxError handling so other pipelines can shut down gracefully [#64](https://github.com/logstash-plugins/logstash-filter-ruby/pull/64)

## 3.1.7
  - [DOC] Added docs to help people avoid concurrency issues (often caused by accidentally relying on shared state with global variables, constants, or unguarded overwriting of instance variables) [#58](https://github.com/logstash-plugins/logstash-filter-ruby/issues/58)

## 3.1.6
  - Add error log backtrace to inline scripts [#54](https://github.com/logstash-plugins/logstash-filter-ruby/pull/54)

## 3.1.5
  - Fixed path based scripting not calling filter\_matched [#45](https://github.com/logstash-plugins/logstash-filter-ruby/issues/45)

## 3.1.4
  - fix return of multiple events when using file based scripts #41

## 3.1.3
  - Fix documentation issues

## 3.1.2
  - Fix concurrency issues in combination with Logstash 6.x and multiple worker threads that was caused by a [JRuby issue](https://github.com/jruby/jruby/issues/4868)

## 3.1.1
  - Update gemspec summary

## 3.1.0
  - Add file base ruby script support

## 3.0.4
  - Fix some documentation issues

## 3.0.2
  - Relax constraint on logstash-core-plugin-api to >= 1.60 <= 2.99

## 3.0.1
 - internal: Republish all the gems under jruby.

## 3.0.0
 - internal,deps: Update the plugin to the version 2.0 of the plugin api, this change is required for Logstash 5.0 compatibility. See https://github.com/elastic/logstash/issues/5141

## 2.0.5
 - internal,deps: Depend on logstash-core-plugin-api instead of logstash-core, removing the need to mass update plugins on major releases of logstash

## 2.0.4
 - internal,deps: New dependency requirements for logstash-core for the 5.0 release

## 2.0.3
 - internal,test,cleanup: Code cleanup and fixed json order verification is specs

## 2.0.0
 - internal: Plugins were updated to follow the new shutdown semantic, this mainly allows Logstash to instruct input plugins to terminate gracefully,
   instead of using Thread.raise on the plugins' threads. Ref: https://github.com/elastic/logstash/pull/3895
 - internal,deps: Dependency on logstash-core update to 2.0
