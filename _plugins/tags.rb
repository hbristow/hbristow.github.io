module Jekyll
    class FontAwesomeTag < Liquid::Tag
        def initialize(tag_name, text, tokens)
            super
            @text = text
        end

        def render(context)
            "<i class=\"fa fa-#{@text}\"></i>"
        end
    end
end

Liquid::Template.register_tag('fa', Jekyll::FontAwesomeTag)
