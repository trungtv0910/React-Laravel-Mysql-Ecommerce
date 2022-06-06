
function actionDelete(event){

    event.preventDefault();
    let urlRequest = $(this).data('url');
    let that = $(this);

    console.log(urlRequest)
    console.log(that)

    Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: urlRequest,
                type: 'GET',
                success: function(result) {
                    console.log('req=',result)
                    if(result.code ==200){
                        that.parent().parent().remove();
                        Swal.fire(
                            'Deleted!',
                            result.message,
                            'success'
                        )
                    }else if(result.code==500){
                        Swal.fire(
                            'Error!',
                            'Your file Not Delete.',
                            'Error'
                        )
                    }

                }
            });

        }
    })

}

$(function (){
    $(document).on('click','.btn-action-delete',actionDelete);
})
