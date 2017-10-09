package com.lyh.admin.model;

import java.util.ArrayList;
import java.util.List;

public class OsaModuleExample {
    /**
     * osa_module
     */
    protected String orderByClause;

    /**
     * osa_module
     */
    protected boolean distinct;

    /**
     * osa_module
     */
    protected List<Criteria> oredCriteria;

    public OsaModuleExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * osa_module null
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andModuleIdIsNull() {
            addCriterion("module_id is null");
            return (Criteria) this;
        }

        public Criteria andModuleIdIsNotNull() {
            addCriterion("module_id is not null");
            return (Criteria) this;
        }

        public Criteria andModuleIdEqualTo(Long value) {
            addCriterion("module_id =", value, "moduleId");
            return (Criteria) this;
        }

        public Criteria andModuleIdNotEqualTo(Long value) {
            addCriterion("module_id <>", value, "moduleId");
            return (Criteria) this;
        }

        public Criteria andModuleIdGreaterThan(Long value) {
            addCriterion("module_id >", value, "moduleId");
            return (Criteria) this;
        }

        public Criteria andModuleIdGreaterThanOrEqualTo(Long value) {
            addCriterion("module_id >=", value, "moduleId");
            return (Criteria) this;
        }

        public Criteria andModuleIdLessThan(Long value) {
            addCriterion("module_id <", value, "moduleId");
            return (Criteria) this;
        }

        public Criteria andModuleIdLessThanOrEqualTo(Long value) {
            addCriterion("module_id <=", value, "moduleId");
            return (Criteria) this;
        }

        public Criteria andModuleIdIn(List<Long> values) {
            addCriterion("module_id in", values, "moduleId");
            return (Criteria) this;
        }

        public Criteria andModuleIdNotIn(List<Long> values) {
            addCriterion("module_id not in", values, "moduleId");
            return (Criteria) this;
        }

        public Criteria andModuleIdBetween(Long value1, Long value2) {
            addCriterion("module_id between", value1, value2, "moduleId");
            return (Criteria) this;
        }

        public Criteria andModuleIdNotBetween(Long value1, Long value2) {
            addCriterion("module_id not between", value1, value2, "moduleId");
            return (Criteria) this;
        }

        public Criteria andModuleNameIsNull() {
            addCriterion("module_name is null");
            return (Criteria) this;
        }

        public Criteria andModuleNameIsNotNull() {
            addCriterion("module_name is not null");
            return (Criteria) this;
        }

