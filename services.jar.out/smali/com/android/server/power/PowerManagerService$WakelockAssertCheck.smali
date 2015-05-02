.class Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakelockAssertCheck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String; = "android.intent.action.OPPO_GUARD_ELF_MONITOR"

.field private static final ATAG:Ljava/lang/String; = "AssertLock"

.field private static final A_ASSERT:J = 0xafc80L

.field private static final MSG_WAKELOCK_REPORT:I = 0x2

.field private static final MSG_WAKELOCK_TIMEOUT_CHECK:I = 0x1


# instance fields
.field private intervalScreenoff:J

.field private mAssertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

.field private mHandlerThreadCheck:Landroid/os/HandlerThread;

.field private mWarningList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field private timeStampScreenoff:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 2

    .prologue
    .line 3333
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAssertList:Ljava/util/ArrayList;

    .line 3327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWarningList:Ljava/util/ArrayList;

    .line 3334
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WakelockAssert"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerThreadCheck:Landroid/os/HandlerThread;

    .line 3335
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerThreadCheck:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3336
    new-instance v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerThreadCheck:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;-><init>(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    .line 3337
    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 3316
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->assertCheck()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 3316
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->reportAssertList()V

    return-void
.end method

.method private addAssertList(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "hold"    # J

    .prologue
    .line 3385
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getAssertWakelock(I)Ljava/util/HashMap;

    move-result-object v2

    .line 3386
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 3387
    const-string v3, "Hold"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3388
    .local v0, "holdBefore":J
    cmp-long v3, p4, v0

    if-lez v3, :cond_0

    .line 3389
    const-string v3, "Hold"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3400
    .end local v0    # "holdBefore":J
    :cond_0
    :goto_0
    return-void

    .line 3392
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3393
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3394
    const-string v3, "PkgName"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3395
    const-string v3, "Tag"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3396
    const-string v3, "Hold"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3397
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAssertList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addWarningListLocked(Lcom/android/server/power/PowerManagerService$WakeLock;J)V
    .locals 8
    .param p1, "wl"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "now"    # J

    .prologue
    .line 3444
    iget-wide v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAssertTime:J

    sub-long v0, p2, v6

    .line 3445
    .local v0, "hold":J
    const-wide/32 v6, 0xafc80

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    .line 3468
    :cond_0
    :goto_0
    return-void

    .line 3448
    :cond_1
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v6, :cond_2

    .line 3449
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v6}, Landroid/os/WorkSource;->size()I

    move-result v4

    .line 3450
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 3451
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v6, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .line 3452
    .local v5, "uid":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3453
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "Uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3454
    const-string v6, "Tag"

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3455
    const-string v6, "Hold"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3456
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWarningList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3450
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3460
    .end local v2    # "k":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "size":I
    .end local v5    # "uid":I
    :cond_2
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 3461
    .restart local v5    # "uid":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3462
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "Uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3463
    const-string v6, "Tag"

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3464
    const-string v6, "Hold"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3465
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWarningList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private assertCheck()V
    .locals 20

    .prologue
    .line 3502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 3504
    .local v13, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWarningList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 3506
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 3507
    .local v8, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_1

    .line 3508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3509
    .local v15, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v2, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    .line 3510
    const-string v2, "AssertLock"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Uncheck "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " hold walk "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mAssertTime:J

    move-wide/from16 v18, v0

    sub-long v18, v13, v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ms."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3514
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13, v14}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->addWarningListLocked(Lcom/android/server/power/PowerManagerService$WakeLock;J)V

    goto :goto_1

    .line 3516
    .end local v8    # "N":I
    .end local v10    # "i":I
    .end local v15    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v8    # "N":I
    .restart local v10    # "i":I
    :cond_1
    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWarningList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3519
    .local v11, "len":I
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_2

    .line 3520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWarningList:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 3521
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Uid"

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3522
    .local v3, "uid":I
    const-string v2, "Tag"

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3523
    .local v5, "tag":Ljava/lang/String;
    const-string v2, "Hold"

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3524
    .local v6, "hold":J
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getPkgNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 3525
    .local v4, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3527
    .local v9, "appLable":Ljava/lang/String;
    const-string v2, "AssertLock"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "pkgName("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "), applabel("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "), has hold wakelock ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ms, when screen off!!!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    .line 3529
    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->addAssertList(ILjava/lang/String;Ljava/lang/String;J)V

    .line 3519
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 3531
    .end local v3    # "uid":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "hold":J
    .end local v9    # "appLable":Ljava/lang/String;
    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3482
    const-string v4, ""

    .line 3484
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3485
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 3487
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3491
    :goto_0
    if-eqz v0, :cond_1

    .line 3492
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3493
    .local v2, "label":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3498
    .end local v2    # "label":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 3488
    :catch_0
    move-exception v1

    .line 3489
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3495
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$4200()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error happened when  getApplicationInfo from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAssertWakelock(I)Ljava/util/HashMap;
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3372
    const/4 v2, 0x0

    .line 3373
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAssertList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3374
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3375
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAssertList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v2, Ljava/util/HashMap;

    .line 3376
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Uid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_0

    move-object v3, v2

    .line 3381
    :goto_1
    return-object v3

    .line 3374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3381
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getPkgNameForUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 3471
    const/4 v1, 0x0

    .line 3472
    .local v1, "pkgName":Ljava/lang/String;
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3474
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3478
    :goto_0
    return-object v1

    .line 3475
    :catch_0
    move-exception v0

    .line 3476
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AssertLock"

    const-string v4, "workSource uid is exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getReportString(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "hold"    # J

    .prologue
    .line 3403
    const-string v1, ""

    .line 3404
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3405
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "[ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->intervalScreenoff:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3415
    return-object v1
.end method

.method private reportAssertList()V
    .locals 14

    .prologue
    .line 3419
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAssertList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3420
    .local v4, "len":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3422
    .local v10, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 3423
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAssertList:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 3424
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "Uid"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3425
    .local v9, "uid":I
    const-string v11, "PkgName"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3426
    .local v6, "pkgName":Ljava/lang/String;
    const-string v11, "Tag"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3427
    .local v8, "tag":Ljava/lang/String;
    const-string v11, "Hold"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3429
    .local v0, "hold":J
    invoke-direct {p0, v6, v8, v0, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getReportString(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    .line 3430
    .local v7, "reportString":Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3431
    const-string v11, "AssertLock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reportAssertList: reportString="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3434
    .end local v0    # "hold":J
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "reportString":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "uid":I
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 3435
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3436
    .local v3, "intent":Landroid/content/Intent;
    const-string v11, "data"

    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3437
    const-string v11, "type"

    const-string v12, "wakelock"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3438
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3441
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public assertOnScreenOff()V
    .locals 4

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAssertList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3367
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xafc80

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->timeStampScreenoff:J

    .line 3369
    return-void
.end method

.method public assertOnScreenOn()V
    .locals 4

    .prologue
    .line 3359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->timeStampScreenoff:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->intervalScreenoff:J

    .line 3360
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->removeMessages(I)V

    .line 3361
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3363
    return-void
.end method
