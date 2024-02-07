07:38:59 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.ChangeLogParseException: classpath:/db/changelog/db.changelog-master.yaml does not exist
07:38:59 ERROR [org.springframework.boot.diagnostics.LoggingFailureAnalysisReporter] - 

***************************
APPLICATION FAILED TO START
***************************

Description:

Liquibase failed to start because no changelog could be found at 'classpath:/db/changelog/db.changelog-master.yaml'.

Action:

Make sure a Liquibase changelog is present at the configured path.

07:40:54 ERROR [liquibase.changelog] - ChangeSet db.changelog/db.changelog-1.0.sql::1::jjasinovski encountered an exception.
07:40:54 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 14 [Failed SQL: (0) CREATE TABLE `author` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
07:40:54 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 14 [Failed SQL: (0) CREATE TABLE `author` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1773)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:599)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:312)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1231)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:949)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:624)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: liquibase.exception.UnexpectedLiquibaseException: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 14 [Failed SQL: (0) CREATE TABLE `author` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:304)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.invokeInitMethods(AbstractAutowireCapableBeanFactory.java:1820)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1769)
	... 18 common frames omitted
Caused by: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 14 [Failed SQL: (0) CREATE TABLE `author` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.command.CommandScope.execute(CommandScope.java:253)
	at liquibase.Liquibase.lambda$update$0(Liquibase.java:245)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Liquibase.runInScope(Liquibase.java:1419)
	at liquibase.Liquibase.update(Liquibase.java:234)
	at liquibase.Liquibase.update(Liquibase.java:212)
	at liquibase.integration.spring.SpringLiquibase.performUpdate(SpringLiquibase.java:343)
	at liquibase.integration.spring.SpringLiquibase.lambda$afterPropertiesSet$0(SpringLiquibase.java:294)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:287)
	... 20 common frames omitted
Caused by: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 14 [Failed SQL: (0) CREATE TABLE `author` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:151)
	at liquibase.command.core.AbstractUpdateCommandStep.lambda$run$0(AbstractUpdateCommandStep.java:110)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.command.core.AbstractUpdateCommandStep.run(AbstractUpdateCommandStep.java:108)
	at liquibase.command.core.UpdateCommandStep.run(UpdateCommandStep.java:105)
	at liquibase.command.CommandScope.execute(CommandScope.java:217)
	... 36 common frames omitted
Caused by: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 14 [Failed SQL: (0) CREATE TABLE `author` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:797)
	at liquibase.changelog.visitor.UpdateVisitor.executeAcceptedChange(UpdateVisitor.java:119)
	at liquibase.changelog.visitor.UpdateVisitor.visit(UpdateVisitor.java:68)
	at liquibase.changelog.ChangeLogIterator$2.lambda$run$0(ChangeLogIterator.java:133)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.changelog.ChangeLogIterator$2.run(ChangeLogIterator.java:122)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.Scope.child(Scope.java:256)
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:89)
	... 44 common frames omitted
Caused by: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 14 [Failed SQL: (0) CREATE TABLE `author` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:470)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:77)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:179)
	at liquibase.database.AbstractJdbcDatabase.execute(AbstractJdbcDatabase.java:1291)
	at liquibase.database.AbstractJdbcDatabase.executeStatements(AbstractJdbcDatabase.java:1273)
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:755)
	... 59 common frames omitted
Caused by: org.postgresql.util.PSQLException: ERROR: syntax error at or near "`"
  Position: 14
	at org.postgresql.core.v3.QueryExecutorImpl.receiveErrorResponse(QueryExecutorImpl.java:2712)
	at org.postgresql.core.v3.QueryExecutorImpl.processResults(QueryExecutorImpl.java:2400)
	at org.postgresql.core.v3.QueryExecutorImpl.execute(QueryExecutorImpl.java:367)
	at org.postgresql.jdbc.PgStatement.executeInternal(PgStatement.java:498)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:415)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:335)
	at org.postgresql.jdbc.PgStatement.executeCachedSql(PgStatement.java:321)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:297)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:292)
	at com.zaxxer.hikari.pool.ProxyStatement.execute(ProxyStatement.java:94)
	at com.zaxxer.hikari.pool.HikariProxyStatement.execute(HikariProxyStatement.java)
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:464)
	... 64 common frames omitted
07:42:13 ERROR [liquibase.changelog] - ChangeSet db.changelog/db.changelog-1.0.sql::1::jjasinovski encountered an exception.
07:42:13 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 49 [Failed SQL: (0) CREATE TABLE author (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
07:42:13 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 49 [Failed SQL: (0) CREATE TABLE author (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1773)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:599)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:312)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1231)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:949)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:624)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: liquibase.exception.UnexpectedLiquibaseException: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 49 [Failed SQL: (0) CREATE TABLE author (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:304)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.invokeInitMethods(AbstractAutowireCapableBeanFactory.java:1820)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1769)
	... 18 common frames omitted
Caused by: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 49 [Failed SQL: (0) CREATE TABLE author (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.command.CommandScope.execute(CommandScope.java:253)
	at liquibase.Liquibase.lambda$update$0(Liquibase.java:245)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Liquibase.runInScope(Liquibase.java:1419)
	at liquibase.Liquibase.update(Liquibase.java:234)
	at liquibase.Liquibase.update(Liquibase.java:212)
	at liquibase.integration.spring.SpringLiquibase.performUpdate(SpringLiquibase.java:343)
	at liquibase.integration.spring.SpringLiquibase.lambda$afterPropertiesSet$0(SpringLiquibase.java:294)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:287)
	... 20 common frames omitted
Caused by: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 49 [Failed SQL: (0) CREATE TABLE author (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:151)
	at liquibase.command.core.AbstractUpdateCommandStep.lambda$run$0(AbstractUpdateCommandStep.java:110)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.command.core.AbstractUpdateCommandStep.run(AbstractUpdateCommandStep.java:108)
	at liquibase.command.core.UpdateCommandStep.run(UpdateCommandStep.java:105)
	at liquibase.command.CommandScope.execute(CommandScope.java:217)
	... 36 common frames omitted
Caused by: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 49 [Failed SQL: (0) CREATE TABLE author (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:797)
	at liquibase.changelog.visitor.UpdateVisitor.executeAcceptedChange(UpdateVisitor.java:119)
	at liquibase.changelog.visitor.UpdateVisitor.visit(UpdateVisitor.java:68)
	at liquibase.changelog.ChangeLogIterator$2.lambda$run$0(ChangeLogIterator.java:133)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.changelog.ChangeLogIterator$2.run(ChangeLogIterator.java:122)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.Scope.child(Scope.java:256)
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:89)
	... 44 common frames omitted
Caused by: liquibase.exception.DatabaseException: ERROR: syntax error at or near "`"
  Position: 49 [Failed SQL: (0) CREATE TABLE author (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `fio` varchar(300) NOT NULL,
                          `birthday` date NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:470)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:77)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:179)
	at liquibase.database.AbstractJdbcDatabase.execute(AbstractJdbcDatabase.java:1291)
	at liquibase.database.AbstractJdbcDatabase.executeStatements(AbstractJdbcDatabase.java:1273)
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:755)
	... 59 common frames omitted
Caused by: org.postgresql.util.PSQLException: ERROR: syntax error at or near "`"
  Position: 49
	at org.postgresql.core.v3.QueryExecutorImpl.receiveErrorResponse(QueryExecutorImpl.java:2712)
	at org.postgresql.core.v3.QueryExecutorImpl.processResults(QueryExecutorImpl.java:2400)
	at org.postgresql.core.v3.QueryExecutorImpl.execute(QueryExecutorImpl.java:367)
	at org.postgresql.jdbc.PgStatement.executeInternal(PgStatement.java:498)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:415)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:335)
	at org.postgresql.jdbc.PgStatement.executeCachedSql(PgStatement.java:321)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:297)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:292)
	at com.zaxxer.hikari.pool.ProxyStatement.execute(ProxyStatement.java:94)
	at com.zaxxer.hikari.pool.HikariProxyStatement.execute(HikariProxyStatement.java)
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:464)
	... 64 common frames omitted
07:44:15 ERROR [liquibase.changelog] - ChangeSet db.changelog/db.changelog-1.0.sql::1::jjasinovski encountered an exception.
07:44:15 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
07:44:15 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1773)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:599)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:312)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1231)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:949)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:624)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: liquibase.exception.UnexpectedLiquibaseException: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:304)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.invokeInitMethods(AbstractAutowireCapableBeanFactory.java:1820)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1769)
	... 18 common frames omitted
Caused by: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.command.CommandScope.execute(CommandScope.java:253)
	at liquibase.Liquibase.lambda$update$0(Liquibase.java:245)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Liquibase.runInScope(Liquibase.java:1419)
	at liquibase.Liquibase.update(Liquibase.java:234)
	at liquibase.Liquibase.update(Liquibase.java:212)
	at liquibase.integration.spring.SpringLiquibase.performUpdate(SpringLiquibase.java:343)
	at liquibase.integration.spring.SpringLiquibase.lambda$afterPropertiesSet$0(SpringLiquibase.java:294)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:287)
	... 20 common frames omitted
Caused by: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:151)
	at liquibase.command.core.AbstractUpdateCommandStep.lambda$run$0(AbstractUpdateCommandStep.java:110)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.command.core.AbstractUpdateCommandStep.run(AbstractUpdateCommandStep.java:108)
	at liquibase.command.core.UpdateCommandStep.run(UpdateCommandStep.java:105)
	at liquibase.command.CommandScope.execute(CommandScope.java:217)
	... 36 common frames omitted
Caused by: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:797)
	at liquibase.changelog.visitor.UpdateVisitor.executeAcceptedChange(UpdateVisitor.java:119)
	at liquibase.changelog.visitor.UpdateVisitor.visit(UpdateVisitor.java:68)
	at liquibase.changelog.ChangeLogIterator$2.lambda$run$0(ChangeLogIterator.java:133)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.changelog.ChangeLogIterator$2.run(ChangeLogIterator.java:122)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.Scope.child(Scope.java:256)
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:89)
	... 44 common frames omitted
