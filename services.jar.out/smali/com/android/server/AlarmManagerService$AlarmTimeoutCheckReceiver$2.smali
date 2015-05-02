.class Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0

    .prologue
    .line 2250
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2252
    const-string v3, "AlarmWakeupCheck"

    const-string v4, "mWakeupNumRecord run"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2254
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2255
    .local v0, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2256
    .local v1, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v3, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    iput v3, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeupWhenScreenoff:I

    .line 2257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->wakeupCountStartTime:J

    .line 2258
    const-string v5, "AlarmWakeupCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": bs.numWakeupWhenScreenoff="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeupWhenScreenoff:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2260
    .end local v0    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v1    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2261
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    # getter for: Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->access$2900(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2262
    return-void
.end method
