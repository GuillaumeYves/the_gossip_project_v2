module ApplicationHelper
  def display_error_messages(model, attribute)
    if model.errors.any?
      messages = model.errors.full_messages_for(attribute)
      content_tag(:p, messages.join(', '), class: 'text-danger')
    end
  end
end
