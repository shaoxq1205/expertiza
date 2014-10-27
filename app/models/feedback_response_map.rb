# == Schema Information
#
# Table name: response_maps
#
#  id                    :integer          not null, primary key
#  reviewed_object_id    :integer          default(0), not null
#  reviewer_id           :integer          default(0), not null
#  reviewee_id           :integer          default(0), not null
#  type                  :string(255)      default(""), not null
#  notification_accepted :boolean          default(FALSE)
#  round                 :integer
#

class FeedbackResponseMap < ResponseMap
  belongs_to :reviewee, :class_name => 'Participant', :foreign_key => 'reviewee_id'
  belongs_to :review, :class_name => 'Response', :foreign_key => 'reviewed_object_id'
  belongs_to :reviewer, :class_name => 'AssignmentParticipant'

  def assignment
    self.review.map.assignment
  end  
  
  def show_review()
    if self.review
      return self.review.display_as_html()+"<BR/><BR/><BR/>"
    else
      return "<I>No review was performed.</I><BR/><BR/><BR/>"
    end
  end   
  
  def get_title
    return "Feedback"
  end  
  
  def questionnaire
    self.assignment.questionnaires.find_by_type('AuthorFeedbackQuestionnaire')
  end
  
  def contributor
    self.review.map.reviewee
  end 
end
