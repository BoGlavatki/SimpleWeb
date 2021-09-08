<#import "Parts/common.ftlh" as c>
<#import "Parts/login.ftlh" as l>

<@c.page>
<h1>Add new user</h1>
    ${message!""}
<@l.login "/registration"/>
</@c.page>