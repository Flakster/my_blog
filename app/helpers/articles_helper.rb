module ArticlesHelper
  def article_properties(category)
    
    if category.articles.count.zero?
      properties_hash = {image: 'default', title: '', link: '#'}
    else
      properties_hash = {image: category.articles.recent.first.image,
                         title: category.articles.recent.first.title,
                         link: category.articles.recent.first}
    end
    return properties_hash
  end

end
