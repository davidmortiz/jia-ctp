<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<g:javascript>
    var getPatientId = function(){
        return $('#patientId').text.val()
    }

</g:javascript>

<body>




<div class="patient-search" >
    <form class="form-signin">
            <input type="text" id="patientId" class="form-control" placeholder="Enter Patient ID to Get Started...">
            %{--<g:remoteLink controller="patient" action="search" method="post" params="${}"--}%

            <button type="button" class="btn btn-lg btn-primary"> <span class="glyphicon glyphicon-search"> </span>Search for Patient</button>
    </form>
</div>

</form>

</body>
</html>