Caused by: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8]
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:470)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:77)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:179)
	at liquibase.database.AbstractJdbcDatabase.execute(AbstractJdbcDatabase.java:1291)
	at liquibase.database.AbstractJdbcDatabase.executeStatements(AbstractJdbcDatabase.java:1273)
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:755)
	... 59 common frames omitted
Caused by: org.postgresql.util.PSQLException: ERROR: syntax error at or near "("
  Position: 60
	at org.postgresql.core.v3.QueryExecutorImpl.receiveErrorResponse(QueryExecutorImpl.java:2712)
	at org.postgresql.core.v3.QueryExecutorImpl.processResults(QueryExecutorImpl.java:2400)
	at org.postgresql.core.v3.QueryExecutorImpl.execute(QueryExecutorImpl.java:367)
	at org.postgresql.jdbc.PgStatement.executeInternal(PgStatement.java:498)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:415)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:335)
	at org.postgresql.jdbc.PgStatement.executeCachedSql(PgStatement.java:321)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:297)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:292)
	at com.zaxxer.hikari.pool.ProxyStatement.execute(ProxyStatement.java:94)
	at com.zaxxer.hikari.pool.HikariProxyStatement.execute(HikariProxyStatement.java)
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:464)
	... 64 common frames omitted
07:45:37 ERROR [liquibase.changelog] - ChangeSet db.changelog/db.changelog-1.0.sql::1::jjasinovski encountered an exception.
07:45:37 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
)]
07:45:37 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
)]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1773)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:599)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:312)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1231)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:949)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:624)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: liquibase.exception.UnexpectedLiquibaseException: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
)]
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:304)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.invokeInitMethods(AbstractAutowireCapableBeanFactory.java:1820)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1769)
	... 18 common frames omitted
Caused by: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
)]
	at liquibase.command.CommandScope.execute(CommandScope.java:253)
	at liquibase.Liquibase.lambda$update$0(Liquibase.java:245)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Liquibase.runInScope(Liquibase.java:1419)
	at liquibase.Liquibase.update(Liquibase.java:234)
	at liquibase.Liquibase.update(Liquibase.java:212)
	at liquibase.integration.spring.SpringLiquibase.performUpdate(SpringLiquibase.java:343)
	at liquibase.integration.spring.SpringLiquibase.lambda$afterPropertiesSet$0(SpringLiquibase.java:294)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:287)
	... 20 common frames omitted
Caused by: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
)]
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:151)
	at liquibase.command.core.AbstractUpdateCommandStep.lambda$run$0(AbstractUpdateCommandStep.java:110)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.command.core.AbstractUpdateCommandStep.run(AbstractUpdateCommandStep.java:108)
	at liquibase.command.core.UpdateCommandStep.run(UpdateCommandStep.java:105)
	at liquibase.command.CommandScope.execute(CommandScope.java:217)
	... 36 common frames omitted
Caused by: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::1::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
)]
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:797)
	at liquibase.changelog.visitor.UpdateVisitor.executeAcceptedChange(UpdateVisitor.java:119)
	at liquibase.changelog.visitor.UpdateVisitor.visit(UpdateVisitor.java:68)
	at liquibase.changelog.ChangeLogIterator$2.lambda$run$0(ChangeLogIterator.java:133)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.changelog.ChangeLogIterator$2.run(ChangeLogIterator.java:122)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.Scope.child(Scope.java:256)
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:89)
	... 44 common frames omitted
Caused by: liquibase.exception.DatabaseException: ERROR: syntax error at or near "("
  Position: 60 [Failed SQL: (0) CREATE TABLE author (
                           id  bigint(20) NOT NULL AUTO_INCREMENT,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
)]
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:470)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:77)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:179)
	at liquibase.database.AbstractJdbcDatabase.execute(AbstractJdbcDatabase.java:1291)
	at liquibase.database.AbstractJdbcDatabase.executeStatements(AbstractJdbcDatabase.java:1273)
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:755)
	... 59 common frames omitted
Caused by: org.postgresql.util.PSQLException: ERROR: syntax error at or near "("
  Position: 60
	at org.postgresql.core.v3.QueryExecutorImpl.receiveErrorResponse(QueryExecutorImpl.java:2712)
	at org.postgresql.core.v3.QueryExecutorImpl.processResults(QueryExecutorImpl.java:2400)
	at org.postgresql.core.v3.QueryExecutorImpl.execute(QueryExecutorImpl.java:367)
	at org.postgresql.jdbc.PgStatement.executeInternal(PgStatement.java:498)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:415)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:335)
	at org.postgresql.jdbc.PgStatement.executeCachedSql(PgStatement.java:321)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:297)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:292)
	at com.zaxxer.hikari.pool.ProxyStatement.execute(ProxyStatement.java:94)
	at com.zaxxer.hikari.pool.HikariProxyStatement.execute(HikariProxyStatement.java)
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:464)
	... 64 common frames omitted
07:52:42 ERROR [liquibase.changelog] - ChangeSet db.changelog/db.changelog-1.0.sql::4::jjasinovski encountered an exception.
07:52:42 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::4::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "user"
  Position: 14 [Failed SQL: (0) CREATE TABLE user (
                         id  BIGSERIAL NOT NULL ,
                         username  varchar(50) DEFAULT NULL UNIQUE,
                         password  varchar(200) DEFAULT NULL,
                         enabled  smallint DEFAULT NULL,
                         password_sha256  varchar(100) DEFAULT NULL,
                        PRIMARY KEY ( id )
)]
07:52:42 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::4::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "user"
  Position: 14 [Failed SQL: (0) CREATE TABLE user (
                         id  BIGSERIAL NOT NULL ,
                         username  varchar(50) DEFAULT NULL UNIQUE,
                         password  varchar(200) DEFAULT NULL,
                         enabled  smallint DEFAULT NULL,
                         password_sha256  varchar(100) DEFAULT NULL,
                        PRIMARY KEY ( id )
)]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1773)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:599)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:312)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1231)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:949)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:624)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: liquibase.exception.UnexpectedLiquibaseException: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::4::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "user"
  Position: 14 [Failed SQL: (0) CREATE TABLE user (
                         id  BIGSERIAL NOT NULL ,
                         username  varchar(50) DEFAULT NULL UNIQUE,
                         password  varchar(200) DEFAULT NULL,
                         enabled  smallint DEFAULT NULL,
                         password_sha256  varchar(100) DEFAULT NULL,
                        PRIMARY KEY ( id )
)]
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:304)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.invokeInitMethods(AbstractAutowireCapableBeanFactory.java:1820)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1769)
	... 18 common frames omitted
Caused by: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::4::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "user"
  Position: 14 [Failed SQL: (0) CREATE TABLE user (
                         id  BIGSERIAL NOT NULL ,
                         username  varchar(50) DEFAULT NULL UNIQUE,
                         password  varchar(200) DEFAULT NULL,
                         enabled  smallint DEFAULT NULL,
                         password_sha256  varchar(100) DEFAULT NULL,
                        PRIMARY KEY ( id )
)]
	at liquibase.command.CommandScope.execute(CommandScope.java:253)
	at liquibase.Liquibase.lambda$update$0(Liquibase.java:245)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Liquibase.runInScope(Liquibase.java:1419)
	at liquibase.Liquibase.update(Liquibase.java:234)
	at liquibase.Liquibase.update(Liquibase.java:212)
	at liquibase.integration.spring.SpringLiquibase.performUpdate(SpringLiquibase.java:343)
	at liquibase.integration.spring.SpringLiquibase.lambda$afterPropertiesSet$0(SpringLiquibase.java:294)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:287)
	... 20 common frames omitted
Caused by: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::4::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "user"
  Position: 14 [Failed SQL: (0) CREATE TABLE user (
                         id  BIGSERIAL NOT NULL ,
                         username  varchar(50) DEFAULT NULL UNIQUE,
                         password  varchar(200) DEFAULT NULL,
                         enabled  smallint DEFAULT NULL,
                         password_sha256  varchar(100) DEFAULT NULL,
                        PRIMARY KEY ( id )
)]
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:151)
	at liquibase.command.core.AbstractUpdateCommandStep.lambda$run$0(AbstractUpdateCommandStep.java:110)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.command.core.AbstractUpdateCommandStep.run(AbstractUpdateCommandStep.java:108)
	at liquibase.command.core.UpdateCommandStep.run(UpdateCommandStep.java:105)
	at liquibase.command.CommandScope.execute(CommandScope.java:217)
	... 36 common frames omitted
Caused by: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::4::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: syntax error at or near "user"
  Position: 14 [Failed SQL: (0) CREATE TABLE user (
                         id  BIGSERIAL NOT NULL ,
                         username  varchar(50) DEFAULT NULL UNIQUE,
                         password  varchar(200) DEFAULT NULL,
                         enabled  smallint DEFAULT NULL,
                         password_sha256  varchar(100) DEFAULT NULL,
                        PRIMARY KEY ( id )
)]
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:797)
	at liquibase.changelog.visitor.UpdateVisitor.executeAcceptedChange(UpdateVisitor.java:119)
	at liquibase.changelog.visitor.UpdateVisitor.visit(UpdateVisitor.java:68)
	at liquibase.changelog.ChangeLogIterator$2.lambda$run$0(ChangeLogIterator.java:133)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.changelog.ChangeLogIterator$2.run(ChangeLogIterator.java:122)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.Scope.child(Scope.java:256)
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:89)
	... 44 common frames omitted
