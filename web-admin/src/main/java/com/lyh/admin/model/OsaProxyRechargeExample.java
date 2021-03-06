package com.lyh.admin.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OsaProxyRechargeExample {
    /**
     * osa_proxy_recharge
     */
    protected String orderByClause;

    /**
     * osa_proxy_recharge
     */
    protected boolean distinct;

    /**
     * osa_proxy_recharge
     */
    protected List<Criteria> oredCriteria;

    public OsaProxyRechargeExample() {
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
     * osa_proxy_recharge null
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andProxyNameIsNull() {
            addCriterion("proxy_name is null");
            return (Criteria) this;
        }

        public Criteria andProxyNameIsNotNull() {
            addCriterion("proxy_name is not null");
            return (Criteria) this;
        }

        public Criteria andProxyNameEqualTo(String value) {
            addCriterion("proxy_name =", value, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameNotEqualTo(String value) {
            addCriterion("proxy_name <>", value, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameGreaterThan(String value) {
            addCriterion("proxy_name >", value, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameGreaterThanOrEqualTo(String value) {
            addCriterion("proxy_name >=", value, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameLessThan(String value) {
            addCriterion("proxy_name <", value, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameLessThanOrEqualTo(String value) {
            addCriterion("proxy_name <=", value, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameLike(String value) {
            addCriterion("proxy_name like", value, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameNotLike(String value) {
            addCriterion("proxy_name not like", value, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameIn(List<String> values) {
            addCriterion("proxy_name in", values, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameNotIn(List<String> values) {
            addCriterion("proxy_name not in", values, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameBetween(String value1, String value2) {
            addCriterion("proxy_name between", value1, value2, "proxyName");
            return (Criteria) this;
        }

        public Criteria andProxyNameNotBetween(String value1, String value2) {
            addCriterion("proxy_name not between", value1, value2, "proxyName");
            return (Criteria) this;
        }

        public Criteria andMoneyIsNull() {
            addCriterion("money is null");
            return (Criteria) this;
        }

        public Criteria andMoneyIsNotNull() {
            addCriterion("money is not null");
            return (Criteria) this;
        }

        public Criteria andMoneyEqualTo(Double value) {
            addCriterion("money =", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotEqualTo(Double value) {
            addCriterion("money <>", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyGreaterThan(Double value) {
            addCriterion("money >", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("money >=", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLessThan(Double value) {
            addCriterion("money <", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLessThanOrEqualTo(Double value) {
            addCriterion("money <=", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyIn(List<Double> values) {
            addCriterion("money in", values, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotIn(List<Double> values) {
            addCriterion("money not in", values, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyBetween(Double value1, Double value2) {
            addCriterion("money between", value1, value2, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotBetween(Double value1, Double value2) {
            addCriterion("money not between", value1, value2, "money");
            return (Criteria) this;
        }

        public Criteria andIsProxyIsNull() {
            addCriterion("is_proxy is null");
            return (Criteria) this;
        }

        public Criteria andIsProxyIsNotNull() {
            addCriterion("is_proxy is not null");
            return (Criteria) this;
        }

        public Criteria andIsProxyEqualTo(Byte value) {
            addCriterion("is_proxy =", value, "isProxy");
            return (Criteria) this;
        }

        public Criteria andIsProxyNotEqualTo(Byte value) {
            addCriterion("is_proxy <>", value, "isProxy");
            return (Criteria) this;
        }

        public Criteria andIsProxyGreaterThan(Byte value) {
            addCriterion("is_proxy >", value, "isProxy");
            return (Criteria) this;
        }

        public Criteria andIsProxyGreaterThanOrEqualTo(Byte value) {
            addCriterion("is_proxy >=", value, "isProxy");
            return (Criteria) this;
        }

        public Criteria andIsProxyLessThan(Byte value) {
            addCriterion("is_proxy <", value, "isProxy");
            return (Criteria) this;
        }

        public Criteria andIsProxyLessThanOrEqualTo(Byte value) {
            addCriterion("is_proxy <=", value, "isProxy");
            return (Criteria) this;
        }

        public Criteria andIsProxyIn(List<Byte> values) {
            addCriterion("is_proxy in", values, "isProxy");
            return (Criteria) this;
        }

        public Criteria andIsProxyNotIn(List<Byte> values) {
            addCriterion("is_proxy not in", values, "isProxy");
            return (Criteria) this;
        }

        public Criteria andIsProxyBetween(Byte value1, Byte value2) {
            addCriterion("is_proxy between", value1, value2, "isProxy");
            return (Criteria) this;
        }

        public Criteria andIsProxyNotBetween(Byte value1, Byte value2) {
            addCriterion("is_proxy not between", value1, value2, "isProxy");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andTraderOrderIsNull() {
            addCriterion("trader_order is null");
            return (Criteria) this;
        }

        public Criteria andTraderOrderIsNotNull() {
            addCriterion("trader_order is not null");
            return (Criteria) this;
        }

        public Criteria andTraderOrderEqualTo(String value) {
            addCriterion("trader_order =", value, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderNotEqualTo(String value) {
            addCriterion("trader_order <>", value, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderGreaterThan(String value) {
            addCriterion("trader_order >", value, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderGreaterThanOrEqualTo(String value) {
            addCriterion("trader_order >=", value, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderLessThan(String value) {
            addCriterion("trader_order <", value, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderLessThanOrEqualTo(String value) {
            addCriterion("trader_order <=", value, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderLike(String value) {
            addCriterion("trader_order like", value, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderNotLike(String value) {
            addCriterion("trader_order not like", value, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderIn(List<String> values) {
            addCriterion("trader_order in", values, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderNotIn(List<String> values) {
            addCriterion("trader_order not in", values, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderBetween(String value1, String value2) {
            addCriterion("trader_order between", value1, value2, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andTraderOrderNotBetween(String value1, String value2) {
            addCriterion("trader_order not between", value1, value2, "traderOrder");
            return (Criteria) this;
        }

        public Criteria andOnlinePayIsNull() {
            addCriterion("online_pay is null");
            return (Criteria) this;
        }

        public Criteria andOnlinePayIsNotNull() {
            addCriterion("online_pay is not null");
            return (Criteria) this;
        }

        public Criteria andOnlinePayEqualTo(Integer value) {
            addCriterion("online_pay =", value, "onlinePay");
            return (Criteria) this;
        }

        public Criteria andOnlinePayNotEqualTo(Integer value) {
            addCriterion("online_pay <>", value, "onlinePay");
            return (Criteria) this;
        }

        public Criteria andOnlinePayGreaterThan(Integer value) {
            addCriterion("online_pay >", value, "onlinePay");
            return (Criteria) this;
        }

        public Criteria andOnlinePayGreaterThanOrEqualTo(Integer value) {
            addCriterion("online_pay >=", value, "onlinePay");
            return (Criteria) this;
        }

        public Criteria andOnlinePayLessThan(Integer value) {
            addCriterion("online_pay <", value, "onlinePay");
            return (Criteria) this;
        }

        public Criteria andOnlinePayLessThanOrEqualTo(Integer value) {
            addCriterion("online_pay <=", value, "onlinePay");
            return (Criteria) this;
        }

        public Criteria andOnlinePayIn(List<Integer> values) {
            addCriterion("online_pay in", values, "onlinePay");
            return (Criteria) this;
        }

        public Criteria andOnlinePayNotIn(List<Integer> values) {
            addCriterion("online_pay not in", values, "onlinePay");
            return (Criteria) this;
        }

        public Criteria andOnlinePayBetween(Integer value1, Integer value2) {
            addCriterion("online_pay between", value1, value2, "onlinePay");
            return (Criteria) this;
        }

        public Criteria andOnlinePayNotBetween(Integer value1, Integer value2) {
            addCriterion("online_pay not between", value1, value2, "onlinePay");
            return (Criteria) this;
        }

        public Criteria andIsFetchIsNull() {
            addCriterion("is_fetch is null");
            return (Criteria) this;
        }

        public Criteria andIsFetchIsNotNull() {
            addCriterion("is_fetch is not null");
            return (Criteria) this;
        }

        public Criteria andIsFetchEqualTo(Integer value) {
            addCriterion("is_fetch =", value, "isFetch");
            return (Criteria) this;
        }

        public Criteria andIsFetchNotEqualTo(Integer value) {
            addCriterion("is_fetch <>", value, "isFetch");
            return (Criteria) this;
        }

        public Criteria andIsFetchGreaterThan(Integer value) {
            addCriterion("is_fetch >", value, "isFetch");
            return (Criteria) this;
        }

        public Criteria andIsFetchGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_fetch >=", value, "isFetch");
            return (Criteria) this;
        }

        public Criteria andIsFetchLessThan(Integer value) {
            addCriterion("is_fetch <", value, "isFetch");
            return (Criteria) this;
        }

        public Criteria andIsFetchLessThanOrEqualTo(Integer value) {
            addCriterion("is_fetch <=", value, "isFetch");
            return (Criteria) this;
        }

        public Criteria andIsFetchIn(List<Integer> values) {
            addCriterion("is_fetch in", values, "isFetch");
            return (Criteria) this;
        }

        public Criteria andIsFetchNotIn(List<Integer> values) {
            addCriterion("is_fetch not in", values, "isFetch");
            return (Criteria) this;
        }

        public Criteria andIsFetchBetween(Integer value1, Integer value2) {
            addCriterion("is_fetch between", value1, value2, "isFetch");
            return (Criteria) this;
        }

        public Criteria andIsFetchNotBetween(Integer value1, Integer value2) {
            addCriterion("is_fetch not between", value1, value2, "isFetch");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyIsNull() {
            addCriterion("fetch_money is null");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyIsNotNull() {
            addCriterion("fetch_money is not null");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyEqualTo(Double value) {
            addCriterion("fetch_money =", value, "fetchMoney");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyNotEqualTo(Double value) {
            addCriterion("fetch_money <>", value, "fetchMoney");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyGreaterThan(Double value) {
            addCriterion("fetch_money >", value, "fetchMoney");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("fetch_money >=", value, "fetchMoney");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyLessThan(Double value) {
            addCriterion("fetch_money <", value, "fetchMoney");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyLessThanOrEqualTo(Double value) {
            addCriterion("fetch_money <=", value, "fetchMoney");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyIn(List<Double> values) {
            addCriterion("fetch_money in", values, "fetchMoney");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyNotIn(List<Double> values) {
            addCriterion("fetch_money not in", values, "fetchMoney");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyBetween(Double value1, Double value2) {
            addCriterion("fetch_money between", value1, value2, "fetchMoney");
            return (Criteria) this;
        }

        public Criteria andFetchMoneyNotBetween(Double value1, Double value2) {
            addCriterion("fetch_money not between", value1, value2, "fetchMoney");
            return (Criteria) this;
        }

        public Criteria andFlagIsNull() {
            addCriterion("flag is null");
            return (Criteria) this;
        }

        public Criteria andFlagIsNotNull() {
            addCriterion("flag is not null");
            return (Criteria) this;
        }

        public Criteria andFlagEqualTo(Integer value) {
            addCriterion("flag =", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotEqualTo(Integer value) {
            addCriterion("flag <>", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagGreaterThan(Integer value) {
            addCriterion("flag >", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("flag >=", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagLessThan(Integer value) {
            addCriterion("flag <", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagLessThanOrEqualTo(Integer value) {
            addCriterion("flag <=", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagIn(List<Integer> values) {
            addCriterion("flag in", values, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotIn(List<Integer> values) {
            addCriterion("flag not in", values, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagBetween(Integer value1, Integer value2) {
            addCriterion("flag between", value1, value2, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("flag not between", value1, value2, "flag");
            return (Criteria) this;
        }

        public Criteria andOpenIdIsNull() {
            addCriterion("open_id is null");
            return (Criteria) this;
        }

        public Criteria andOpenIdIsNotNull() {
            addCriterion("open_id is not null");
            return (Criteria) this;
        }

        public Criteria andOpenIdEqualTo(String value) {
            addCriterion("open_id =", value, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdNotEqualTo(String value) {
            addCriterion("open_id <>", value, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdGreaterThan(String value) {
            addCriterion("open_id >", value, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdGreaterThanOrEqualTo(String value) {
            addCriterion("open_id >=", value, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdLessThan(String value) {
            addCriterion("open_id <", value, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdLessThanOrEqualTo(String value) {
            addCriterion("open_id <=", value, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdLike(String value) {
            addCriterion("open_id like", value, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdNotLike(String value) {
            addCriterion("open_id not like", value, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdIn(List<String> values) {
            addCriterion("open_id in", values, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdNotIn(List<String> values) {
            addCriterion("open_id not in", values, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdBetween(String value1, String value2) {
            addCriterion("open_id between", value1, value2, "openId");
            return (Criteria) this;
        }

        public Criteria andOpenIdNotBetween(String value1, String value2) {
            addCriterion("open_id not between", value1, value2, "openId");
            return (Criteria) this;
        }
    }

    /**
     * osa_proxy_recharge
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * osa_proxy_recharge null
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