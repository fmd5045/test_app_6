First Test Repo : Changed the about page by ME


  '#<a class="navbar-brand" id= "logo"href="#">TestApp6</a>'

  '#<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>'

<table>
    <thead>
        <tr>
            <th> Title </th>
            <th> Description </th>
            <th colspan ="3"> Actions </th>
        </tr>
    </thead>

    </tbody>
        <% @articles.each do |article| %>
            <tr>
                <td><%= article.title %></td>
                <td><%= article.description %></td>
                <td><%= link_to 'Show', article_path(article.id)%></td>
                <td><%= link_to 'Edit', edit_article_path(article.id)%></td>
                <td><%= link_to 'Delete', article_path(article.id), method: :delete, data: { confirm: " Are you sure?"} %></td>
            </tr>
        <% end %>
    </tbody>
</table>

<p>
<%= link_to 'Create new article' ,new_article_path %>
</p>