Caused by: liquibase.exception.DatabaseException: ERROR: syntax error at or near "user"
  Position: 14 [Failed SQL: (0) CREATE TABLE user (
                         id  BIGSERIAL NOT NULL ,
                         username  varchar(50) DEFAULT NULL UNIQUE,
                         password  varchar(200) DEFAULT NULL,
                         enabled  smallint DEFAULT NULL,
                         password_sha256  varchar(100) DEFAULT NULL,
                        PRIMARY KEY ( id )
)]
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:470)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:77)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:179)
	at liquibase.database.AbstractJdbcDatabase.execute(AbstractJdbcDatabase.java:1291)
	at liquibase.database.AbstractJdbcDatabase.executeStatements(AbstractJdbcDatabase.java:1273)
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:755)
	... 59 common frames omitted
Caused by: org.postgresql.util.PSQLException: ERROR: syntax error at or near "user"
  Position: 14
	at org.postgresql.core.v3.QueryExecutorImpl.receiveErrorResponse(QueryExecutorImpl.java:2712)
	at org.postgresql.core.v3.QueryExecutorImpl.processResults(QueryExecutorImpl.java:2400)
	at org.postgresql.core.v3.QueryExecutorImpl.execute(QueryExecutorImpl.java:367)
	at org.postgresql.jdbc.PgStatement.executeInternal(PgStatement.java:498)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:415)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:335)
	at org.postgresql.jdbc.PgStatement.executeCachedSql(PgStatement.java:321)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:297)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:292)
	at com.zaxxer.hikari.pool.ProxyStatement.execute(ProxyStatement.java:94)
	at com.zaxxer.hikari.pool.HikariProxyStatement.execute(HikariProxyStatement.java)
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:464)
	... 64 common frames omitted
07:53:40 ERROR [liquibase.changelog] - ChangeSet db.changelog/db.changelog-1.0.sql::6::jjasinovski encountered an exception.
07:53:40 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: relation "book" does not exist [Failed SQL: (0) CREATE TABLE vote (
                      id BIGSERIAL PRIMARY KEY,
                      value INT DEFAULT 0,
                      book_id BIGINT NOT NULL,
                      username VARCHAR(100) NOT NULL,
                      UNIQUE (id),
                      FOREIGN KEY (book_id) REFERENCES book (id) ON DELETE CASCADE ON UPDATE NO ACTION
)]
07:53:40 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: relation "book" does not exist [Failed SQL: (0) CREATE TABLE vote (
                      id BIGSERIAL PRIMARY KEY,
                      value INT DEFAULT 0,
                      book_id BIGINT NOT NULL,
                      username VARCHAR(100) NOT NULL,
                      UNIQUE (id),
                      FOREIGN KEY (book_id) REFERENCES book (id) ON DELETE CASCADE ON UPDATE NO ACTION
)]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1773)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:599)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:312)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1231)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:949)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:624)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: liquibase.exception.UnexpectedLiquibaseException: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: relation "book" does not exist [Failed SQL: (0) CREATE TABLE vote (
                      id BIGSERIAL PRIMARY KEY,
                      value INT DEFAULT 0,
                      book_id BIGINT NOT NULL,
                      username VARCHAR(100) NOT NULL,
                      UNIQUE (id),
                      FOREIGN KEY (book_id) REFERENCES book (id) ON DELETE CASCADE ON UPDATE NO ACTION
)]
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:304)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.invokeInitMethods(AbstractAutowireCapableBeanFactory.java:1820)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1769)
	... 18 common frames omitted
Caused by: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: relation "book" does not exist [Failed SQL: (0) CREATE TABLE vote (
                      id BIGSERIAL PRIMARY KEY,
                      value INT DEFAULT 0,
                      book_id BIGINT NOT NULL,
                      username VARCHAR(100) NOT NULL,
                      UNIQUE (id),
                      FOREIGN KEY (book_id) REFERENCES book (id) ON DELETE CASCADE ON UPDATE NO ACTION
)]
	at liquibase.command.CommandScope.execute(CommandScope.java:253)
	at liquibase.Liquibase.lambda$update$0(Liquibase.java:245)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Liquibase.runInScope(Liquibase.java:1419)
	at liquibase.Liquibase.update(Liquibase.java:234)
	at liquibase.Liquibase.update(Liquibase.java:212)
	at liquibase.integration.spring.SpringLiquibase.performUpdate(SpringLiquibase.java:343)
	at liquibase.integration.spring.SpringLiquibase.lambda$afterPropertiesSet$0(SpringLiquibase.java:294)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:287)
	... 20 common frames omitted
Caused by: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: relation "book" does not exist [Failed SQL: (0) CREATE TABLE vote (
                      id BIGSERIAL PRIMARY KEY,
                      value INT DEFAULT 0,
                      book_id BIGINT NOT NULL,
                      username VARCHAR(100) NOT NULL,
                      UNIQUE (id),
                      FOREIGN KEY (book_id) REFERENCES book (id) ON DELETE CASCADE ON UPDATE NO ACTION
)]
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:151)
	at liquibase.command.core.AbstractUpdateCommandStep.lambda$run$0(AbstractUpdateCommandStep.java:110)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.command.core.AbstractUpdateCommandStep.run(AbstractUpdateCommandStep.java:108)
	at liquibase.command.core.UpdateCommandStep.run(UpdateCommandStep.java:105)
	at liquibase.command.CommandScope.execute(CommandScope.java:217)
	... 36 common frames omitted
Caused by: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-1.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: relation "book" does not exist [Failed SQL: (0) CREATE TABLE vote (
                      id BIGSERIAL PRIMARY KEY,
                      value INT DEFAULT 0,
                      book_id BIGINT NOT NULL,
                      username VARCHAR(100) NOT NULL,
                      UNIQUE (id),
                      FOREIGN KEY (book_id) REFERENCES book (id) ON DELETE CASCADE ON UPDATE NO ACTION
)]
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:797)
	at liquibase.changelog.visitor.UpdateVisitor.executeAcceptedChange(UpdateVisitor.java:119)
	at liquibase.changelog.visitor.UpdateVisitor.visit(UpdateVisitor.java:68)
	at liquibase.changelog.ChangeLogIterator$2.lambda$run$0(ChangeLogIterator.java:133)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.changelog.ChangeLogIterator$2.run(ChangeLogIterator.java:122)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.Scope.child(Scope.java:256)
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:89)
	... 44 common frames omitted
Caused by: liquibase.exception.DatabaseException: ERROR: relation "book" does not exist [Failed SQL: (0) CREATE TABLE vote (
                      id BIGSERIAL PRIMARY KEY,
                      value INT DEFAULT 0,
                      book_id BIGINT NOT NULL,
                      username VARCHAR(100) NOT NULL,
                      UNIQUE (id),
                      FOREIGN KEY (book_id) REFERENCES book (id) ON DELETE CASCADE ON UPDATE NO ACTION
)]
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:470)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:77)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:179)
	at liquibase.database.AbstractJdbcDatabase.execute(AbstractJdbcDatabase.java:1291)
	at liquibase.database.AbstractJdbcDatabase.executeStatements(AbstractJdbcDatabase.java:1273)
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:755)
	... 59 common frames omitted
Caused by: org.postgresql.util.PSQLException: ERROR: relation "book" does not exist
	at org.postgresql.core.v3.QueryExecutorImpl.receiveErrorResponse(QueryExecutorImpl.java:2712)
	at org.postgresql.core.v3.QueryExecutorImpl.processResults(QueryExecutorImpl.java:2400)
	at org.postgresql.core.v3.QueryExecutorImpl.execute(QueryExecutorImpl.java:367)
	at org.postgresql.jdbc.PgStatement.executeInternal(PgStatement.java:498)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:415)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:335)
	at org.postgresql.jdbc.PgStatement.executeCachedSql(PgStatement.java:321)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:297)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:292)
	at com.zaxxer.hikari.pool.ProxyStatement.execute(ProxyStatement.java:94)
	at com.zaxxer.hikari.pool.HikariProxyStatement.execute(HikariProxyStatement.java)
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:464)
	... 64 common frames omitted
07:54:37 ERROR [liquibase.changelog] - ChangeSet db.changelog/db.changelog-2.0.sql::6::jjasinovski encountered an exception.
07:54:37 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-2.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: insert or update on table "vote" violates foreign key constraint "vote_book_id_fkey"
  Detail: Key (book_id)=(13) is not present in table "book". [Failed SQL: (0) INSERT INTO  vote  VALUES (380,5,13,'admin'),(381,5,13,'admin'),(382,5,13,'admin'),(383,5,13,'admin'),(384,3,12,'admin'),(385,1,13,'admin'),(386,3,21,'admin'),(387,3,20,'admin'),(388,5,13,'admin'),(389,4,5,'admin'),(390,5,5,'admin')]
07:54:37 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'liquibase' defined in class path resource [org/springframework/boot/autoconfigure/liquibase/LiquibaseAutoConfiguration$LiquibaseConfiguration.class]: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-2.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: insert or update on table "vote" violates foreign key constraint "vote_book_id_fkey"
  Detail: Key (book_id)=(13) is not present in table "book". [Failed SQL: (0) INSERT INTO  vote  VALUES (380,5,13,'admin'),(381,5,13,'admin'),(382,5,13,'admin'),(383,5,13,'admin'),(384,3,12,'admin'),(385,1,13,'admin'),(386,3,21,'admin'),(387,3,20,'admin'),(388,5,13,'admin'),(389,4,5,'admin'),(390,5,5,'admin')]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1773)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:599)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:312)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1231)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:949)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:624)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: liquibase.exception.UnexpectedLiquibaseException: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-2.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: insert or update on table "vote" violates foreign key constraint "vote_book_id_fkey"
  Detail: Key (book_id)=(13) is not present in table "book". [Failed SQL: (0) INSERT INTO  vote  VALUES (380,5,13,'admin'),(381,5,13,'admin'),(382,5,13,'admin'),(383,5,13,'admin'),(384,3,12,'admin'),(385,1,13,'admin'),(386,3,21,'admin'),(387,3,20,'admin'),(388,5,13,'admin'),(389,4,5,'admin'),(390,5,5,'admin')]
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:304)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.invokeInitMethods(AbstractAutowireCapableBeanFactory.java:1820)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1769)
	... 18 common frames omitted
