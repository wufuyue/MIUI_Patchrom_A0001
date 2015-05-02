.class public Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;
.super Ljava/lang/Object;
.source "NetworkStatsRecorderWithProcInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;,
        Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;
    }
.end annotation


# static fields
.field private static final DUMP_BEFORE_DELETE:Z = true

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsRecorderWithProcInfo"

.field private static final TAG_NETSTATS_DUMP:Ljava/lang/String; = "netstats_dump"


# instance fields
.field private mActiveIfacesHasInit:Z

.field private final mBucketDuration:J

.field private mComplete:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCookie:Ljava/lang/String;

.field private final mDropBox:Landroid/os/DropBoxManager;

.field private mLastSnapshot:Landroid/net/NetworkStats;

.field private final mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlyTags:Z

.field private final mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

.field private final mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;

.field private mPersistThresholdBytes:J

.field private final mRotator:Lcom/android/internal/util/FileRotator;

.field private final mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "rotator"    # Lcom/android/internal/util/FileRotator;
    .param p3, "dropBox"    # Landroid/os/DropBoxManager;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "bucketDuration"    # J
    .param p7, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FileRotator;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPersistThresholdBytes:J

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mActiveIfacesHasInit:Z

    .line 88
    const-string v0, "missing FileRotator"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FileRotator;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    .line 89
    const-string v0, "missing NonMonotonicObserver"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$NonMonotonicObserver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 90
    const-string v0, "missing DropBoxManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mDropBox:Landroid/os/DropBoxManager;

    .line 91
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mCookie:Ljava/lang/String;

    .line 93
    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mBucketDuration:J

    .line 94
    iput-boolean p7, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mOnlyTags:Z

    .line 96
    new-instance v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 97
    new-instance v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 99
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;

    .line 100
    return-void
.end method

.method private getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->getPrefix()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recoverFromWtf()V
    .locals 4

    .prologue
    .line 507
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 509
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 518
    const-string v2, "NetworkStatsRecorderWithProcInfo"

    const-string v3, "recoverFromWtf."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 522
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 514
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    .prologue
    .line 491
    const-string v0, "Pending bytes: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 492
    if-eqz p2, :cond_0

    .line 493
    const-string v0, "Complete history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 499
    :goto_0
    return-void

    .line 496
    :cond_0
    const-string v0, "History since boot:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0
.end method

