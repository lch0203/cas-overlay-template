package cn.ynou.cas;

import cn.ynou.cas.handlers.GroupServiceBasedAuthenticationHandler;
import org.apereo.cas.authentication.AuthenticationEventExecutionPlan;
import org.apereo.cas.authentication.AuthenticationEventExecutionPlanConfigurer;
import org.apereo.cas.authentication.AuthenticationHandler;
import org.apereo.cas.authentication.principal.DefaultPrincipalFactory;
import org.apereo.cas.authentication.principal.PrincipalFactory;
import org.apereo.cas.authentication.principal.PrincipalResolver;
import org.apereo.cas.configuration.CasConfigurationProperties;
import org.apereo.cas.configuration.model.support.jdbc.JdbcAuthenticationProperties;
import org.apereo.cas.configuration.model.support.jdbc.QueryJdbcAuthenticationProperties;
import org.apereo.cas.configuration.support.JpaBeans;
import org.apereo.cas.services.ServicesManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration("MyAuthenticationEventExecutionPlanConfiguration")
public class GroupServiceBasedAuthenticationEventExecutionPlanConfiguration
                    implements AuthenticationEventExecutionPlanConfigurer {

    private static Logger logger = LoggerFactory.getLogger(GroupServiceBasedAuthenticationEventExecutionPlanConfiguration.class);


    @Autowired
    @Qualifier("servicesManager")
    private ServicesManager servicesManager;

    @Autowired
    private CasConfigurationProperties casProperties;

    @Autowired
    @Qualifier("personDirectoryPrincipalResolver")
    private PrincipalResolver personDirectoryPrincipalResolver;

    @ConditionalOnMissingBean(name = "jdbcPrincipalFactory")
    @Bean
    @RefreshScope
    public PrincipalFactory jdbcPrincipalFactory() {
        return new DefaultPrincipalFactory();
    }

    @Bean
    public AuthenticationHandler myAuthenticationHandler() {
        JdbcAuthenticationProperties jdbc = casProperties.getAuthn().getJdbc();
        QueryJdbcAuthenticationProperties queryJdbcAuthenticationProperties = jdbc.getQuery().get(0);
        logger.debug("queryJdbcAuthenticationProperties is {}", queryJdbcAuthenticationProperties);

        GroupServiceBasedAuthenticationHandler handler = new GroupServiceBasedAuthenticationHandler(queryJdbcAuthenticationProperties.getName(), servicesManager,
                jdbcPrincipalFactory(), queryJdbcAuthenticationProperties.getOrder(), JpaBeans.newDataSource(queryJdbcAuthenticationProperties));
        /*
            Configure the handler by invoking various setter methods.
            Note that you also have full access to the collection of resolved CAS settings.
            Note that each authentication handler may optionally qualify for an 'order`
            as well as a unique name.
        */
        return handler;
    }

    @Override
    public void configureAuthenticationExecutionPlan(final AuthenticationEventExecutionPlan plan) {
        plan.registerAuthenticationHandler(myAuthenticationHandler());
    }
}