
package project.core.dao;

import project.core.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ReviewDAO extends JpaRepository<Review, Long> {


}