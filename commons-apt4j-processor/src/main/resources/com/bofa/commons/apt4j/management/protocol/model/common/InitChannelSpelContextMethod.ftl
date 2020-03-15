<#--

    Copyright bofa1ex.

    Licensed under the Apache License version 2.0, available at http://www.apache.org/licenses/LICENSE-2.0

-->
<#import "../../../internal/lib/ModelBuilder.ftl" as builder/>
<#-- @ftlvariable name="" type="com.bofa.commons.apt4j.management.protocol.model.common.InitChannelSpelContextMethod" -->
<@builder.build_method_head method_head>
    ChannelSpelContextUtils.setVariable(objName, obj, channel);
    <#list spel_vars as spel_var>
        ChannelSpelContextUtils.setVariable(objName + "${spel_var.key}", ${spel_var.value}, channel);
    </#list>
</@builder.build_method_head>