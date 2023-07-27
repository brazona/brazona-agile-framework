package br.brazona.baf.api.exceptions.types;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class FieldBadFormatException extends RuntimeException {

    public FieldBadFormatException(String message) {
        super(message);
    }
}
