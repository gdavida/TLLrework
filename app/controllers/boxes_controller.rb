# ------- TOYS ------------
# ________________________________________

  # validates :name, present
  # validates :status present
  # validates :age_group_id
  # validates :location_id


  # belongs_to :age_group
  # belongs_to :location
  # has_many :toys


# ________________________________________




# ------- GET ----------------------------
# ________________________________________

#-- INDEX --------
# my "index" page for this model (@boxes) will get and return a list of all of the items in that table
# (my @ variable is plural here because I am referring to ALL/multiple records)
# I will code exactly what that looks like, what attributes to include and the format, etc, in the erb file
#
get "/boxes/?" do
  @boxes = Box.all
  erb :"boxes/index"
end

#-- NEW ----------
# my "new" page will be my way of getting a form to fill out for a new item into the Skill table
# I will make form in the erb file, which will evantually, through "create" post that info to the db
#
get "/boxes/new/?" do
  @box = Box.new
  @age_groups = AgeGroup.all
  @age_group = AgeGroup.find_by_id(params['id'])
  @toys = Toy.all
  @toy = Toy.find_by_id(params['id'])
  @locations = Location.all
  @location = Location.find_by_id(params['id'])
  erb :"/boxes/new"
end

#-- SHOW ---------
# When I want to look futher at a specific record I will look it up by its primary key (id")
# In my erb file I format what information about each record I want to show
#
get "/boxes/:id/?" do
  @box = Box.find_by_id(params['id'])
  @age_groups = AgeGroup.all
  @age_group = AgeGroup.find_by_id(params['id'])
  @toys = Toy.where(box_id: params['id'])
  @toy = Toy.find_by_id(params['id'])
  @locations = Location.all
  @location = Location.find_by_id(params['id'])
  erb :"boxes/show"
end

#-- EDIT ---------
# When I want to edit the details of a specific record, as referenced by its primary ket
# In my erb file I will have an editable form, which will eventually, through "update" post that info to the db
# (probably will look exactly like NEW only with info already in the form ready to be used or edited as needed)
#
get "/boxes/:id/edit/?" do
  @box = Box.find_by_id(params['id'])
  @age_groups = AgeGroup.all
  @age_group = AgeGroup.find_by_id(params['id'])
  @toys = Toy.all
  @toy = Toy.find_by_id(params['id'])
  @locations = Location.all
  @location = Location.find_by_id(params['id'])
  erb :"boxes/edit"
end

# ________________________________________

# 
#-- ADDTOYS ---------
# When I want to edit the details of a specific record, as referenced by its primary ket
# In my erb file I will have an editable form, which will eventually, through "update" post that info to the db
# (probably will look exactly like NEW only with info already in the form ready to be used or edited as needed)
#
get "/boxes/:id/edit/?" do
  @box = Box.find_by_id(params['id'])
  @age_groups = AgeGroup.all
  @age_group = AgeGroup.find_by_id(params['id'])
  @toys = Toy.all
  @toy = Toy.find_by_id(params['id'])
  @locations = Location.all
  @location = Location.find_by_id(params['id'])
  erb :"boxes/edit"
end

# ________________________________________




# ------- POST ---------------------------
# ________________________________________

#-- CREATE ---------
# I'm taking the info from the form on the NEW page and posting it to the db, creating a new object
# If the info I entered is good(ie it validates and therefor saves) I will be redirected to the INDEX where I will see the updated list of all items
# Else I will stay on the new page, which in the erb file I will make sure it shows which errors showed up, so which validations must be met in order for it to save
#
post "/boxes/?" do
  @box = Box.new(name: params['name'],
                 status: params['status'],
                 location_id: params['location_id'],
                 age_group_id: params['age_group_id'])
  if @box.save
    redirect to ("/boxes")
  else
    erb :"boxes/new"
  end
end

#-- UPDATE ---------
# I'm taking the info from the form on the EDIT page and posting it to the db, updating the object
# If the info I entered is goof (ie it validates and therefore saves) then I will be redirected to the SHOW page for that item to see all the specific, now updated, info
# Else I will stay on the edit page, which in the erb file I will make sure it shows which errors showed up, so which validations must be met in order for it to save
# ** PATCH is NOT supported by html/http so we have to use the hidden method to kind of "trick" it into patching:
#     in main.rb:    enable :method_override
#     in the edit page under the form action include:
#            <input type="hidden" name="_method" value="patch">

patch "/boxes/:id/?" do
  @box = Box.find_by_id(params['id'])

  if @box.update_attributes(name: params['name'],
                 status: params['status'],
                 location_id: params['location_id'],
                 age_group_id: params['age_group_id'])
    redirect to("/boxes/#{@box.id}")
  else
    erb :"boxes/edit"
  end
end
# ________________________________________


# ------- DELETE ------------
# ________________________________________
#
#  find record by id and destroy it then redirect to the INDEX list of all items, which reflects the deletion
#
  delete "/boxes/:id/?" do
    @box = Box.find_by_id(params['id'])
    @box.destroy
    redirect to("/boxes")
  end
# ________________________________________
