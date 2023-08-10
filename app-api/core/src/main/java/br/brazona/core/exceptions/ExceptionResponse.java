package br.brazona.core.exceptions;

import lombok.Getter;

import java.io.Serializable;
import java.util.Date;

@Getter
public class ExceptionResponse implements Serializable {

    private final Date timestamp;
    private String message;
    private String details;

    public ExceptionResponse(Date timestamp, String message, String details) {
        this.timestamp = timestamp;
        this.message = message;
        this.details = details;
    }


}
