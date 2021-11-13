const initDashboard = () => {
  let headerButtons         = ['all', 'accepted', 'completed'];
  let seniorOffers          = $('#senior-offers');
  let calendar              = $('#calendar');
  let seniorReservationsBtn = $('#senior-reservations');

  seniorReservationsBtn.click(function() {
    $(this).addClass('active');
    seniorOffers.removeClass('d-none');
    calendar.addClass('d-none');

    $.each(headerButtons, function(index, element) {
      $(`#${element}`).removeClass('active');
    });
  });

  $.each(headerButtons, function(index, currentButton) {
    $(`#${currentButton}`).click(function() {
      
      calendar[0].setAttribute('class', `calendar ${currentButton}`)
      $(this).addClass('active');
      seniorReservationsBtn.removeClass('active');

      $.each(headerButtons, function(index, otherButton) {
        if (otherButton !== currentButton)
        $(`#${otherButton}`).removeClass('active');
      });

      calendar.removeClass('d-none');
      seniorOffers.addClass('d-none');
    });
  });
};

export { initDashboard };