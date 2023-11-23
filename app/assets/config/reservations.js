// app/assets/javascripts/reservations.js

$(document).on('turbolinks:load', function() {
  $('#confirmationModal').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget);
    var modal = $(this);

    // Mettez à jour l'action du formulaire avec l'URL correcte
    var actionUrl = button.data('url');
    modal.find('form').attr('action', actionUrl);
  });

  // Gérer la soumission du formulaire de confirmation
  $('form[data-remote]').on('ajax:success', function(event, data, status, xhr) {
    // Fermer le modal après la confirmation
    $('#confirmationModal').modal('hide');

    // Mettre à jour la vue de votre livre (peut nécessiter des ajustements)
    // Par exemple, vous pouvez mettre à jour la liste des réservations ou afficher un message de confirmation.
  });

  // Gérer les erreurs lors de la soumission du formulaire
  $('form[data-remote]').on('ajax:error', function(event, xhr, status, error) {
    // Gérer les erreurs de manière appropriée (peut nécessiter des ajustements)
    console.error('Erreur lors de la soumission du formulaire de réservation.');
  });
});