Caused by: liquibase.exception.CommandExecutionException: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-2.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: insert or update on table "vote" violates foreign key constraint "vote_book_id_fkey"
  Detail: Key (book_id)=(13) is not present in table "book". [Failed SQL: (0) INSERT INTO  vote  VALUES (380,5,13,'admin'),(381,5,13,'admin'),(382,5,13,'admin'),(383,5,13,'admin'),(384,3,12,'admin'),(385,1,13,'admin'),(386,3,21,'admin'),(387,3,20,'admin'),(388,5,13,'admin'),(389,4,5,'admin'),(390,5,5,'admin')]
	at liquibase.command.CommandScope.execute(CommandScope.java:253)
	at liquibase.Liquibase.lambda$update$0(Liquibase.java:245)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Liquibase.runInScope(Liquibase.java:1419)
	at liquibase.Liquibase.update(Liquibase.java:234)
	at liquibase.Liquibase.update(Liquibase.java:212)
	at liquibase.integration.spring.SpringLiquibase.performUpdate(SpringLiquibase.java:343)
	at liquibase.integration.spring.SpringLiquibase.lambda$afterPropertiesSet$0(SpringLiquibase.java:294)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.integration.spring.SpringLiquibase.afterPropertiesSet(SpringLiquibase.java:287)
	... 20 common frames omitted
Caused by: liquibase.exception.LiquibaseException: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-2.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: insert or update on table "vote" violates foreign key constraint "vote_book_id_fkey"
  Detail: Key (book_id)=(13) is not present in table "book". [Failed SQL: (0) INSERT INTO  vote  VALUES (380,5,13,'admin'),(381,5,13,'admin'),(382,5,13,'admin'),(383,5,13,'admin'),(384,3,12,'admin'),(385,1,13,'admin'),(386,3,21,'admin'),(387,3,20,'admin'),(388,5,13,'admin'),(389,4,5,'admin'),(390,5,5,'admin')]
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:151)
	at liquibase.command.core.AbstractUpdateCommandStep.lambda$run$0(AbstractUpdateCommandStep.java:110)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.command.core.AbstractUpdateCommandStep.run(AbstractUpdateCommandStep.java:108)
	at liquibase.command.core.UpdateCommandStep.run(UpdateCommandStep.java:105)
	at liquibase.command.CommandScope.execute(CommandScope.java:217)
	... 36 common frames omitted
Caused by: liquibase.exception.MigrationFailedException: Migration failed for changeset db.changelog/db.changelog-2.0.sql::6::jjasinovski:
     Reason: liquibase.exception.DatabaseException: ERROR: insert or update on table "vote" violates foreign key constraint "vote_book_id_fkey"
  Detail: Key (book_id)=(13) is not present in table "book". [Failed SQL: (0) INSERT INTO  vote  VALUES (380,5,13,'admin'),(381,5,13,'admin'),(382,5,13,'admin'),(383,5,13,'admin'),(384,3,12,'admin'),(385,1,13,'admin'),(386,3,21,'admin'),(387,3,20,'admin'),(388,5,13,'admin'),(389,4,5,'admin'),(390,5,5,'admin')]
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:797)
	at liquibase.changelog.visitor.UpdateVisitor.executeAcceptedChange(UpdateVisitor.java:119)
	at liquibase.changelog.visitor.UpdateVisitor.visit(UpdateVisitor.java:68)
	at liquibase.changelog.ChangeLogIterator$2.lambda$run$0(ChangeLogIterator.java:133)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.changelog.ChangeLogIterator$2.run(ChangeLogIterator.java:122)
	at liquibase.Scope.lambda$child$0(Scope.java:186)
	at liquibase.Scope.child(Scope.java:195)
	at liquibase.Scope.child(Scope.java:185)
	at liquibase.Scope.child(Scope.java:164)
	at liquibase.Scope.child(Scope.java:252)
	at liquibase.Scope.child(Scope.java:256)
	at liquibase.changelog.ChangeLogIterator.run(ChangeLogIterator.java:89)
	... 44 common frames omitted
Caused by: liquibase.exception.DatabaseException: ERROR: insert or update on table "vote" violates foreign key constraint "vote_book_id_fkey"
  Detail: Key (book_id)=(13) is not present in table "book". [Failed SQL: (0) INSERT INTO  vote  VALUES (380,5,13,'admin'),(381,5,13,'admin'),(382,5,13,'admin'),(383,5,13,'admin'),(384,3,12,'admin'),(385,1,13,'admin'),(386,3,21,'admin'),(387,3,20,'admin'),(388,5,13,'admin'),(389,4,5,'admin'),(390,5,5,'admin')]
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:470)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:77)
	at liquibase.executor.jvm.JdbcExecutor.execute(JdbcExecutor.java:179)
	at liquibase.database.AbstractJdbcDatabase.execute(AbstractJdbcDatabase.java:1291)
	at liquibase.database.AbstractJdbcDatabase.executeStatements(AbstractJdbcDatabase.java:1273)
	at liquibase.changelog.ChangeSet.execute(ChangeSet.java:755)
	... 59 common frames omitted
Caused by: org.postgresql.util.PSQLException: ERROR: insert or update on table "vote" violates foreign key constraint "vote_book_id_fkey"
  Detail: Key (book_id)=(13) is not present in table "book".
	at org.postgresql.core.v3.QueryExecutorImpl.receiveErrorResponse(QueryExecutorImpl.java:2712)
	at org.postgresql.core.v3.QueryExecutorImpl.processResults(QueryExecutorImpl.java:2400)
	at org.postgresql.core.v3.QueryExecutorImpl.execute(QueryExecutorImpl.java:367)
	at org.postgresql.jdbc.PgStatement.executeInternal(PgStatement.java:498)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:415)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:335)
	at org.postgresql.jdbc.PgStatement.executeCachedSql(PgStatement.java:321)
	at org.postgresql.jdbc.PgStatement.executeWithFlags(PgStatement.java:297)
	at org.postgresql.jdbc.PgStatement.execute(PgStatement.java:292)
	at com.zaxxer.hikari.pool.ProxyStatement.execute(ProxyStatement.java:94)
	at com.zaxxer.hikari.pool.HikariProxyStatement.execute(HikariProxyStatement.java)
	at liquibase.executor.jvm.JdbcExecutor$ExecuteStatementCallback.doInStatement(JdbcExecutor.java:464)
	... 64 common frames omitted
07:56:03 WARN  [org.hibernate.engine.jdbc.env.internal.JdbcEnvironmentInitiator] - HHH000342: Could not obtain connection to query metadata
org.hibernate.boot.registry.selector.spi.StrategySelectionException: Unable to resolve name [org.hibernate.dialect.PostgreSQL81Dialect] as strategy [org.hibernate.dialect.Dialect]
	at org.hibernate.boot.registry.selector.internal.StrategySelectorImpl.selectStrategyImplementor(StrategySelectorImpl.java:154)
	at org.hibernate.boot.registry.selector.internal.StrategySelectorImpl.resolveStrategy(StrategySelectorImpl.java:236)
	at org.hibernate.boot.registry.selector.internal.StrategySelectorImpl.resolveStrategy(StrategySelectorImpl.java:189)
	at org.hibernate.engine.jdbc.dialect.internal.DialectFactoryImpl.constructDialect(DialectFactoryImpl.java:123)
	at org.hibernate.engine.jdbc.dialect.internal.DialectFactoryImpl.buildDialect(DialectFactoryImpl.java:88)
	at org.hibernate.engine.jdbc.env.internal.JdbcEnvironmentInitiator$1.execute(JdbcEnvironmentInitiator.java:328)
	at org.hibernate.engine.jdbc.env.internal.JdbcEnvironmentInitiator$1.execute(JdbcEnvironmentInitiator.java:277)
	at org.hibernate.jdbc.WorkExecutor.executeReturningWork(WorkExecutor.java:58)
	at org.hibernate.jdbc.AbstractReturningWork.accept(AbstractReturningWork.java:34)
	at org.hibernate.resource.transaction.backend.jdbc.internal.JdbcIsolationDelegate.delegateWork(JdbcIsolationDelegate.java:70)
	at org.hibernate.engine.jdbc.env.internal.JdbcEnvironmentInitiator.getJdbcEnvironmentUsingJdbcMetadata(JdbcEnvironmentInitiator.java:276)
	at org.hibernate.engine.jdbc.env.internal.JdbcEnvironmentInitiator.initiateService(JdbcEnvironmentInitiator.java:107)
	at org.hibernate.engine.jdbc.env.internal.JdbcEnvironmentInitiator.initiateService(JdbcEnvironmentInitiator.java:68)
	at org.hibernate.boot.registry.internal.StandardServiceRegistryImpl.initiateService(StandardServiceRegistryImpl.java:129)
	at org.hibernate.service.internal.AbstractServiceRegistryImpl.createService(AbstractServiceRegistryImpl.java:263)
	at org.hibernate.service.internal.AbstractServiceRegistryImpl.initializeService(AbstractServiceRegistryImpl.java:238)
	at org.hibernate.service.internal.AbstractServiceRegistryImpl.getService(AbstractServiceRegistryImpl.java:215)
	at org.hibernate.boot.model.relational.Database.<init>(Database.java:45)
	at org.hibernate.boot.internal.InFlightMetadataCollectorImpl.getDatabase(InFlightMetadataCollectorImpl.java:223)
	at org.hibernate.boot.internal.InFlightMetadataCollectorImpl.<init>(InFlightMetadataCollectorImpl.java:191)
	at org.hibernate.boot.model.process.spi.MetadataBuildingProcess.complete(MetadataBuildingProcess.java:170)
	at org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl.metadata(EntityManagerFactoryBuilderImpl.java:1432)
	at org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl.build(EntityManagerFactoryBuilderImpl.java:1503)
	at org.springframework.orm.jpa.vendor.SpringHibernateJpaPersistenceProvider.createContainerEntityManagerFactory(SpringHibernateJpaPersistenceProvider.java:75)
	at org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean.createNativeEntityManagerFactory(LocalContainerEntityManagerFactoryBean.java:376)
	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.buildNativeEntityManagerFactory(AbstractEntityManagerFactoryBean.java:409)
	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.afterPropertiesSet(AbstractEntityManagerFactoryBean.java:396)
	at org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean.afterPropertiesSet(LocalContainerEntityManagerFactoryBean.java:352)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.invokeInitMethods(AbstractAutowireCapableBeanFactory.java:1820)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1769)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:599)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1231)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:949)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:624)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: org.hibernate.boot.registry.classloading.spi.ClassLoadingException: Unable to load class [org.hibernate.dialect.PostgreSQL81Dialect]
	at org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl.classForName(ClassLoaderServiceImpl.java:126)
	at org.hibernate.boot.registry.selector.internal.StrategySelectorImpl.selectStrategyImplementor(StrategySelectorImpl.java:150)
	... 45 common frames omitted
