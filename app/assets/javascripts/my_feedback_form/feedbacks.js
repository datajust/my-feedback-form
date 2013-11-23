$('document').ready(function() {
	// $('#my-feedback-form-modal').on('hidden', function () {
 //  	$('#new_feedback').remove();
	// });

	$("#feedback-button").bind('click', function (e){
		form = $('#new_feedback');
		$.get('/my_feedback_form/feedbacks/new', function(s) {
			m = $("#my-feedback-form-modal .modal-body");
			m.html(s);
		});
	});

	$('#send-feedback').bind('click', function (e) {
  	$('#new_feedback').submit();
  });
});

