

function checkGroupPermission() {
    let that = $(this);
    that.parent().parent().parent().find('.checkbox_children').prop('checked', $(this).prop('checked'));
}
function handleCheckboxAll() {
    let that = $(this).parent().parent();
    that.find('.checkbox_children').prop('checked', $(this).prop('checked'));
    that.find('.checkGroupPermission').prop('checked', $(this).prop('checked'))
}

$(function () {
    $(document).on('click', '.checkGroupPermission', checkGroupPermission);
    $(document).on('click', '.checkboxAllPermission', handleCheckboxAll)
})
