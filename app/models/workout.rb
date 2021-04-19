class Workout < ApplicationRecord
    def self.search(search_params)
        if search_params
            logger.debug("条件検索")
            Workout.where(['search_params LIKE ?', "%#{search_params}%"])
        else
            logger.debug("全件検索")
            Workout.all
        end
    end
end