Caused by: java.lang.ClassNotFoundException: Could not load requested class : org.hibernate.dialect.PostgreSQL81Dialect
	at org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader.findClass(AggregatedClassLoader.java:216)
	at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:593)
	at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:526)
	at java.base/java.lang.Class.forName0(Native Method)
	at java.base/java.lang.Class.forName(Class.java:534)
	at java.base/java.lang.Class.forName(Class.java:513)
	at org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl.classForName(ClassLoaderServiceImpl.java:123)
	... 46 common frames omitted
Caused by: java.lang.Throwable: null
	at org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader.findClass(AggregatedClassLoader.java:209)
	... 52 common frames omitted
	Suppressed: java.lang.ClassNotFoundException: org.hibernate.dialect.PostgreSQL81Dialect
		at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:641)
		at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:188)
		at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:526)
		at org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader.findClass(AggregatedClassLoader.java:206)
		... 52 common frames omitted
	Suppressed: java.lang.ClassNotFoundException: org.hibernate.dialect.PostgreSQL81Dialect
		at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:641)
		at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:188)
		at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:526)
		at org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader.findClass(AggregatedClassLoader.java:206)
		... 52 common frames omitted
	Suppressed: java.lang.ClassNotFoundException: org.hibernate.dialect.PostgreSQL81Dialect
		at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:641)
		at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:188)
		at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:526)
		at org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader.findClass(AggregatedClassLoader.java:206)
		... 52 common frames omitted
07:56:03 ERROR [org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean] - Failed to initialize JPA EntityManagerFactory: Unable to create requested service [org.hibernate.engine.jdbc.env.spi.JdbcEnvironment] due to: Unable to resolve name [org.hibernate.dialect.PostgreSQL81Dialect] as strategy [org.hibernate.dialect.Dialect]
07:56:03 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'entityManagerFactory' defined in class path resource [org/springframework/boot/autoconfigure/orm/jpa/HibernateJpaConfiguration.class]: Unable to create requested service [org.hibernate.engine.jdbc.env.spi.JdbcEnvironment] due to: Unable to resolve name [org.hibernate.dialect.PostgreSQL81Dialect] as strategy [org.hibernate.dialect.Dialect]
07:56:03 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'entityManagerFactory' defined in class path resource [org/springframework/boot/autoconfigure/orm/jpa/HibernateJpaConfiguration.class]: Unable to create requested service [org.hibernate.engine.jdbc.env.spi.JdbcEnvironment] due to: Unable to resolve name [org.hibernate.dialect.PostgreSQL81Dialect] as strategy [org.hibernate.dialect.Dialect]
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1773)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:599)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1231)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:949)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:624)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: org.hibernate.service.spi.ServiceException: Unable to create requested service [org.hibernate.engine.jdbc.env.spi.JdbcEnvironment] due to: Unable to resolve name [org.hibernate.dialect.PostgreSQL81Dialect] as strategy [org.hibernate.dialect.Dialect]
	at org.hibernate.service.internal.AbstractServiceRegistryImpl.createService(AbstractServiceRegistryImpl.java:276)
	at org.hibernate.service.internal.AbstractServiceRegistryImpl.initializeService(AbstractServiceRegistryImpl.java:238)
	at org.hibernate.service.internal.AbstractServiceRegistryImpl.getService(AbstractServiceRegistryImpl.java:215)
	at org.hibernate.boot.model.relational.Database.<init>(Database.java:45)
	at org.hibernate.boot.internal.InFlightMetadataCollectorImpl.getDatabase(InFlightMetadataCollectorImpl.java:223)
	at org.hibernate.boot.internal.InFlightMetadataCollectorImpl.<init>(InFlightMetadataCollectorImpl.java:191)
	at org.hibernate.boot.model.process.spi.MetadataBuildingProcess.complete(MetadataBuildingProcess.java:170)
	at org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl.metadata(EntityManagerFactoryBuilderImpl.java:1432)
	at org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl.build(EntityManagerFactoryBuilderImpl.java:1503)
	at org.springframework.orm.jpa.vendor.SpringHibernateJpaPersistenceProvider.createContainerEntityManagerFactory(SpringHibernateJpaPersistenceProvider.java:75)
	at org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean.createNativeEntityManagerFactory(LocalContainerEntityManagerFactoryBean.java:376)
	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.buildNativeEntityManagerFactory(AbstractEntityManagerFactoryBean.java:409)
	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.afterPropertiesSet(AbstractEntityManagerFactoryBean.java:396)
	at org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean.afterPropertiesSet(LocalContainerEntityManagerFactoryBean.java:352)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.invokeInitMethods(AbstractAutowireCapableBeanFactory.java:1820)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1769)
	... 16 common frames omitted
Caused by: org.hibernate.boot.registry.selector.spi.StrategySelectionException: Unable to resolve name [org.hibernate.dialect.PostgreSQL81Dialect] as strategy [org.hibernate.dialect.Dialect]
	at org.hibernate.boot.registry.selector.internal.StrategySelectorImpl.selectStrategyImplementor(StrategySelectorImpl.java:154)
	at org.hibernate.boot.registry.selector.internal.StrategySelectorImpl.resolveStrategy(StrategySelectorImpl.java:236)
	at org.hibernate.boot.registry.selector.internal.StrategySelectorImpl.resolveStrategy(StrategySelectorImpl.java:189)
	at org.hibernate.engine.jdbc.dialect.internal.DialectFactoryImpl.constructDialect(DialectFactoryImpl.java:123)
	at org.hibernate.engine.jdbc.dialect.internal.DialectFactoryImpl.buildDialect(DialectFactoryImpl.java:88)
	at org.hibernate.engine.jdbc.env.internal.JdbcEnvironmentInitiator.getJdbcEnvironmentWithDefaults(JdbcEnvironmentInitiator.java:143)
	at org.hibernate.engine.jdbc.env.internal.JdbcEnvironmentInitiator.getJdbcEnvironmentUsingJdbcMetadata(JdbcEnvironmentInitiator.java:348)
	at org.hibernate.engine.jdbc.env.internal.JdbcEnvironmentInitiator.initiateService(JdbcEnvironmentInitiator.java:107)
	at org.hibernate.engine.jdbc.env.internal.JdbcEnvironmentInitiator.initiateService(JdbcEnvironmentInitiator.java:68)
	at org.hibernate.boot.registry.internal.StandardServiceRegistryImpl.initiateService(StandardServiceRegistryImpl.java:129)
	at org.hibernate.service.internal.AbstractServiceRegistryImpl.createService(AbstractServiceRegistryImpl.java:263)
	... 31 common frames omitted
Caused by: org.hibernate.boot.registry.classloading.spi.ClassLoadingException: Unable to load class [org.hibernate.dialect.PostgreSQL81Dialect]
	at org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl.classForName(ClassLoaderServiceImpl.java:126)
	at org.hibernate.boot.registry.selector.internal.StrategySelectorImpl.selectStrategyImplementor(StrategySelectorImpl.java:150)
	... 41 common frames omitted
Caused by: java.lang.ClassNotFoundException: Could not load requested class : org.hibernate.dialect.PostgreSQL81Dialect
	at org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader.findClass(AggregatedClassLoader.java:216)
	at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:593)
	at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:526)
	at java.base/java.lang.Class.forName0(Native Method)
	at java.base/java.lang.Class.forName(Class.java:534)
	at java.base/java.lang.Class.forName(Class.java:513)
	at org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl.classForName(ClassLoaderServiceImpl.java:123)
	... 42 common frames omitted
Caused by: java.lang.Throwable: null
	at org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader.findClass(AggregatedClassLoader.java:209)
	... 48 common frames omitted
	Suppressed: java.lang.ClassNotFoundException: org.hibernate.dialect.PostgreSQL81Dialect
		at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:641)
		at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:188)
		at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:526)
		at org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader.findClass(AggregatedClassLoader.java:206)
		... 48 common frames omitted
	Suppressed: java.lang.ClassNotFoundException: org.hibernate.dialect.PostgreSQL81Dialect
		at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:641)
		at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:188)
		at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:526)
		at org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader.findClass(AggregatedClassLoader.java:206)
		... 48 common frames omitted
	Suppressed: java.lang.ClassNotFoundException: org.hibernate.dialect.PostgreSQL81Dialect
		at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:641)
		at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:188)
		at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:526)
		at org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader.findClass(AggregatedClassLoader.java:206)
		... 48 common frames omitted
07:57:17 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
07:57:19 WARN  [org.springframework.boot.autoconfigure.orm.jpa.JpaBaseConfiguration$JpaWebConfiguration] - spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
07:57:20 WARN  [org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration] - 

Using generated security password: 1a50a23e-88a8-4c9e-a25a-a26cf594be0b

This generated password is for development use only. Your security configuration must be updated before running your application in production.