        public Criteria andModuleNameEqualTo(String value) {
            addCriterion("module_name =", value, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameNotEqualTo(String value) {
            addCriterion("module_name <>", value, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameGreaterThan(String value) {
            addCriterion("module_name >", value, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameGreaterThanOrEqualTo(String value) {
            addCriterion("module_name >=", value, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameLessThan(String value) {
            addCriterion("module_name <", value, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameLessThanOrEqualTo(String value) {
            addCriterion("module_name <=", value, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameLike(String value) {
            addCriterion("module_name like", value, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameNotLike(String value) {
            addCriterion("module_name not like", value, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameIn(List<String> values) {
            addCriterion("module_name in", values, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameNotIn(List<String> values) {
            addCriterion("module_name not in", values, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameBetween(String value1, String value2) {
            addCriterion("module_name between", value1, value2, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleNameNotBetween(String value1, String value2) {
            addCriterion("module_name not between", value1, value2, "moduleName");
            return (Criteria) this;
        }

        public Criteria andModuleUrlIsNull() {
            addCriterion("module_url is null");
            return (Criteria) this;
        }

        public Criteria andModuleUrlIsNotNull() {
            addCriterion("module_url is not null");
            return (Criteria) this;
        }

        public Criteria andModuleUrlEqualTo(String value) {
            addCriterion("module_url =", value, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlNotEqualTo(String value) {
            addCriterion("module_url <>", value, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlGreaterThan(String value) {
            addCriterion("module_url >", value, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlGreaterThanOrEqualTo(String value) {
            addCriterion("module_url >=", value, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlLessThan(String value) {
            addCriterion("module_url <", value, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlLessThanOrEqualTo(String value) {
            addCriterion("module_url <=", value, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlLike(String value) {
            addCriterion("module_url like", value, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlNotLike(String value) {
            addCriterion("module_url not like", value, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlIn(List<String> values) {
            addCriterion("module_url in", values, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlNotIn(List<String> values) {
            addCriterion("module_url not in", values, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlBetween(String value1, String value2) {
            addCriterion("module_url between", value1, value2, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleUrlNotBetween(String value1, String value2) {
            addCriterion("module_url not between", value1, value2, "moduleUrl");
            return (Criteria) this;
        }

        public Criteria andModuleSortIsNull() {
            addCriterion("module_sort is null");
            return (Criteria) this;
        }

        public Criteria andModuleSortIsNotNull() {
            addCriterion("module_sort is not null");
            return (Criteria) this;
        }

        public Criteria andModuleSortEqualTo(Integer value) {
            addCriterion("module_sort =", value, "moduleSort");
            return (Criteria) this;
        }

        public Criteria andModuleSortNotEqualTo(Integer value) {
            addCriterion("module_sort <>", value, "moduleSort");
            return (Criteria) this;
        }

        public Criteria andModuleSortGreaterThan(Integer value) {
            addCriterion("module_sort >", value, "moduleSort");
            return (Criteria) this;
        }

        public Criteria andModuleSortGreaterThanOrEqualTo(Integer value) {
            addCriterion("module_sort >=", value, "moduleSort");
            return (Criteria) this;
        }

        public Criteria andModuleSortLessThan(Integer value) {
            addCriterion("module_sort <", value, "moduleSort");
            return (Criteria) this;
        }

        public Criteria andModuleSortLessThanOrEqualTo(Integer value) {
            addCriterion("module_sort <=", value, "moduleSort");
            return (Criteria) this;
        }

        public Criteria andModuleSortIn(List<Integer> values) {
            addCriterion("module_sort in", values, "moduleSort");
            return (Criteria) this;
        }

        public Criteria andModuleSortNotIn(List<Integer> values) {
            addCriterion("module_sort not in", values, "moduleSort");
            return (Criteria) this;
        }

        public Criteria andModuleSortBetween(Integer value1, Integer value2) {
            addCriterion("module_sort between", value1, value2, "moduleSort");
            return (Criteria) this;
        }

        public Criteria andModuleSortNotBetween(Integer value1, Integer value2) {
            addCriterion("module_sort not between", value1, value2, "moduleSort");
            return (Criteria) this;
        }

        public Criteria andModuleDescIsNull() {
            addCriterion("module_desc is null");
            return (Criteria) this;
        }

        public Criteria andModuleDescIsNotNull() {
            addCriterion("module_desc is not null");
            return (Criteria) this;
        }

        public Criteria andModuleDescEqualTo(String value) {
            addCriterion("module_desc =", value, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescNotEqualTo(String value) {
            addCriterion("module_desc <>", value, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescGreaterThan(String value) {
            addCriterion("module_desc >", value, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescGreaterThanOrEqualTo(String value) {
            addCriterion("module_desc >=", value, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescLessThan(String value) {
            addCriterion("module_desc <", value, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescLessThanOrEqualTo(String value) {
            addCriterion("module_desc <=", value, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescLike(String value) {
            addCriterion("module_desc like", value, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescNotLike(String value) {
            addCriterion("module_desc not like", value, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescIn(List<String> values) {
            addCriterion("module_desc in", values, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescNotIn(List<String> values) {
            addCriterion("module_desc not in", values, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescBetween(String value1, String value2) {
            addCriterion("module_desc between", value1, value2, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleDescNotBetween(String value1, String value2) {
            addCriterion("module_desc not between", value1, value2, "moduleDesc");
            return (Criteria) this;
        }

        public Criteria andModuleIconIsNull() {
            addCriterion("module_icon is null");
            return (Criteria) this;
        }

        public Criteria andModuleIconIsNotNull() {
            addCriterion("module_icon is not null");
            return (Criteria) this;
        }

        public Criteria andModuleIconEqualTo(String value) {
            addCriterion("module_icon =", value, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconNotEqualTo(String value) {
            addCriterion("module_icon <>", value, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconGreaterThan(String value) {
            addCriterion("module_icon >", value, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconGreaterThanOrEqualTo(String value) {
            addCriterion("module_icon >=", value, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconLessThan(String value) {
            addCriterion("module_icon <", value, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconLessThanOrEqualTo(String value) {
            addCriterion("module_icon <=", value, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconLike(String value) {
            addCriterion("module_icon like", value, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconNotLike(String value) {
            addCriterion("module_icon not like", value, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconIn(List<String> values) {
            addCriterion("module_icon in", values, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconNotIn(List<String> values) {
            addCriterion("module_icon not in", values, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconBetween(String value1, String value2) {
            addCriterion("module_icon between", value1, value2, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andModuleIconNotBetween(String value1, String value2) {
            addCriterion("module_icon not between", value1, value2, "moduleIcon");
            return (Criteria) this;
        }

        public Criteria andOnlineIsNull() {
            addCriterion("online is null");
            return (Criteria) this;
        }

        public Criteria andOnlineIsNotNull() {
            addCriterion("online is not null");
            return (Criteria) this;
        }

        public Criteria andOnlineEqualTo(Integer value) {
            addCriterion("online =", value, "online");
            return (Criteria) this;
        }

        public Criteria andOnlineNotEqualTo(Integer value) {
            addCriterion("online <>", value, "online");
            return (Criteria) this;
        }

        public Criteria andOnlineGreaterThan(Integer value) {
            addCriterion("online >", value, "online");
            return (Criteria) this;
        }

        public Criteria andOnlineGreaterThanOrEqualTo(Integer value) {
            addCriterion("online >=", value, "online");
            return (Criteria) this;
        }

        public Criteria andOnlineLessThan(Integer value) {
            addCriterion("online <", value, "online");
            return (Criteria) this;
        }

        public Criteria andOnlineLessThanOrEqualTo(Integer value) {
            addCriterion("online <=", value, "online");
            return (Criteria) this;
        }

        public Criteria andOnlineIn(List<Integer> values) {
            addCriterion("online in", values, "online");
            return (Criteria) this;
        }

        public Criteria andOnlineNotIn(List<Integer> values) {
            addCriterion("online not in", values, "online");
            return (Criteria) this;
        }

        public Criteria andOnlineBetween(Integer value1, Integer value2) {
            addCriterion("online between", value1, value2, "online");
            return (Criteria) this;
        }

        public Criteria andOnlineNotBetween(Integer value1, Integer value2) {
            addCriterion("online not between", value1, value2, "online");
            return (Criteria) this;
        }
    }

    /**
     * osa_module
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * osa_module null
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}