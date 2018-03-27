package edu.cmu.db.entities;

import javax.persistence.*;
import java.time.Instant;

@Entity
@Table(name = "keywordcategory")
@NamedQueries({
        @NamedQuery(name = "edu.cmu.db.entities.User.findAll",
                query = "select c from KeywordCategory kc")
})

public class KeywordCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long categoryID;

    @Column(name = "category")
    private String category;

    @Column(name = "keywords")
    private String keywords;

    public KeywordCategory() {
    }

    public KeywordCategory(String category, String keywords) {
        this.category = category;
        this.keywords = keywords;
    }

    public long getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(long categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategory() {
        return category;
    }



    public void setCategory(String category) {
        this.category = category;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }
}