07:57:21 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.context.ApplicationContextException: Failed to start bean 'webServerStartStop'
07:57:21 ERROR [org.springframework.boot.diagnostics.LoggingFailureAnalysisReporter] - 

***************************
APPLICATION FAILED TO START
***************************

Description:

Web server failed to start. Port 8080 was already in use.

Action:

Identify and stop the process that's listening on port 8080 or configure this application to listen on another port.

07:57:37 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
07:57:39 WARN  [org.springframework.boot.autoconfigure.orm.jpa.JpaBaseConfiguration$JpaWebConfiguration] - spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
07:57:40 WARN  [org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration] - 

Using generated security password: bc6f9c16-b713-4a2e-921b-831e2f56211f

This generated password is for development use only. Your security configuration must be updated before running your application in production.

08:56:02 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
08:56:05 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.UnsatisfiedDependencyException: Error creating bean with name 'authorController': Unsatisfied dependency expressed through field 'sprController': Error creating bean with name 'sprController': Unsatisfied dependency expressed through field 'authorController': Error creating bean with name 'authorController': Requested bean is currently in creation: Is there an unresolvable circular reference?
08:56:05 ERROR [org.springframework.boot.diagnostics.LoggingFailureAnalysisReporter] - 

***************************
APPLICATION FAILED TO START
***************************

Description:

The dependencies of some of the beans in the application context form a cycle:

┌─────┐
|  authorController (field private ru.javabegin.training.library.jsfui.controller.SprController ru.javabegin.training.library.jsfui.controller.AuthorController.sprController)
↑     ↓
|  sprController (field private ru.javabegin.training.library.jsfui.controller.AuthorController ru.javabegin.training.library.jsfui.controller.SprController.authorController)
└─────┘


Action:

Relying upon circular references is discouraged and they are prohibited by default. Update your application to remove the dependency cycle between beans. As a last resort, it may be possible to break the cycle automatically by setting spring.main.allow-circular-references to true.

09:01:25 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:01:28 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.UnsatisfiedDependencyException: Error creating bean with name 'authorController': Unsatisfied dependency expressed through field 'sprController': Error creating bean with name 'sprController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]: Unsatisfied dependency expressed through constructor parameter 0: Error creating bean with name 'authorController': Requested bean is currently in creation: Is there an unresolvable circular reference?
09:01:28 ERROR [org.springframework.boot.diagnostics.LoggingFailureAnalysisReporter] - 

***************************
APPLICATION FAILED TO START
***************************

Description:

The dependencies of some of the beans in the application context form a cycle:

┌─────┐
|  authorController (field private ru.javabegin.training.library.jsfui.controller.SprController ru.javabegin.training.library.jsfui.controller.AuthorController.sprController)
↑     ↓
|  sprController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]
└─────┘


Action:

Relying upon circular references is discouraged and they are prohibited by default. Update your application to remove the dependency cycle between beans. As a last resort, it may be possible to break the cycle automatically by setting spring.main.allow-circular-references to true.

09:03:13 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:03:16 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.UnsatisfiedDependencyException: Error creating bean with name 'authorController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\AuthorController.class]: Unsatisfied dependency expressed through constructor parameter 0: Error creating bean with name 'sprController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]: Unsatisfied dependency expressed through constructor parameter 0: Error creating bean with name 'authorController': Requested bean is currently in creation: Is there an unresolvable circular reference?
09:03:16 ERROR [org.springframework.boot.diagnostics.LoggingFailureAnalysisReporter] - 

***************************
APPLICATION FAILED TO START
***************************

Description:

The dependencies of some of the beans in the application context form a cycle:

┌─────┐
|  authorController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\AuthorController.class]
↑     ↓
|  sprController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]
└─────┘


Action:

Relying upon circular references is discouraged and they are prohibited by default. Update your application to remove the dependency cycle between beans. As a last resort, it may be possible to break the cycle automatically by setting spring.main.allow-circular-references to true.

09:06:36 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:06:38 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.UnsatisfiedDependencyException: Error creating bean with name 'authorController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\AuthorController.class]: Unsatisfied dependency expressed through constructor parameter 0: Error creating bean with name 'sprController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]: Unsatisfied dependency expressed through constructor parameter 0: Error creating bean with name 'authorController': Requested bean is currently in creation: Is there an unresolvable circular reference?
09:06:38 ERROR [org.springframework.boot.diagnostics.LoggingFailureAnalysisReporter] - 

***************************
APPLICATION FAILED TO START
***************************

Description:

The dependencies of some of the beans in the application context form a cycle:

┌─────┐
|  authorController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\AuthorController.class]
↑     ↓
|  sprController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]
└─────┘


Action:

Relying upon circular references is discouraged and they are prohibited by default. Update your application to remove the dependency cycle between beans. As a last resort, it may be possible to break the cycle automatically by setting spring.main.allow-circular-references to true.

09:08:34 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:08:37 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.UnsatisfiedDependencyException: Error creating bean with name 'authorController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\AuthorController.class]: Unsatisfied dependency expressed through constructor parameter 0: Error creating bean with name 'sprController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]: Unsatisfied dependency expressed through constructor parameter 0: Error creating bean with name 'authorController': Requested bean is currently in creation: Is there an unresolvable circular reference?
09:08:37 ERROR [org.springframework.boot.diagnostics.LoggingFailureAnalysisReporter] - 

***************************
APPLICATION FAILED TO START
***************************

Description:

The dependencies of some of the beans in the application context form a cycle:

┌─────┐
|  authorController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\AuthorController.class]
↑     ↓
|  sprController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]
└─────┘


Action:

Relying upon circular references is discouraged and they are prohibited by default. Update your application to remove the dependency cycle between beans. As a last resort, it may be possible to break the cycle automatically by setting spring.main.allow-circular-references to true.

09:08:53 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:08:55 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.UnsatisfiedDependencyException: Error creating bean with name 'bookController': Unsatisfied dependency expressed through field 'genreController': Error creating bean with name 'genreController': Unsatisfied dependency expressed through field 'sprController': Error creating bean with name 'sprController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]: Unsatisfied dependency expressed through constructor parameter 0: Error creating bean with name 'authorController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\AuthorController.class]: Unsatisfied dependency expressed through constructor parameter 0: Error creating bean with name 'sprController': Requested bean is currently in creation: Is there an unresolvable circular reference?
09:08:55 ERROR [org.springframework.boot.diagnostics.LoggingFailureAnalysisReporter] - 

***************************
APPLICATION FAILED TO START
***************************

Description:

The dependencies of some of the beans in the application context form a cycle:

   bookController (field private ru.javabegin.training.library.jsfui.controller.GenreController ru.javabegin.training.library.jsfui.controller.BookController.genreController)
      ↓
   genreController (field private ru.javabegin.training.library.jsfui.controller.SprController ru.javabegin.training.library.jsfui.controller.GenreController.sprController)
┌─────┐
|  sprController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]
↑     ↓
|  authorController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\AuthorController.class]
└─────┘


Action:

Relying upon circular references is discouraged and they are prohibited by default. Update your application to remove the dependency cycle between beans. As a last resort, it may be possible to break the cycle automatically by setting spring.main.allow-circular-references to true.

09:09:19 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:09:21 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.UnsatisfiedDependencyException: Error creating bean with name 'bookController': Unsatisfied dependency expressed through field 'genreController': Error creating bean with name 'genreController': Unsatisfied dependency expressed through field 'sprController': Error creating bean with name 'sprController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]: Unsatisfied dependency expressed through constructor parameter 1: Error creating bean with name 'genreController': Requested bean is currently in creation: Is there an unresolvable circular reference?
09:09:21 ERROR [org.springframework.boot.diagnostics.LoggingFailureAnalysisReporter] - 

***************************
APPLICATION FAILED TO START
***************************

Description:

The dependencies of some of the beans in the application context form a cycle:

   bookController (field private ru.javabegin.training.library.jsfui.controller.GenreController ru.javabegin.training.library.jsfui.controller.BookController.genreController)
┌─────┐
|  genreController (field private ru.javabegin.training.library.jsfui.controller.SprController ru.javabegin.training.library.jsfui.controller.GenreController.sprController)
↑     ↓
|  sprController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]
└─────┘


Action:

Relying upon circular references is discouraged and they are prohibited by default. Update your application to remove the dependency cycle between beans. As a last resort, it may be possible to break the cycle automatically by setting spring.main.allow-circular-references to true.

09:10:04 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:10:06 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.beans.factory.UnsatisfiedDependencyException: Error creating bean with name 'publisherController': Unsatisfied dependency expressed through field 'sprController': Error creating bean with name 'sprController' defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]: Unsatisfied dependency expressed through constructor parameter 2: Error creating bean with name 'publisherController': Requested bean is currently in creation: Is there an unresolvable circular reference?
09:10:06 ERROR [org.springframework.boot.diagnostics.LoggingFailureAnalysisReporter] - 

***************************
APPLICATION FAILED TO START
***************************

Description:

The dependencies of some of the beans in the application context form a cycle:

┌─────┐
|  publisherController (field private ru.javabegin.training.library.jsfui.controller.SprController ru.javabegin.training.library.jsfui.controller.PublisherController.sprController)
↑     ↓
|  sprController defined in file [D:\springlibrary\build\classes\java\main\ru\javabegin\training\library\jsfui\controller\SprController.class]
└─────┘


Action:

Relying upon circular references is discouraged and they are prohibited by default. Update your application to remove the dependency cycle between beans. As a last resort, it may be possible to break the cycle automatically by setting spring.main.allow-circular-references to true.

09:10:43 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:10:46 WARN  [org.springframework.boot.autoconfigure.orm.jpa.JpaBaseConfiguration$JpaWebConfiguration] - spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
09:10:47 WARN  [org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration] - 

Using generated security password: dc59bd66-8259-4f7a-af62-b37590b54e86

