package com.devsuperior.integrations.services;

import com.devsuperior.integrations.dto.EmailDTO;
import com.devsuperior.integrations.services.exceptions.EmailException;
import com.resend.Resend;
import com.resend.core.exception.ResendException;
import com.resend.services.emails.model.CreateEmailOptions;
import com.resend.services.emails.model.CreateEmailResponse;
import com.resend.services.emails.model.Email;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class ResendEmailService implements EmailService {

    private Logger LOG = LoggerFactory.getLogger(ResendEmailService.class);

    @Autowired
    private Resend resend;

    @Override
    public void sendPlainTextEmail(EmailDTO dto) {

        CreateEmailOptions.Builder builder = CreateEmailOptions.builder()
                .from(dto.getFromEmail())
                .to(dto.getToEmail())
                .subject(dto.getSubject());

        if (dto.getContentType().equals("text/plain")) {
            builder.text(dto.getBody());
        } else {
            builder.html(dto.getBody());
        }

        CreateEmailOptions params = builder.build();

        try {
            LOG.info("Sending email to: " + dto.getToEmail());
            CreateEmailResponse response = resend.emails().send(params);
            LOG.info(response.getId());
            LOG.info("Email sent with success!");
        } catch (ResendException e) {
            throw new EmailException(e.getMessage());
        }

    }
}
