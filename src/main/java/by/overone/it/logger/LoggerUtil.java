package by.overone.it.logger;

import static org.hibernate.tool.schema.SchemaToolingLogging.LOGGER;

public class LoggerUtil {

    public static void printLogAboutLoginUser(String userId, String username) {
        LOGGER.info(userId + " " + username + " is logged in");
    }

    public static void  printLogAboutLogoutUser(String userId) {
        LOGGER.info(userId +  " is logged out");
    }

    public static void  printLogAboutRegistrationUser(String username) {
        LOGGER.info(username + " registered");
    }

    public static void printWarnLogAboutAuthorisationError() {
        LOGGER.warn("Authorisation error");
    }
}