This generated password is for development use only. Your security configuration must be updated before running your application in production.

09:27:49 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:27:52 WARN  [org.springframework.boot.autoconfigure.orm.jpa.JpaBaseConfiguration$JpaWebConfiguration] - spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
09:27:53 WARN  [org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration] - 

Using generated security password: 991844c8-3fad-41e1-963e-025f70ab2f9d

This generated password is for development use only. Your security configuration must be updated before running your application in production.

09:42:35 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:42:37 WARN  [org.springframework.boot.autoconfigure.orm.jpa.JpaBaseConfiguration$JpaWebConfiguration] - spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
09:42:38 WARN  [org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration] - 

Using generated security password: 5dde04bc-7f0f-4a9f-9886-795e72e27d35

This generated password is for development use only. Your security configuration must be updated before running your application in production.

09:46:10 WARN  [org.hibernate.orm.deprecation] - HHH90000025: PostgreSQLDialect does not need to be specified explicitly using 'hibernate.dialect' (remove the property setting and it will be selected by default)
09:46:12 WARN  [org.springframework.boot.autoconfigure.orm.jpa.JpaBaseConfiguration$JpaWebConfiguration] - spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
09:46:13 WARN  [org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration] - 

Using generated security password: d2d9a769-4fb3-46b5-84b3-030b17be442f

This generated password is for development use only. Your security configuration must be updated before running your application in production.

12:12:32 ERROR [org.springframework.boot.web.embedded.tomcat.TomcatStarter] - Error starting Tomcat context. Exception: org.springframework.beans.factory.BeanCreationException. Message: Error creating bean with name 'servletRegistrationBean' defined in class path resource [ru/javabegin/training/library/spring/config/FacesConfig.class]: Failed to instantiate [org.springframework.boot.web.servlet.ServletRegistrationBean]: Factory method 'servletRegistrationBean' threw exception with message: javax/servlet/Servlet
12:12:32 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.context.ApplicationContextException: Unable to start web server
12:12:32 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.context.ApplicationContextException: Unable to start web server
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:165)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:618)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: org.springframework.boot.web.server.WebServerException: Unable to start embedded Tomcat
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:145)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.<init>(TomcatWebServer.java:105)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getTomcatWebServer(TomcatServletWebServerFactory.java:499)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getWebServer(TomcatServletWebServerFactory.java:218)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.createWebServer(ServletWebServerApplicationContext.java:188)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:162)
	... 8 common frames omitted
Caused by: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'servletRegistrationBean' defined in class path resource [ru/javabegin/training/library/spring/config/FacesConfig.class]: Failed to instantiate [org.springframework.boot.web.servlet.ServletRegistrationBean]: Factory method 'servletRegistrationBean' threw exception with message: javax/servlet/Servlet
	at org.springframework.beans.factory.support.ConstructorResolver.instantiate(ConstructorResolver.java:651)
	at org.springframework.beans.factory.support.ConstructorResolver.instantiateUsingFactoryMethod(ConstructorResolver.java:639)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.instantiateUsingFactoryMethod(AbstractAutowireCapableBeanFactory.java:1334)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBeanInstance(AbstractAutowireCapableBeanFactory.java:1164)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:561)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:204)
	at org.springframework.boot.web.servlet.ServletContextInitializerBeans.getOrderedBeansOfType(ServletContextInitializerBeans.java:210)
	at org.springframework.boot.web.servlet.ServletContextInitializerBeans.getOrderedBeansOfType(ServletContextInitializerBeans.java:201)
	at org.springframework.boot.web.servlet.ServletContextInitializerBeans.addServletContextInitializerBeans(ServletContextInitializerBeans.java:96)
	at org.springframework.boot.web.servlet.ServletContextInitializerBeans.<init>(ServletContextInitializerBeans.java:85)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.getServletContextInitializerBeans(ServletWebServerApplicationContext.java:266)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.selfInitialize(ServletWebServerApplicationContext.java:240)
	at org.springframework.boot.web.embedded.tomcat.TomcatStarter.onStartup(TomcatStarter.java:52)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:4866)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardHost.startInternal(StandardHost.java:845)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardEngine.startInternal(StandardEngine.java:240)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardService.startInternal(StandardService.java:433)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardServer.startInternal(StandardServer.java:917)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.startup.Tomcat.start(Tomcat.java:488)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:126)
	... 13 common frames omitted
Caused by: org.springframework.beans.BeanInstantiationException: Failed to instantiate [org.springframework.boot.web.servlet.ServletRegistrationBean]: Factory method 'servletRegistrationBean' threw exception with message: javax/servlet/Servlet
	at org.springframework.beans.factory.support.SimpleInstantiationStrategy.instantiate(SimpleInstantiationStrategy.java:177)
	at org.springframework.beans.factory.support.ConstructorResolver.instantiate(ConstructorResolver.java:647)
	... 53 common frames omitted
Caused by: java.lang.NoClassDefFoundError: javax/servlet/Servlet
	at java.base/java.lang.ClassLoader.defineClass1(Native Method)
	at java.base/java.lang.ClassLoader.defineClass(ClassLoader.java:1027)
	at java.base/java.security.SecureClassLoader.defineClass(SecureClassLoader.java:150)
	at java.base/jdk.internal.loader.BuiltinClassLoader.defineClass(BuiltinClassLoader.java:862)
	at java.base/jdk.internal.loader.BuiltinClassLoader.findClassOnClassPathOrNull(BuiltinClassLoader.java:760)
	at java.base/jdk.internal.loader.BuiltinClassLoader.loadClassOrNull(BuiltinClassLoader.java:681)
	at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:639)
	at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:188)
	at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:526)
	at ru.javabegin.training.library.spring.config.FacesConfig.servletRegistrationBean(FacesConfig.java:44)
	at ru.javabegin.training.library.spring.config.FacesConfig$$SpringCGLIB$$0.CGLIB$servletRegistrationBean$0(<generated>)
	at ru.javabegin.training.library.spring.config.FacesConfig$$SpringCGLIB$$FastClass$$1.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invokeSuper(MethodProxy.java:258)
	at org.springframework.context.annotation.ConfigurationClassEnhancer$BeanMethodInterceptor.intercept(ConfigurationClassEnhancer.java:331)
	at ru.javabegin.training.library.spring.config.FacesConfig$$SpringCGLIB$$0.servletRegistrationBean(<generated>)
	at java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:103)
	at java.base/java.lang.reflect.Method.invoke(Method.java:580)
	at org.springframework.beans.factory.support.SimpleInstantiationStrategy.instantiate(SimpleInstantiationStrategy.java:140)
	... 54 common frames omitted
Caused by: java.lang.ClassNotFoundException: javax.servlet.Servlet
	at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:641)
	at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:188)
	at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:526)
	... 72 common frames omitted
12:13:04 ERROR [org.springframework.boot.web.embedded.tomcat.TomcatStarter] - Error starting Tomcat context. Exception: java.lang.IllegalArgumentException. Message: Filter must not be null
12:13:04 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.context.ApplicationContextException: Unable to start web server
12:13:04 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.context.ApplicationContextException: Unable to start web server
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:165)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:618)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: org.springframework.boot.web.server.WebServerException: Unable to start embedded Tomcat
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:145)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.<init>(TomcatWebServer.java:105)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getTomcatWebServer(TomcatServletWebServerFactory.java:499)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getWebServer(TomcatServletWebServerFactory.java:218)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.createWebServer(ServletWebServerApplicationContext.java:188)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:162)
	... 8 common frames omitted
Caused by: java.lang.IllegalArgumentException: Filter must not be null
	at org.springframework.util.Assert.notNull(Assert.java:172)
	at org.springframework.boot.web.servlet.AbstractFilterRegistrationBean.getDescription(AbstractFilterRegistrationBean.java:223)
	at org.springframework.boot.web.servlet.RegistrationBean.onStartup(RegistrationBean.java:47)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.selfInitialize(ServletWebServerApplicationContext.java:241)
	at org.springframework.boot.web.embedded.tomcat.TomcatStarter.onStartup(TomcatStarter.java:52)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:4866)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardHost.startInternal(StandardHost.java:845)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardEngine.startInternal(StandardEngine.java:240)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardService.startInternal(StandardService.java:433)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardServer.startInternal(StandardServer.java:917)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.startup.Tomcat.start(Tomcat.java:488)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:126)
	... 13 common frames omitted
13:37:23 ERROR [org.springframework.boot.web.embedded.tomcat.TomcatStarter] - Error starting Tomcat context. Exception: java.lang.IllegalArgumentException. Message: Servlet must not be null
13:37:23 ERROR [org.apache.catalina.core.ContainerBase.[Tomcat].[localhost].[/]] - Exception starting filter [fileUploadFilterRegistrationBean]
java.lang.ClassCastException: class ru.javabegin.training.library.spring.converter.JakartaFilterConfigAdapter cannot be cast to class javax.servlet.FilterConfig (ru.javabegin.training.library.spring.converter.JakartaFilterConfigAdapter and javax.servlet.FilterConfig are in unnamed module of loader 'app')
	at ru.javabegin.training.library.spring.converter.FileUploadFilterAdapter.init(FileUploadFilterAdapter.java:18)
	at org.apache.catalina.core.ApplicationFilterConfig.initFilter(ApplicationFilterConfig.java:263)
	at org.apache.catalina.core.ApplicationFilterConfig.<init>(ApplicationFilterConfig.java:102)
	at org.apache.catalina.core.StandardContext.filterStart(StandardContext.java:4287)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:4902)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardHost.startInternal(StandardHost.java:845)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardEngine.startInternal(StandardEngine.java:240)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardService.startInternal(StandardService.java:433)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardServer.startInternal(StandardServer.java:917)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.startup.Tomcat.start(Tomcat.java:488)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:126)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.<init>(TomcatWebServer.java:105)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getTomcatWebServer(TomcatServletWebServerFactory.java:499)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getWebServer(TomcatServletWebServerFactory.java:218)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.createWebServer(ServletWebServerApplicationContext.java:188)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:162)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:618)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
