package br.brazona.baf.api.exceptions;

public class ExceptionMessage {
    public final static String NOT_FOUND = "Not found: ";
    public final static String FIELD_BAD_FORMAT = "Bad format, field: ";
    public final static String FIELD_REQUIRED = "Field is required: ";
    public final static String PERMISSION_DENIED = "Permission denied! ";
    public final static String REGISTRY_INACTIVE = "The information is already registered with inactivated status: ";
    public final static String ALREADY_REGISTRY = "There is already a record for this information: ";

    public static String CONFLICT(String informed, String actual) {
        return "informed value: " + informed + "- actual value: " + actual;
    }
}
