function password(obj) {
    if (obj.value != "")
        obj.type = 'password';
    else if (obj.value == "")
        obj.type = 'text';
    obj.setSelectionRange(obj.value.length, obj.value.length);
}

function image_preview(obj) {
    if (obj.files && obj.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            document.getElementById("cph_body_img_profile_image").src = e.target.result;
        }
        reader.readAsDataURL(obj.files[0]);
    }
}
function page_redirect(msg, path) {
    var confirm_value = document.createElement("INPUT");
    confirm_value.type = "hidden";
    confirm_value.name = "confirm_value";
    if (confirm(msg)) {
        window.location.href = path;
    }
    else {
        window.location = window.location;
    }
}
function ace_change_role_sap_id_selected(source, eventArgs) {
    var hidden_field = document.getElementById("cph_body_hf_change_role_sap_id");
    hidden_field.value = eventArgs._value;
}
function ace_edit_member_selected(source, eventArgs) {
    var hidden_field = document.getElementById("cph_body_hf_edit_member");
    hidden_field.value = eventArgs._value;
}
function ace_edit_faculty_selected(source, eventArgs) {
    var hidden_field = document.getElementById("cph_body_hf_edit_faculty");
    hidden_field.value = eventArgs._value;
}
function ace_send_message_to_selected(source, eventArgs) {
    var hidden_field = document.getElementById("cph_body_hf_send_message_to");
    hidden_field.value = eventArgs._value;
}
