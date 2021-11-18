<#import "Parts/common.ftlh" as c>
<#import "Parts/login.ftlh" as l>

<@c.page>
List of users

    <table>
        <thdead>
            <tr>
                <th>Name</th>
                <th>Role</th>
            </tr>
        </thdead>
    <tbody>
    <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">edit</a> </td>
            </tr>
    </#list>
    </tbody>
    </table>
</@c.page>