13:37:23 ERROR [org.apache.catalina.core.StandardContext] - One or more Filters failed to start. Full details will be found in the appropriate container log file
13:37:23 ERROR [org.apache.catalina.core.StandardContext] - Context [] startup failed due to previous errors
13:37:23 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.context.ApplicationContextException: Unable to start web server
13:37:23 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.context.ApplicationContextException: Unable to start web server
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:165)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:618)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: org.springframework.boot.web.server.WebServerException: Unable to start embedded Tomcat
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:145)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.<init>(TomcatWebServer.java:105)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getTomcatWebServer(TomcatServletWebServerFactory.java:499)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getWebServer(TomcatServletWebServerFactory.java:218)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.createWebServer(ServletWebServerApplicationContext.java:188)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:162)
	... 8 common frames omitted
Caused by: java.lang.IllegalArgumentException: Servlet must not be null
	at org.springframework.util.Assert.notNull(Assert.java:172)
	at org.springframework.boot.web.servlet.ServletRegistrationBean.getDescription(ServletRegistrationBean.java:171)
	at org.springframework.boot.web.servlet.RegistrationBean.onStartup(RegistrationBean.java:47)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.selfInitialize(ServletWebServerApplicationContext.java:241)
	at org.springframework.boot.web.embedded.tomcat.TomcatStarter.onStartup(TomcatStarter.java:52)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:4866)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardHost.startInternal(StandardHost.java:845)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardEngine.startInternal(StandardEngine.java:240)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardService.startInternal(StandardService.java:433)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardServer.startInternal(StandardServer.java:917)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.startup.Tomcat.start(Tomcat.java:488)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:126)
	... 13 common frames omitted
14:03:51 ERROR [org.springframework.boot.web.embedded.tomcat.TomcatStarter] - Error starting Tomcat context. Exception: org.springframework.beans.factory.BeanCreationException. Message: Error creating bean with name 'fileUploadFilterRegistrationBean' defined in class path resource [ru/javabegin/training/library/spring/config/FacesConfig.class]: Failed to instantiate [org.springframework.boot.web.servlet.FilterRegistrationBean]: Factory method 'fileUploadFilterRegistrationBean' threw exception with message: class org.primefaces.webapp.filter.FileUploadFilter cannot be cast to class jakarta.servlet.Filter (org.primefaces.webapp.filter.FileUploadFilter and jakarta.servlet.Filter are in unnamed module of loader 'app')
14:03:51 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.context.ApplicationContextException: Unable to start web server
14:03:51 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.context.ApplicationContextException: Unable to start web server
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:165)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:618)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: org.springframework.boot.web.server.WebServerException: Unable to start embedded Tomcat
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:145)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.<init>(TomcatWebServer.java:105)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getTomcatWebServer(TomcatServletWebServerFactory.java:499)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getWebServer(TomcatServletWebServerFactory.java:218)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.createWebServer(ServletWebServerApplicationContext.java:188)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:162)
	... 8 common frames omitted
Caused by: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'fileUploadFilterRegistrationBean' defined in class path resource [ru/javabegin/training/library/spring/config/FacesConfig.class]: Failed to instantiate [org.springframework.boot.web.servlet.FilterRegistrationBean]: Factory method 'fileUploadFilterRegistrationBean' threw exception with message: class org.primefaces.webapp.filter.FileUploadFilter cannot be cast to class jakarta.servlet.Filter (org.primefaces.webapp.filter.FileUploadFilter and jakarta.servlet.Filter are in unnamed module of loader 'app')
	at org.springframework.beans.factory.support.ConstructorResolver.instantiate(ConstructorResolver.java:651)
	at org.springframework.beans.factory.support.ConstructorResolver.instantiateUsingFactoryMethod(ConstructorResolver.java:485)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.instantiateUsingFactoryMethod(AbstractAutowireCapableBeanFactory.java:1334)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBeanInstance(AbstractAutowireCapableBeanFactory.java:1164)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:561)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:521)
	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$0(AbstractBeanFactory.java:325)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:234)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:323)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:204)
	at org.springframework.boot.web.servlet.ServletContextInitializerBeans.getOrderedBeansOfType(ServletContextInitializerBeans.java:210)
	at org.springframework.boot.web.servlet.ServletContextInitializerBeans.getOrderedBeansOfType(ServletContextInitializerBeans.java:201)
	at org.springframework.boot.web.servlet.ServletContextInitializerBeans.addServletContextInitializerBeans(ServletContextInitializerBeans.java:96)
	at org.springframework.boot.web.servlet.ServletContextInitializerBeans.<init>(ServletContextInitializerBeans.java:85)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.getServletContextInitializerBeans(ServletWebServerApplicationContext.java:266)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.selfInitialize(ServletWebServerApplicationContext.java:240)
	at org.springframework.boot.web.embedded.tomcat.TomcatStarter.onStartup(TomcatStarter.java:52)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:4866)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardHost.startInternal(StandardHost.java:845)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardEngine.startInternal(StandardEngine.java:240)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardService.startInternal(StandardService.java:433)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardServer.startInternal(StandardServer.java:917)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.startup.Tomcat.start(Tomcat.java:488)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:126)
	... 13 common frames omitted
Caused by: org.springframework.beans.BeanInstantiationException: Failed to instantiate [org.springframework.boot.web.servlet.FilterRegistrationBean]: Factory method 'fileUploadFilterRegistrationBean' threw exception with message: class org.primefaces.webapp.filter.FileUploadFilter cannot be cast to class jakarta.servlet.Filter (org.primefaces.webapp.filter.FileUploadFilter and jakarta.servlet.Filter are in unnamed module of loader 'app')
	at org.springframework.beans.factory.support.SimpleInstantiationStrategy.instantiate(SimpleInstantiationStrategy.java:177)
	at org.springframework.beans.factory.support.ConstructorResolver.instantiate(ConstructorResolver.java:647)
	... 53 common frames omitted
Caused by: java.lang.ClassCastException: class org.primefaces.webapp.filter.FileUploadFilter cannot be cast to class jakarta.servlet.Filter (org.primefaces.webapp.filter.FileUploadFilter and jakarta.servlet.Filter are in unnamed module of loader 'app')
	at ru.javabegin.training.library.spring.config.FacesConfig.fileUploadFilterRegistrationBean(FacesConfig.java:35)
	at ru.javabegin.training.library.spring.config.FacesConfig$$SpringCGLIB$$0.CGLIB$fileUploadFilterRegistrationBean$3(<generated>)
	at ru.javabegin.training.library.spring.config.FacesConfig$$SpringCGLIB$$FastClass$$1.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invokeSuper(MethodProxy.java:258)
	at org.springframework.context.annotation.ConfigurationClassEnhancer$BeanMethodInterceptor.intercept(ConfigurationClassEnhancer.java:331)
	at ru.javabegin.training.library.spring.config.FacesConfig$$SpringCGLIB$$0.fileUploadFilterRegistrationBean(<generated>)
	at java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:103)
	at java.base/java.lang.reflect.Method.invoke(Method.java:580)
	at org.springframework.beans.factory.support.SimpleInstantiationStrategy.instantiate(SimpleInstantiationStrategy.java:140)
	... 54 common frames omitted
14:04:05 ERROR [org.springframework.boot.web.embedded.tomcat.TomcatStarter] - Error starting Tomcat context. Exception: java.lang.IllegalArgumentException. Message: Filter must not be null
14:04:05 WARN  [org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext] - Exception encountered during context initialization - cancelling refresh attempt: org.springframework.context.ApplicationContextException: Unable to start web server
14:04:05 ERROR [org.springframework.boot.SpringApplication] - Application run failed
org.springframework.context.ApplicationContextException: Unable to start web server
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:165)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:618)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.refresh(ServletWebServerApplicationContext.java:146)
	at org.springframework.boot.SpringApplication.refresh(SpringApplication.java:754)
	at org.springframework.boot.SpringApplication.refreshContext(SpringApplication.java:456)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:334)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1354)
	at org.springframework.boot.SpringApplication.run(SpringApplication.java:1343)
	at ru.javabegin.training.library.SpringlibraryApplication.main(SpringlibraryApplication.java:14)
Caused by: org.springframework.boot.web.server.WebServerException: Unable to start embedded Tomcat
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:145)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.<init>(TomcatWebServer.java:105)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getTomcatWebServer(TomcatServletWebServerFactory.java:499)
	at org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory.getWebServer(TomcatServletWebServerFactory.java:218)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.createWebServer(ServletWebServerApplicationContext.java:188)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.onRefresh(ServletWebServerApplicationContext.java:162)
	... 8 common frames omitted
Caused by: java.lang.IllegalArgumentException: Filter must not be null
	at org.springframework.util.Assert.notNull(Assert.java:172)
	at org.springframework.boot.web.servlet.AbstractFilterRegistrationBean.getDescription(AbstractFilterRegistrationBean.java:223)
	at org.springframework.boot.web.servlet.RegistrationBean.onStartup(RegistrationBean.java:47)
	at org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext.selfInitialize(ServletWebServerApplicationContext.java:241)
	at org.springframework.boot.web.embedded.tomcat.TomcatStarter.onStartup(TomcatStarter.java:52)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:4866)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardHost.startInternal(StandardHost.java:845)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1332)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1322)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:317)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:145)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:866)
	at org.apache.catalina.core.StandardEngine.startInternal(StandardEngine.java:240)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardService.startInternal(StandardService.java:433)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.core.StandardServer.startInternal(StandardServer.java:917)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:171)
	at org.apache.catalina.startup.Tomcat.start(Tomcat.java:488)
	at org.springframework.boot.web.embedded.tomcat.TomcatWebServer.initialize(TomcatWebServer.java:126)
	... 13 common frames omitted
