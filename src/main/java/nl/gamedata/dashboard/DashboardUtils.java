package nl.gamedata.dashboard;

import javax.servlet.http.HttpSession;

import nl.gamedata.common.SqlUtils;

public final class DashboardUtils extends SqlUtils {

    public static void loadAttributes(final HttpSession session) {
        DashboardData data = SessionUtils.getData(session);
    }

}