.method public forcePersistLocked(J)V
    .locals 3
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 335
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 336
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->recoverFromWtf()V

    goto :goto_0
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .locals 8

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-object v6, v0

    .line 135
    .local v6, "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :goto_0
    if-nez v6, :cond_4

    .line 136
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "NetworkStatsRecorderWithProcInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrLoadCompleteLocked() reading from disk for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mCookie:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mBucketDuration:J

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;-><init>(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v6    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .local v1, "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    .line 142
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "-------------- getOrLoadCompleteLocked, after readMatching pid complete-01 is bellow: ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v0, "readMatching-pid-complete-01"

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 145
    const-string v0, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "-------------- getOrLoadCompleteLocked, after readMatching pid complete-01 end ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordCollection(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;)V

    .line 148
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_2

    .line 149
    const-string v0, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "-------------- getOrLoadCompleteLocked, after recordCollection pid complete-01 is bellow: ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "recordCollection-pid-complete-01"

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 151
    const-string v0, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "-------------- getOrLoadCompleteLocked, after recordCollection pid complete-01 end ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    .end local v1    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :goto_1
    return-object v1

    .line 134
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 154
    .restart local v6    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :catch_0
    move-exception v7

    move-object v1, v6

    .line 155
    .end local v6    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .local v7, "e":Ljava/io/IOException;
    :goto_2
    const-string v0, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "problem completely reading network stats"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->recoverFromWtf()V

    goto :goto_1

    .line 159
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :cond_4
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_5

    .line 160
    const-string v0, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "getOrLoadCompleteLocked() return complete directly."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v6

    .local v1, "complete":Ljava/lang/Object;
    goto :goto_1

    .line 154
    .end local v6    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .local v1, "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public importLegacyNetworkLocked(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    return-void
.end method

.method public importLegacyUidLocked(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    return-void
.end method

.method public maybePersistLocked(J)V
    .locals 4
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getTotalBytes()J

    move-result-wide v0

    .line 320
    .local v0, "pendingBytes":J
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPersistThresholdBytes:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->forcePersistLocked(J)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    goto :goto_0
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V
    .locals 15
    .param p1, "snapshot"    # Landroid/net/NetworkStats;
    .param p3, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "ifaceIdent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v14

    .line 176
    .local v14, "unknownIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 177
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":snapshot is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_2

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 183
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":snapshot size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    if-nez v1, :cond_4

    .line 191
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 192
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":first snapshot is bootstrap and don\'t record."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " first snapshot is bootstrap, content is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    const-string v3, "first-snapshot"

    invoke-virtual {v1, v3}, Landroid/net/NetworkStats;->logoutData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_3
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":snapshot is empty."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 201
    :cond_4
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_5

    .line 202
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLastSnapshot is bellow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    const-string v3, "pid-lastSnapshot"

    invoke-virtual {v1, v3}, Landroid/net/NetworkStats;->logoutData(Ljava/lang/String;)V

    .line 206
    :cond_5
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-object v11, v1

    .line 207
    .local v11, "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :goto_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mCookie:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v3, v4}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v12

    .line 210
    .local v12, "delta":Landroid/net/NetworkStats;
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_6

    .line 211
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delta is bellow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-delta"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/net/NetworkStats;->logoutData(Ljava/lang/String;)V

    .line 215
    :cond_6
    move-wide/from16 v8, p3

    .line 216
    .local v8, "end":J
    invoke-virtual {v12}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v6, v8, v3

    .line 218
    .local v6, "start":J
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_7

    .line 219
    if-eqz v11, :cond_c

    .line 220
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    const-string v3, "-------------- before recordData, pid complete-01 is bellow: ----------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v1, "pid-complete-01"

    invoke-virtual {v11, v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 222
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    const-string v3, "-------------- before recordData, pid complete-01 end ----------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_3
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    const-string v3, "mPending-01"

    invoke-virtual {v1, v3}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 229
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mSinceBoot is null ? :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    if-nez v1, :cond_d

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_7
    const/4 v10, 0x0

    .line 233
    .local v10, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ge v13, v1, :cond_17

    .line 234
    invoke-virtual {v12, v13, v10}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    .line 235
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_8

    .line 236
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked:process entry["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_8
    iget-object v1, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    .line 239
    .local v2, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v2, :cond_e

    .line 240
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_9

    .line 241
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked:entry["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has unknownIfaces, ignore."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_9
    iget-object v1, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_a
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 206
    .end local v2    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v11    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .end local v12    # "delta":Landroid/net/NetworkStats;
    .end local v13    # "i":I
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 224
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v11    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .restart local v12    # "delta":Landroid/net/NetworkStats;
    :cond_c
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    const-string v3, "-------------- before recordData, pid complete-01 is null ----------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 229
    :cond_d
    const/4 v1, 0x0

    goto :goto_4

    .line 248
    .restart local v2    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .restart local v10    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v13    # "i":I
    :cond_e
    invoke-virtual {v10}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 249
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_a

    .line 250
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked:entry["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is empty, ignore."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 256
    :cond_f
    iget v1, v10, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v1, :cond_15

    const/4 v1, 0x1

    :goto_7
    iget-boolean v3, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mOnlyTags:Z

    if-eq v1, v3, :cond_16

    .line 257
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_10

    .line 258
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordData to mPending-01, entry["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iget v3, v10, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v10, Landroid/net/NetworkStats$Entry;->set:I

    iget v5, v10, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 261
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_11

    .line 262
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordData to mPending-02, entry["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_11
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    if-eqz v1, :cond_13

    .line 267
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_12

    .line 268
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordData to mSinceBoot-01, entry["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_12
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iget v3, v10, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v10, Landroid/net/NetworkStats$Entry;->set:I

    iget v5, v10, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 271
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_13

    .line 272
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordData to mSinceBoot-02, entry["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_13
    if-eqz v11, :cond_a

    .line 278
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_14

    .line 279
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordData to complete-01, entry["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_14
    iget v3, v10, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v10, Landroid/net/NetworkStats$Entry;->set:I

    iget v5, v10, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v1, v11

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 282
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_a

    .line 283
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordData to complete-02, entry["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 256
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 287
    :cond_16
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_a

    .line 288
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordSnapshotLocked:entry["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] tag not suit.entry.tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOnlyTags"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 293
    .end local v2    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    :cond_17
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v1, :cond_18

    .line 294
    if-eqz v11, :cond_19

    .line 295
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    const-string v3, "-------------- after recordData, pid complete-02 is bellow: ----------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v1, "pid-complete-02"

    invoke-virtual {v11, v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 297
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    const-string v3, "-------------- after recordData, pid complete-02 end ----------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_8
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    const-string v3, "mPending-02"

    invoke-virtual {v1, v3}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 305
    :cond_18
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mActiveIfacesHasInit:Z

    if-eqz v1, :cond_0

    .line 306
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    goto/16 :goto_0

    .line 299
    :cond_19
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    const-string v3, "-------------- before recordData, pid complete-02 is null ----------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public removeUidsLocked([I)V
    .locals 6
    .param p1, "uids"    # [I

    .prologue
    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v3, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mBucketDuration:J

    invoke-direct {v3, v4, v5, p1}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;-><init>(J[I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->removeUids([I)V

    .line 359
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->removeUids([I)V

    .line 362
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, p1}, Landroid/net/NetworkStats;->withoutUids([I)Landroid/net/NetworkStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-object v0, v2

    .line 367
    .local v0, "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :goto_1
    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->removeUids([I)V

    .line 370
    :cond_1
    return-void

    .line 352
    .end local v0    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem removing UIDs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->recoverFromWtf()V

    goto :goto_0

    .line 366
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public resetLastSnapshot(Landroid/net/NetworkStats;)V
    .locals 0
    .param p1, "snapshotAfterReset"    # Landroid/net/NetworkStats;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 121
    return-void
.end method

.method public resetLocked()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 114
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V

    .line 115
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V

    .line 116
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 117
    return-void
.end method

.method public setActiveIfacesInitState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mActiveIfacesHasInit:Z

    .line 374
    return-void
.end method

.method public setPersistThreshold(J)V
    .locals 6
    .param p1, "thresholdBytes"    # J

    .prologue
    .line 108
    const-wide/16 v2, 0x400

    const-wide/32 v4, 0x6400000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPersistThresholdBytes:J

    .line 110
    return-void
.end method
