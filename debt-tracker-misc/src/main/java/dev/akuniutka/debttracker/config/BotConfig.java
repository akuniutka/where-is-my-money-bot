package dev.akuniutka.debttracker.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EntityScan(basePackages = {"dev.akuniutka.debttracker"})
@EnableJpaRepositories(basePackages = {"dev.akuniutka.debttracker"})
@ComponentScan(basePackages = {"dev.akuniutka.debttracker"})
@Slf4j
public class BotConfig {
    // TODO: limit Swagger to custom endpoints only (with Docket bean)
}
