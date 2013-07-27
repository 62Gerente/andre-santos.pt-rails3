class Repository < ActiveRecord::Base
  attr_accessible :name, :description, :created, :default_branch, :html_url, :forks, :id_str, :watchers, :language, :owner_avatar, :owner_url, :owner_login


  def self.get_latest
    repositories = Github.repos.list user: '62Gerente'

    repositories.each do |r|
      created = r.created_at.to_datetime

      unless Repository.exists?(id_str: r.id.to_s)
        Repository.create({name: r.name, created: created, id_str: r.id.to_s, description: r.description,
                     default_branch: r.default_branch, html_url: r.html_url, forks: r.forks,
                     watchers: r.watchers, language: r.language, owner_avatar: r.owner.avatar_url,
                     owner_url: r.owner.html_url, owner_login: r.owner.login})
      end

    end

  end

end