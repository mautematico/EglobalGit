$(document).ready(function() {
    $( "#addDivAlumnos" ).hide();
    
    $( "#addAlumnos" ).click(function() {
        $( "#addDivAlumnos" ).show( "slow" );
    });

    $( "#hideDiv" ).click(function() {
        $( "#addDivAlumnos" ).hide( "slow" );
    });
});
