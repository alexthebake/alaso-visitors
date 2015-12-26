// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .




$(document).ready(function() {
	setTimeout(function() {
		$('.alert-success').fadeOut(650);
	}, 500);


	$('[action="/visits"]').submit(function(e){
		var fist, last, employee;
		try {
			first = $('#first_name').val();
			last = $('#last_name').val();
			employee = $('#employee').val();
		}catch(ex) {
			console.error('Error:!')
			e.preventDefault();
		}

		var bool = {
			first: first.length <= 0,
			last: last.length <= 0,
			employee: employee.length <= 0
		}

		$('.panel-new-visitor').find('.message-error').remove();


		if( bool.first || bool.last || bool.employee ) {

			if( bool.first ) {
				$('#first_name').after($('<div>', {
					'class': 'message-error',
					'html': 'First name required'
				}));
			}
			if( bool.last ) {
				$('#last_name').after($('<div>', {
					'class': 'message-error',
					'html': 'Last name required'
				}));
			}
			if( bool.employee ) {
				$('#employee').after($('<div>', {
					'class': 'message-error',
					'html': 'Alaso Employee required'
				}));
			}
			e.preventDefault();
		} 
	});
});











