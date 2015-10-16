# coding: utf-8
module UserDecoratorDecorator
  def email_link(body = nil, &block)
    if block_given?
      link_to("nailto:#{email}", &block)
    else
      link_to(body, "mailto:#{email}")
    end
  end
end
