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
<svg height="200" with="600" xmlns="http://www.w3.org/2000/svg">
    <path id="heart-icon" d="M21.786,12.873l7.556-4.361l-7.556-4.362v2.701c-2.929,
  0.374-4.905,2.64-6.809,4.952c0.545,0.703,1.08,1.418,1.604,2.127c0.192,0.26,0.383,
  0.514,0.573,0.77c0.802-1.043,1.584-1.999,2.341-2.74c0.884-0.885,1.673-1.393,
  2.291-1.588V12.873zM17.661,17.006c-1.893-2.371-3.815-5.354-6.009-7.537c-1.461-1.428-3.155-2.664-5.34-2.693h-3.5v3.5h3.5c0.971-0.119,
  2.845,1.333,4.712,3.771c1.895,2.371,3.815,5.354,6.011,7.537c1.326,1.297,
  2.847,2.426,4.751,2.645v2.646l7.556-4.363l-7.556-4.362v2.535C20.746,20.346,19.205,19.022,17.661,17.006z"/>
</svg>

<div id="title" class="heading">
    <h1><strong>Treatment Protocol:</strong> <small>JIA</small></h1>
</div>

%{--<svg class="icon" xlink:href="#heart-icon"/>--}%
<div class="container">
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