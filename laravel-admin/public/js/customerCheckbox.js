$(function () {
    // $('.checkbox_warapper').on('click',function(){
    //     $(this).parents('.card').find('.checkbox_childrent').prop('checked',$(this).prop('checked'))
    // });
    // $('.checkall').on('click',function(){
    //     $('.listcard').find('.checkbox_warapper').prop('checked',$(this).prop('checked'));
    //     $('.listcard').find('.checkbox_childrent').prop('checked',$(this).prop('checked'));
    // });
    $('.checkbox_all').on('click', function () {
        $('.checkbox_childrent').prop('checked', $(this).prop('checked'))
    })


})

function checkinput() {
    let list_checkbox = $('.list_render').find('.checkbox_childrent').is(':checked');
    if (list_checkbox) {
        $('.action').removeAttr('disabled');
    } else {
        $('.action').prop('disabled', 'disabled');

    }
}

function handleDeleteList() {
    Swal.fire({
        title: 'Are you sure?',
        text: "Are you sure you want to delete them all!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete All it!'
    }).then((result) => {
        if (result.isConfirmed) {
            $('.checkbox_childrent').each(function () {
                // selected.push($(this).attr('name'));
                if ($(this).is(":checked")) {
                    let that = $(this).parent().parent();
                    let urlRequest = that.find('.btn-action-delete').data('url');
                    $.ajax({
                        url: urlRequest,
                        type: 'GET',
                        success: function (result) {
                            if (result.code == 200) {
                                that.remove();
                                // Swal.fire(
                                //     'Deleted!',
                                //     result.message,
                                //     'success'
                                // )
                            } else if (result.code == 500) {
                                // Swal.fire(
                                //     'Error!',
                                //     'Your file Not Delete.',
                                //     'Error'
                                // )
                            }
                        }
                        //    end success
                    });
                    //    end ajax
                }
            });
            //end each function
        }
    })
//    end swal hiệu ứng hiển thị thông báo
}

function handleClickAction() {
    let select_action = $('#select_action').val();

    switch (select_action) {
        case 'delete': {
            handleDeleteList();
        }
            break;
        case '':
            break;
        default: {
            alert('Vui lòng chọn hành động');
        }
            break;
    }


}

$(function () {

    $(document).on('click', '.checkbox_childrent', checkinput);
    $(document).on('click', '.checkbox_all', checkinput);
    $(document).on('click', '.action', handleClickAction)


})
