$('document').ready(function() {
	$("#feedback-button").live('click', function (e){
		e.preventDefault
		form = $('#new_feedback');
		$.get('/my_feedback_form/feedbacks/new', function(s) {
			m = $("#my-feedback-form-modal .modal-body");
			m.html(s);
	        $('#send-feedback').live('click', function (e) {
	        	$('#new_feedback').submit()
	    });
		});
	});
});

