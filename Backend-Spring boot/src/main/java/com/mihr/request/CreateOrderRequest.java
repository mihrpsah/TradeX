package com.mihr.request;

import com.mihr.domain.OrderType;

import com.mihr.model.Coin;
import lombok.Data;

import java.math.BigDecimal;


@Data
public class CreateOrderRequest {
    private String coinId;
    private double quantity;
    private OrderType orderType;
}
