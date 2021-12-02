module ApplicationHelper
  def category_name_to_fa_class_name(category_name)
    {
      "Sport" => "fa-basketball-ball",
      "Solidarité" => "fa-heart",
      "Education-Jeunesse" => "fa-graduation-cap",
      "Culture" => "fa-theater-masks",
      "Petite enfance" => "fa-baby-carriage",
      "Santé" => "fa-plus-square",
      "Developpement durable" => "fa-leaf",
      "Dialogue citoyen" => "fa-comments",
      "Commémoration" => "fa-dove",
      "Autre" => "fa-ellipsis-h"
    }[category_name]
  end

  def category_name_to_border(category_name)
    {
      "Sport" => "sport-bg",
      "Solidarité" => "solidarite-bg",
      "Education-Jeunesse" => "education-jeunesse-bg",
      "Culture" => "culture-bg",
      "Petite enfance" => "petite-enfance-bg",
      "Santé" => "sante-bg",
      "Developpement durable" => "dev-durable-bg",
      "Dialogue citoyen" => "dialogue-citoyen-bg",
      "Commémoration" => "commemoration-bg",
      "Autre" => "autre-bg"
  }[category_name]
  end

  def category_name_to_color(category_name)
    {
      "Sport" => "sport-color",
      "Solidarité" => "solidarite-color",
      "Education-Jeunesse" => "education-jeunesse-color",
      "Culture" => "culture-color",
      "Petite enfance" => "petite-enfance-color",
      "Santé" => "sante-color",
      "Developpement durable" => "dev-durable-color",
      "Dialogue citoyen" => "dialogue-citoyen-color",
      "Commémoration" => "commemoration-color",
      "Autre" => "autre-color"
  }[category_name]
  end
end
