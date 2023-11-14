# Le code définit un contrôleur nommé QuestionsController qui hérite de ApplicationController.
class QuestionsController < ApplicationController
  # Action 'ask' appelée lorsque l'utilisateur visite la page '/ask'.
  def ask
  end

  # Action 'answer' appelée lorsque l'utilisateur soumet un formulaire avec une question.
  def answer
    # Récupère la question soumise par l'utilisateur depuis les paramètres de la requête.
    @question = params[:question]

    # Vérifie si la question est vide.
    if @question.blank?
      @answer = "I can't hear you!"
    # Vérifie si la question contient la phrase "i am going to work" (insensible à la casse).
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    # Vérifie si la question se termine par un point d'interrogation.
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    # Si aucune des conditions précédentes n'est satisfaite, affiche une réponse par défaut.
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# Ces commentaires devraient vous donner une compréhension détaillée de ce que fait chaque partie du code. En résumé, le contrôleur QuestionsController définit deux actions, ask et answer. L'action ask est appelée lorsqu'un utilisateur visite la page "/ask", tandis que l'action answer est appelée lorsqu'un utilisateur soumet un formulaire avec une question. La réponse à la question dépend de certaines conditions définies dans la méthode answer.
# class QuestionsController < ApplicationController
#   def ask
#   end
#   def answer
#     @question = params[:question]
#     # @answer = params[:answer]
# @answer =
#     if @question == “I am going to work”
#       “Great!”
#     elsif @question.end_with?(“?”)
#       “Silly question, get dressed and go to work!”
#     else
#       “I don’t care, get dressed and go to work!”
#     end
#   end
# end
