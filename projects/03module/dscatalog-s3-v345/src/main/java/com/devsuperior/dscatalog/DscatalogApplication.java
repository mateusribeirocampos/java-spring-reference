package com.devsuperior.dscatalog;

import com.devsuperior.dscatalog.services.S3Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.FileInputStream;
import java.io.InputStream;

@SpringBootApplication
public class DscatalogApplication implements CommandLineRunner {

	@Autowired
	private S3Service s3Service;

	public static void main(String[] args) {
		SpringApplication.run(DscatalogApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		String path = "/Users/mateusribeirodecampos/Desktop/profile.png";
		try (InputStream is = new FileInputStream(path)) {
			s3Service.uploadFile(is, "profile.png", "image/png");
		}
	}
}
