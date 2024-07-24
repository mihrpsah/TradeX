package com.mihr.repository;

import com.mihr.domain.WalletTransactionType;
import com.mihr.model.Wallet;
import com.mihr.model.WalletTransaction;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface WalletTransactionRepository extends JpaRepository<WalletTransaction,Long> {

    List<WalletTransaction> findByWalletOrderByDateDesc(Wallet wallet);

}
