package cn.ynou.cas.handlers;

import org.apache.commons.configuration2.PropertiesConfiguration;
import org.apereo.cas.authentication.*;
import org.apereo.cas.authentication.principal.DefaultPrincipalFactory;
import org.apereo.cas.authentication.principal.PrincipalFactory;
import org.apereo.cas.authentication.principal.WebApplicationService;
import org.apereo.cas.web.support.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.webflow.execution.RequestContext;
import org.springframework.webflow.execution.RequestContextHolder;

import java.security.GeneralSecurityException;

public class CustomAuthenticationHandler implements AuthenticationHandler {

    protected PrincipalFactory principalFactory = new DefaultPrincipalFactory();

    @Autowired
    PropertiesConfiguration propertiesConfiguration;
    private transient Logger logger = LoggerFactory.getLogger(this.getClass());


    @Override
    public HandlerResult authenticate(Credential credential) throws GeneralSecurityException, PreventedException {

        UsernamePasswordCredential usernamePasswordCredential = (UsernamePasswordCredential) credential;
        // Here I would like to have access to the encoded address


        final RequestContext context = RequestContextHolder.getRequestContext();
        final WebApplicationService service = WebUtils.getService(context); //WebUtils use the CAS one

        String theUrlThatYouNeed = service.getId();
        //Of course you need to extract the hostname from the url

        return null;
    }

    @Override
    public boolean supports(Credential credential) {
        return false;
    }

    @Override
    public int getOrder() {
        return 0;
    }
}