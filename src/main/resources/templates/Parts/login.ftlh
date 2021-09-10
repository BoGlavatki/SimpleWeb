
<#macro login path isregisterForm>
    <form action="${path}" method="post" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> User Name :</label>
            <div class="col-sm-6">
            <input type="text" class="form-control" name="username" placeholder="user name"/>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password:</label>
            <div class="col-sm-6">
            <input type="password" name="password" class="form-control" placeholder="password"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isregisterForm>
        <a href="/registration">Registration</a>
        </#if>
        <button type="submit" class="btn btn-primary"/><#if isregisterForm>Create<#else>Sign in</#if></button>

    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-primary"/> Sign out</button>
    </form>
</#macro>