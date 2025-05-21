package com.servlet_programs;

import java.io.PrintWriter;
import java.io.StringWriter;

public class ExceptionHandler {
    public static String printStacktrace(Throwable exception) {
        exception.printStackTrace();
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        exception.printStackTrace(pw);
        return sw.toString();
    }

    public static String printCause(Throwable exception) {
        Throwable cause = exception.getCause();
        if (cause != null) {
            StringWriter causeSw = new StringWriter();
            PrintWriter causePw = new PrintWriter(causeSw);
            cause.printStackTrace(causePw);
            return causeSw.toString();
        }
        return "Unknown";
    }
}
