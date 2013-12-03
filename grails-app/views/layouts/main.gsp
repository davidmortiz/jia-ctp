<!DOCTYPE html>
<html lang="en">
<head>
    <title>CTP Workflow</title>


    <r:require modules="bootstrap"/>
    <r:require module="application"/>
    <g:javascript library='jquery'/>
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>
<div class="container">
    <h1>CTP Workflow</h1>

    <div class="row">

        <div>
            %{-- div to hold alerts, with any flash alerts shown--}%
            <div id="alerts">
                <g:if test="${flash.failure}">
                %{--<g:render template="/includes/alert_failure" model="[title: flash.failure.title, message: flash.failure.message]" ></g:render>--}%
                </g:if>
                <g:if test="${flash.success}">
                %{--<g:render template="/includes/alert_success" model="[title: flash.success.title, message: flash.success.message]" ></g:render>--}%
                </g:if>
            </div>
            <g:layoutBody/>
        </div>

        <div class="footer" role="contentinfo"></div>

        <r:layoutResources/>
    </div>
</div>

</body>
</html>