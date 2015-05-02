.class Lcom/android/server/net/NetworkStatsService$1;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPidComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

.field private mPidTagComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    return-void
.end method

.method private getPidComplete()Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mPidComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    if-nez v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 639
    :try_start_0
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkStats"

    const-string v2, "mPidComplete is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mPidRecorder:Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mPidComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 641
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_1
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_2

    .line 644
    const-string v0, "NetworkStats"

    const-string v1, "mPidComplete bellow: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mPidComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    const-string v1, "pid_complete"

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 648
    :cond_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mPidComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    return-object v0

    .line 641
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPidTagComplete()Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mPidTagComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mPidTagRecorder:Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$700(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mPidTagComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 655
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mPidTagComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    return-object v0

    .line 655
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$200(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 566
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    return-object v0

    .line 566
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 575
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    return-object v0

    .line 575
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 619
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 620
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 624
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkStats"

    const-string v1, "close INetworkStatsSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService$1;->mPidComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 626
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService$1;->mPidTagComplete:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 628
    return-void
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .prologue
    .line 610
    if-nez p4, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    goto :goto_0
.end method

.method public getHistoryForUidWithPids(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .prologue
    .line 739
    const-string v0, "NetworkStats"

    const-string v1, "!!!!!!!!!! getHistoryForUidWithPids:not support !!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    .line 595
    .local v6, "stats":Landroid/net/NetworkStats;
    if-eqz p6, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v7

    .line 598
    .local v7, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v6, v7}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 600
    .end local v7    # "tagStats":Landroid/net/NetworkStats;
    :cond_0
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_1

    .line 601
    const-string v0, "NetworkStats"

    const-string v1, "getSummaryForAllUid:stats is bellow:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v0, "summary_uid"

    invoke-virtual {v6, v0}, Landroid/net/NetworkStats;->logoutData(Ljava/lang/String;)V

    .line 604
    :cond_1
    return-object v6
.end method

.method public getSummaryForAllUidWithPids(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getPidComplete()Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v8

    .line 665
    .local v8, "stats":Landroid/net/NetworkStats;
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_0

    .line 666
    const-string v0, "NetworkStats"

    const-string v1, "getSummaryForAllUidWithPids:stats is bellow:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v0, "summary_pid"

    invoke-virtual {v8, v0}, Landroid/net/NetworkStats;->logoutData(Ljava/lang/String;)V

    .line 670
    :cond_0
    if-eqz p6, :cond_1

    .line 671
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getPidTagComplete()Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v9

    .line 672
    .local v9, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v8, v9}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 675
    .end local v9    # "tagStats":Landroid/net/NetworkStats;
    :cond_1
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_2

    .line 694
    :cond_2
    const/4 v6, 0x0

    .line 695
    .local v6, "resStats":Landroid/net/NetworkStats;
    # getter for: Lcom/android/server/net/NetworkStatsService;->SIMPLIFY_PID_STATS_RESULT:Z
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->access$800()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 696
    const/16 v0, 0xa

    const/16 v1, 0xa

    invoke-virtual {v8, v0, v1}, Landroid/net/NetworkStats;->getSpecifiedTopRecords(II)Landroid/net/NetworkStats;

    move-result-object v7

    .line 698
    .local v7, "sortStats":Landroid/net/NetworkStats;
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_3

    .line 699
    const-string v0, "NetworkStats"

    const-string v1, "getSummaryForAllUidWithPids:sortStats is bellow:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v0, "sortStats"

    invoke-virtual {v7, v0}, Landroid/net/NetworkStats;->logoutData(Ljava/lang/String;)V

    .line 702
    :cond_3
    move-object v6, v7

    .line 707
    .end local v7    # "sortStats":Landroid/net/NetworkStats;
    :goto_0
    # getter for: Lcom/android/server/net/NetworkStatsService;->APPEND_SUMMARY_ITEM_FOR_PID_RES:Z
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->access$900()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    .line 709
    new-instance v11, Landroid/net/NetworkStats$Entry;

    invoke-direct {v11}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 710
    .local v11, "totalEntryForUid0":Landroid/net/NetworkStats$Entry;
    new-instance v10, Landroid/net/NetworkStats$Entry;

    invoke-direct {v10}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 711
    .local v10, "totalEntryForOtherUid":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    invoke-virtual {v6, v11, v0, v10}, Landroid/net/NetworkStats;->getSepecialTotal(Landroid/net/NetworkStats$Entry;ILandroid/net/NetworkStats$Entry;)Z

    .line 713
    const-wide/16 v0, -0x1

    iput-wide v0, v11, Landroid/net/NetworkStats$Entry;->pid:J

    .line 714
    const-string v0, "sumaryUid0"

    iput-object v0, v11, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 715
    invoke-virtual {v6, v11}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 717
    const-wide/16 v0, -0x1

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->pid:J

    .line 718
    const-string v0, "sumaryOtherUid"

    iput-object v0, v10, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 719
    invoke-virtual {v6, v10}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 721
    .end local v10    # "totalEntryForOtherUid":Landroid/net/NetworkStats$Entry;
    .end local v11    # "totalEntryForUid0":Landroid/net/NetworkStats$Entry;
    :cond_4
    return-object v6

    .line 704
    :cond_5
    move-object v6, v8

    goto :goto_0
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method
