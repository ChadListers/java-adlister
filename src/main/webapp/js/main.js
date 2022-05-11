

$('#formId').submit(function (e) {
    if ($('#category').val() == '') {
        e.preventDefault(); //stop form submission
    } else {
        alert("Please select an option");
    }
});