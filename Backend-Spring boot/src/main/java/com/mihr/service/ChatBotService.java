package com.mihr.service;

import com.mihr.model.CoinDTO;
import com.mihr.response.ApiResponse;

public interface ChatBotService {
    ApiResponse getCoinDetails(String coinName);

    CoinDTO getCoinByName(String coinName);

    String simpleChat(String prompt);
}
