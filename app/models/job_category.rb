class JobCategory < ApplicationRecord

  enum job_category: {
      individual: 0,
      company: 1,
      designer: 2,
      stylist: 3,
      hairmake: 4,
      photographer: 5
    }

    has_many :users

end
