.class Lcom/android/server/net/NetworkStatsService$9;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1081
    sget-boolean v4, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v4, :cond_0

    const-string v4, "NetworkStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataConnectionStateChanged, state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", networkType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I
    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$1900(Lcom/android/server/net/NetworkStatsService;)I

    move-result v4

    if-eq p1, v4, :cond_4

    move v1, v2

    .line 1085
    .local v1, "stateChanged":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I
    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$2000(Lcom/android/server/net/NetworkStatsService;)I

    move-result v4

    if-eq p2, v4, :cond_5

    move v0, v2

    .line 1087
    .local v0, "networkTypeChanged":Z
    :goto_1
    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v2, :cond_1

    const-string v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataConnectionStateChanged, stateChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", networkTypeChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 1096
    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v2, :cond_2

    const-string v2, "NetworkStats"

    const-string v3, "triggering delayed updateIfaces()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_2
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1800(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$1800(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1101
    :cond_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # setter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I
    invoke-static {v2, p1}, Lcom/android/server/net/NetworkStatsService;->access$1902(Lcom/android/server/net/NetworkStatsService;I)I

    .line 1102
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # setter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I
    invoke-static {v2, p2}, Lcom/android/server/net/NetworkStatsService;->access$2002(Lcom/android/server/net/NetworkStatsService;I)I

    .line 1103
    return-void

    .end local v0    # "networkTypeChanged":Z
    .end local v1    # "stateChanged":Z
    :cond_4
    move v1, v3

    .line 1084
    goto :goto_0

    .restart local v1    # "stateChanged":Z
    :cond_5
    move v0, v3

    .line 1085
    goto :goto_1
.end method
