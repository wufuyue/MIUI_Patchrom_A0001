.class public final Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;
.super Lcom/android/internal/telephony/gsm/GsmCallTracker;
.source "OppoGsmCallTracker.java"


# static fields
.field private static final DBG_POLL:Z


# instance fields
.field private blackListReceiver:Landroid/content/BroadcastReceiver;

.field private blockingNumer:Ljava/lang/String;

.field private pollMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 65
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    .line 66
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;-><init>(Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blackListReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    return-object p1
.end method

.method private blockBlackNameList(Lcom/android/internal/telephony/DriverCall;Landroid/os/Message;)V
    .locals 8
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 125
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v0, v3, :cond_1

    .line 127
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.NEW_INCOMING_CALL"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v0, "subscription"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscription()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 133
    const-string v0, "PHONE_NUMBER"

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    :goto_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    .line 140
    const-string v0, "index"

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v0, "Send broadcast ACTION_NEW_INCOMING_CALL"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blackListReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 146
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 135
    .restart local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_2
    const-string v0, "PHONE_NUMBER"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private localblockBlackNameList(Lcom/android/internal/telephony/DriverCall;Landroid/os/Message;)V
    .locals 6
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, "vExitBlackList":Z
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v2, v3, :cond_1

    .line 153
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    .line 155
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscription()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->isJudgeBlackListPhone(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 160
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 161
    iget v0, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 162
    .local v0, "idx":I
    if-lez v0, :cond_2

    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    .line 163
    const-string v2, "oppo block the incoming and hangup it!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 174
    .end local v0    # "idx":I
    :cond_2
    :goto_0
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 175
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    .line 176
    return-void

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 169
    const-string v2, "oppo accept the incoming call!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 170
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private oppohandlePollCalls(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 183
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_2

    .line 184
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .line 193
    .local v8, "polledCalls":Ljava/util/List;
    const/4 v7, 0x0

    .line 195
    .local v7, "newRinging":Lcom/android/internal/telephony/DriverCall;
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v2, 0x0

    .local v2, "curDC":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "dcSize":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v9, v9

    if-ge v5, v9, :cond_a

    .line 196
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v1, v9, v5

    .line 197
    .local v1, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v3, 0x0

    .line 199
    .local v3, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v2, v4, :cond_0

    .line 200
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v3, Lcom/android/internal/telephony/DriverCall;

    .line 201
    .restart local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    iget v9, v3, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v10, v5, 0x1

    if-ne v9, v10, :cond_5

    .line 202
    add-int/lit8 v2, v2, 0x1

    .line 210
    :cond_0
    :goto_1
    if-nez v1, :cond_8

    if-eqz v3, :cond_8

    .line 211
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 195
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2    # "curDC":I
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v4    # "dcSize":I
    .end local v5    # "i":I
    .end local v7    # "newRinging":Lcom/android/internal/telephony/DriverCall;
    .end local v8    # "polledCalls":Ljava/util/List;
    :cond_2
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 240
    :cond_3
    :goto_3
    return-void

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 204
    .restart local v1    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v2    # "curDC":I
    .restart local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v4    # "dcSize":I
    .restart local v5    # "i":I
    .restart local v7    # "newRinging":Lcom/android/internal/telephony/DriverCall;
    .restart local v8    # "polledCalls":Ljava/util/List;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 214
    :cond_6
    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v9, v10, :cond_7

    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v9, v10, :cond_1

    .line 215
    :cond_7
    move-object v7, v3

    goto :goto_2

    .line 218
    :cond_8
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 220
    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v9, v10, :cond_9

    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v9, v10, :cond_1

    .line 221
    :cond_9
    move-object v7, v3

    goto :goto_2

    .line 226
    .end local v1    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_a
    if-eqz v7, :cond_c

    .line 227
    const/4 v6, 0x0

    .line 228
    .local v6, "isBlockedNumber":Z
    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v9, :cond_b

    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 229
    const/4 v6, 0x1

    .line 231
    :cond_b
    if-nez v6, :cond_3

    .line 232
    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 234
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->localblockBlackNameList(Lcom/android/internal/telephony/DriverCall;Landroid/os/Message;)V

    goto :goto_3

    .line 239
    .end local v6    # "isBlockedNumber":Z
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v1, :cond_1

    .line 78
    const-string v1, "GsmCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] while being destroyed. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 101
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 84
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 86
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v1, :cond_0

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mNeedsPoll:Z

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->oppohandlePollCalls(Landroid/os/Message;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
