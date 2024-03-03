// Copyright (c) 2018-2019 The Dash Core developers
// Copyright (c) 2017-2021 The Vortexa Core developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef VORTEXA_QUORUMS_INIT_H
#define VORTEXA_QUORUMS_INIT_H

class CDBWrapper;
class CEvoDB;

namespace llmq
{

// If true, we will connect to all new quorums and watch their communication
static const bool DEFAULT_WATCH_QUORUMS = false;

// Init/destroy LLMQ globals
void InitLLMQSystem(CEvoDB& evoDb, bool unitTests, bool fWipe = false);
void DestroyLLMQSystem();

// Manage scheduled tasks, threads, listeners etc.
void StartLLMQSystem();
void StopLLMQSystem();
void InterruptLLMQSystem();
} // namespace llmq

#endif //VORTEXA_QUORUMS_INIT_H
