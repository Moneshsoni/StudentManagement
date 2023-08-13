class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects
    validates :first_name, :last_name, :email, presence: true

    before_create :display_greetings

    def display_greetings
        puts "Hello, You executed before action callback!", 1000+12212
    end

    def full_name
        "#{first_name} #{last_name}"
    end

    def name_with_email
        "#{first_name} #{last_name} #{email}"
    end
end
