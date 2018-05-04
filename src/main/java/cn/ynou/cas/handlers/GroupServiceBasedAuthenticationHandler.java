package cn.ynou.cas.handlers;

import org.apereo.cas.adaptors.jdbc.AbstractJdbcUsernamePasswordAuthenticationHandler;
import org.apereo.cas.authentication.HandlerResult;
import org.apereo.cas.authentication.PreventedException;
import org.apereo.cas.authentication.UsernamePasswordCredential;
import org.apereo.cas.authentication.principal.PrincipalFactory;
import org.apereo.cas.authentication.principal.WebApplicationService;
import org.apereo.cas.services.ServicesManager;
import org.apereo.cas.web.support.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.webflow.execution.RequestContext;
import org.springframework.webflow.execution.RequestContextHolder;

import javax.security.auth.login.FailedLoginException;
import javax.sql.DataSource;
import java.security.GeneralSecurityException;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class GroupServiceBasedAuthenticationHandler extends AbstractJdbcUsernamePasswordAuthenticationHandler {

    private static Logger logger = LoggerFactory.getLogger(GroupServiceBasedAuthenticationHandler.class);

    public GroupServiceBasedAuthenticationHandler(String name, ServicesManager servicesManager, PrincipalFactory principalFactory, Integer order, DataSource dataSource) {
        super(name, servicesManager, principalFactory, order, dataSource);
    }

    protected HandlerResult authenticateUsernamePasswordInternal(UsernamePasswordCredential credential, String originalPassword)
            throws GeneralSecurityException, PreventedException {
        logger.debug("running in GroupServiceBasedAuthenticationHandler.authenticateUsernamePasswordInternal");
        RequestContext context = RequestContextHolder.getRequestContext();
        WebApplicationService service = WebUtils.getService(context); //WebUtils use the CAS one
        String accessingServiceId = service.getId();
        logger.debug("accessingServiceId: {}", accessingServiceId);
        //Of course you need to extract the hostname from the url

        String username = credential.getUsername();

        //Get serviceId associated with the user
        String sql = "select serviceId from regexregisteredservice where id in (select service_id from group_service_mappings where group_id in (select group_id from user_group_mappings where user_id in (select id from users where uid=?)))";
        List<Map<String, Object>> serviceIdRawRows = getJdbcTemplate().queryForList(sql, username);
        List<String> serviceIds = serviceIdRawRows.stream().map(row -> (String)row.get("serviceId")).collect(Collectors.toList());
        logger.debug("serviceIdRawRows: {}, serviceIds: {}", serviceIdRawRows, serviceIds);

        if (getJdbcTemplate() == null) {
            throw new GeneralSecurityException("Authentication handler is not configured correctly. "
                    + "No SQL statement or JDBC template is found.");
        }

        if (havePermission(accessingServiceId, serviceIds)) {
            return createHandlerResult(credential,
                    this.principalFactory.createPrincipal(username), null);
        }
        throw new FailedLoginException("Sorry, you are a failure!");
    }

    private boolean havePermission(String accessingServiceId, List<String> serviceIds) {
        return serviceIds.stream().anyMatch(serviceId -> accessingServiceId.matches(serviceId));
    }

}