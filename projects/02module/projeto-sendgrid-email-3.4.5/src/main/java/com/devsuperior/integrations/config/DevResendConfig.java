package com.devsuperior.integrations.config;

import com.devsuperior.integrations.services.EmailService;
import com.devsuperior.integrations.services.ResendEmailService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Configuration
@Profile("devResend")
public class DevResendConfig {

    @Bean
    EmailService emailService() {
        return new ResendEmailService();
    }
}
