.class public final Lcom/android/internal/app/ProcessStats$ProcessState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessState"
.end annotation


# instance fields
.field mActive:Z

.field mAvgCachedKillPss:J

.field public final mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

.field mCurState:I

.field mDead:Z

.field mLastPssState:I

.field mLastPssTime:J

.field mMaxCachedKillPss:J

.field mMinCachedKillPss:J

.field mMultiPackage:Z

.field mNumActiveServices:I

.field mNumCachedKill:I

.field mNumExcessiveCpu:I

.field mNumExcessiveWake:I

.field mNumStartedServices:I

.field public final mPackage:Ljava/lang/String;

.field mPssTable:[I

.field mPssTableSize:I

.field mStartTime:J

.field public mTmpTotalTime:J

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2
    .param p1, "commonProcess"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 2418
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-direct {p0, v0, p4}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 2375
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2378
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2419
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2420
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 2421
    iput p3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 2422
    iget v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2423
    iput-wide p5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 2424
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "processStats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 2405
    invoke-direct {p0, p1, p4}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 2375
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2378
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2406
    iput-object p0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2407
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 2408
    iput p3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 2409
    return-void
.end method

.method private addCachedKill(IJJJ)V
    .locals 4
    .param p1, "num"    # I
    .param p2, "minPss"    # J
    .param p4, "avgPss"    # J
    .param p6, "maxPss"    # J

    .prologue
    .line 2793
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    .line 2794
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2795
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2796
    iput-wide p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 2797
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 2809
    :goto_0
    return-void

    .line 2799
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 2800
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2802
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    .line 2803
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 2805
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    add-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 2807
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    goto :goto_0
.end method

.method private ensureNotDead()V
    .locals 4

    .prologue
    .line 2495
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-nez v0, :cond_0

    .line 2502
    :goto_0
    return-void

    .line 2499
    :cond_0
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessState dead: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " common.name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;I)",
            "Lcom/android/internal/app/ProcessStats$ProcessState;"
        }
    .end annotation

    .prologue
    .line 2838
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2839
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v1, :cond_0

    .line 2844
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pulling dead proc: name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " common.name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    iget-object v5, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    .line 2848
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_3

    .line 2852
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v2, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2853
    .local v0, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    if-nez v0, :cond_1

    .line 2854
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for multi-proc "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2858
    :cond_1
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2859
    .restart local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v1, :cond_2

    .line 2860
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Didn\'t create per-package process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2863
    :cond_2
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2865
    .end local v0    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_3
    return-object v1
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 18
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    .line 2457
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 2458
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move/from16 v0, v17

    if-ge v0, v1, :cond_0

    .line 2459
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v16, v1, v17

    .line 2460
    .local v16, "ent":I
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, v16, v1

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v2, v1, v3

    .line 2461
    .local v2, "state":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v3

    long-to-int v3, v3

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v6, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v0, v6}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v8, 0x3

    move/from16 v0, v16

    invoke-virtual {v1, v0, v8}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v8

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v10, 0x4

    move/from16 v0, v16

    invoke-virtual {v1, v0, v10}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v12, 0x5

    move/from16 v0, v16

    invoke-virtual {v1, v0, v12}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v12

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v14, 0x6

    move/from16 v0, v16

    invoke-virtual {v1, v0, v14}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v14

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v15}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 2458
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 2469
    .end local v2    # "state":I
    .end local v16    # "ent":I
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2470
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2471
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_1

    .line 2472
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 2475
    :cond_1
    return-void
.end method

.method addPss(IIJJJJJJ)V
    .locals 14
    .param p1, "state"    # I
    .param p2, "inCount"    # I
    .param p3, "minPss"    # J
    .param p5, "avgPss"    # J
    .param p7, "maxPss"    # J
    .param p9, "minUss"    # J
    .param p11, "avgUss"    # J
    .param p13, "maxUss"    # J

    .prologue
    .line 2718
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v7, v8, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v4

    .line 2720
    .local v4, "idx":I
    if-ltz v4, :cond_1

    .line 2721
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v6, v7, v4

    .line 2730
    .local v6, "off":I
    :goto_0
    sget v7, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v7, v6, v7

    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 2766
    :cond_0
    :goto_1
    return-void

    .line 2723
    .end local v6    # "off":I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iput-object v8, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2724
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    iput v8, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2725
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    xor-int/lit8 v8, v4, -0x1

    const/4 v9, 0x7

    invoke-virtual {v7, v8, p1, v9}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v6

    .line 2726
    .restart local v6    # "off":I
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2727
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v7, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    goto :goto_0

    .line 2734
    :cond_2
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v8, v6, v8

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 2735
    .local v5, "longs":[J
    sget v7, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v7, v6, v7

    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v4, v7, v8

    .line 2736
    add-int/lit8 v7, v4, 0x0

    aget-wide v2, v5, v7

    .line 2737
    .local v2, "count":J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_3

    .line 2738
    add-int/lit8 v7, v4, 0x0

    move/from16 v0, p2

    int-to-long v8, v0

    aput-wide v8, v5, v7

    .line 2739
    add-int/lit8 v7, v4, 0x1

    aput-wide p3, v5, v7

    .line 2740
    add-int/lit8 v7, v4, 0x2

    aput-wide p5, v5, v7

    .line 2741
    add-int/lit8 v7, v4, 0x3

    aput-wide p7, v5, v7

    .line 2742
    add-int/lit8 v7, v4, 0x4

    aput-wide p9, v5, v7

    .line 2743
    add-int/lit8 v7, v4, 0x5

    aput-wide p11, v5, v7

    .line 2744
    add-int/lit8 v7, v4, 0x6

    aput-wide p13, v5, v7

    goto :goto_1

    .line 2746
    :cond_3
    add-int/lit8 v7, v4, 0x0

    move/from16 v0, p2

    int-to-long v8, v0

    add-long/2addr v8, v2

    aput-wide v8, v5, v7

    .line 2747
    add-int/lit8 v7, v4, 0x1

    aget-wide v7, v5, v7

    cmp-long v7, v7, p3

    if-lez v7, :cond_4

    .line 2748
    add-int/lit8 v7, v4, 0x1

    aput-wide p3, v5, v7

    .line 2750
    :cond_4
    add-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v4, 0x2

    aget-wide v8, v5, v8

    long-to-double v8, v8

    long-to-double v10, v2

    mul-double/2addr v8, v10

    move-wide/from16 v0, p5

    long-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move/from16 v0, p2

    int-to-long v10, v0

    add-long/2addr v10, v2

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-long v8, v8

    aput-wide v8, v5, v7

    .line 2753
    add-int/lit8 v7, v4, 0x3

    aget-wide v7, v5, v7

    cmp-long v7, v7, p7

    if-gez v7, :cond_5

    .line 2754
    add-int/lit8 v7, v4, 0x3

    aput-wide p7, v5, v7

    .line 2756
    :cond_5
    add-int/lit8 v7, v4, 0x4

    aget-wide v7, v5, v7

    cmp-long v7, v7, p9

    if-lez v7, :cond_6

    .line 2757
    add-int/lit8 v7, v4, 0x4

    aput-wide p9, v5, v7

    .line 2759
    :cond_6
    add-int/lit8 v7, v4, 0x5

    add-int/lit8 v8, v4, 0x5

    aget-wide v8, v5, v8

    long-to-double v8, v8

    long-to-double v10, v2

    mul-double/2addr v8, v10

    move-wide/from16 v0, p11

    long-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move/from16 v0, p2

    int-to-long v10, v0

    add-long/2addr v10, v2

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-long v8, v8

    aput-wide v8, v5, v7

    .line 2762
    add-int/lit8 v7, v4, 0x6

    aget-wide v7, v5, v7

    cmp-long v7, v7, p13

    if-gez v7, :cond_0

    .line 2763
    add-int/lit8 v7, v4, 0x6

    aput-wide p13, v5, v7

    goto/16 :goto_1
.end method

.method public addPss(JJZLandroid/util/ArrayMap;)V
    .locals 19
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "always"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2689
    .local p6, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2690
    if-nez p5, :cond_1

    .line 2691
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v3, v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    const-wide/16 v7, 0x7530

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 2714
    :cond_0
    return-void

    .line 2696
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2697
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    .line 2698
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 2703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v3, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v3, :cond_0

    .line 2707
    if-eqz p6, :cond_0

    .line 2708
    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    .local v18, "ip":I
    :goto_0
    if-ltz v18, :cond_0

    .line 2709
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 2708
    add-int/lit8 v18, v18, -0x1

    goto :goto_0
.end method

.method clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "now"    # J

    .prologue
    .line 2427
    new-instance v0, Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .line 2428
    .local v0, "pnew":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->copyDurationsTo(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 2429
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    if-eqz v1, :cond_2

    .line 2430
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2431
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2432
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v7, v1, :cond_1

    .line 2433
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v10, v1, v7

    .line 2434
    .local v10, "origEnt":I
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, v10, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v11, v1, v2

    .line 2435
    .local v11, "type":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x7

    invoke-virtual {v1, v7, v11, v2}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v9

    .line 2436
    .local v9, "newOff":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    or-int v2, v9, v11

    aput v2, v1, v7

    .line 2437
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    const/4 v1, 0x7

    if-ge v8, v1, :cond_0

    .line 2438
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2, v10, v8}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    invoke-virtual {v1, v9, v8, v2, v3}, Lcom/android/internal/app/ProcessStats;->setLong(IIJ)V

    .line 2437
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2432
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2441
    .end local v8    # "j":I
    .end local v9    # "newOff":I
    .end local v10    # "origEnt":I
    .end local v11    # "type":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2442
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 2444
    .end local v7    # "i":I
    :cond_2
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2445
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2446
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2447
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2448
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 2449
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 2450
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    iput-boolean v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 2451
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 2452
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 2453
    return-object v0
.end method

.method commitStateTime(J)V
    .locals 4
    .param p1, "now"    # J

    .prologue
    .line 2607
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2608
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v0, p1, v2

    .line 2609
    .local v0, "dur":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2610
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->addDuration(IJ)V

    .line 2613
    .end local v0    # "dur":J
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 2614
    return-void
.end method

.method decActiveServices(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 2639
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 2640
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_1

    .line 2642
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc active services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 2647
    :cond_1
    return-void
.end method

.method decStartedServices(IJLjava/lang/String;)V
    .locals 3
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 2673
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 2675
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 2676
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    rem-int/lit8 v0, v0, 0xe

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 2677
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 2685
    :cond_1
    :goto_0
    return-void

    .line 2678
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-gez v0, :cond_1

    .line 2680
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc started services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    goto :goto_0
.end method

.method getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    .prologue
    .line 2869
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;->getDuration(IJ)J

    move-result-wide v0

    .line 2870
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v2, p1, :cond_0

    .line 2871
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 2873
    :cond_0
    return-wide v0
.end method

.method getPssAverage(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2887
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2888
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssMaximum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2892
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2893
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssMinimum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2882
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2883
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssSampleCount(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2877
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2878
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssUssAverage(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2902
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2903
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssUssMaximum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2907
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2908
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method getPssUssMinimum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2897
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2898
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method incActiveServices(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 2624
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 2626
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 2627
    return-void
.end method

.method incStartedServices(IJLjava/lang/String;)V
    .locals 2
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 2659
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 2660
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2661
    mul-int/lit8 v0, p1, 0xe

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 2663
    :cond_1
    return-void
.end method

.method public isInUse()Z
    .locals 2

    .prologue
    .line 2561
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeActive()V
    .locals 1

    .prologue
    .line 2552
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 2554
    return-void
.end method

.method makeDead()V
    .locals 1

    .prologue
    .line 2491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    .line 2492
    return-void
.end method

.method public makeInactive()V
    .locals 1

    .prologue
    .line 2557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 2558
    return-void
.end method

.method pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2824
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    .line 2828
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$PackageState;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2829
    .local v0, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v0, :cond_1

    .line 2830
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Didn\'t create per-package process"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    move-object v0, p0

    .line 2834
    :cond_1
    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "fully"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 2525
    .local v0, "multiPackage":Z
    :goto_0
    if-eqz p2, :cond_0

    .line 2526
    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 2529
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->readDurationsFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2548
    :cond_1
    :goto_1
    return v1

    .end local v0    # "multiPackage":Z
    :cond_2
    move v0, v1

    .line 2524
    goto :goto_0

    .line 2533
    .restart local v0    # "multiPackage":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    const-string v5, "pss"

    # invokes: Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    invoke-static {v3, p1, v4, v5}, Lcom/android/internal/app/ProcessStats;->access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2534
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    sget-object v4, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    if-eq v3, v4, :cond_1

    .line 2537
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    array-length v1, v1

    :cond_4
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 2538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2541
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_5

    .line 2542
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2543
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 2544
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    :goto_2
    move v1, v2

    .line 2548
    goto :goto_1

    .line 2546
    :cond_5
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    goto :goto_2
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 9
    .param p2, "pss"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v1, 0x1

    .line 2812
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2813
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 2814
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_1

    .line 2821
    :cond_0
    return-void

    .line 2818
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "ip":I
    :goto_0
    if-ltz v8, :cond_0

    .line 2819
    invoke-direct {p0, p1, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 2818
    add-int/lit8 v8, v8, -0x1

    goto :goto_0
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2781
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2782
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2783
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_1

    .line 2790
    :cond_0
    return-void

    .line 2787
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2788
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2787
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public reportExcessiveWake(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2769
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2770
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2771
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_1

    .line 2778
    :cond_0
    return-void

    .line 2775
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2776
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2775
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method resetSafely(J)V
    .locals 4
    .param p1, "now"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2478
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetDurationsSafely()V

    .line 2479
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 2480
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2481
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    .line 2482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2483
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 2484
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2485
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2486
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2487
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2488
    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2575
    .local p5, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    if-gez p1, :cond_2

    .line 2576
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-lez v1, :cond_1

    mul-int/lit8 v1, p2, 0xe

    add-int/lit8 p1, v1, 0x7

    .line 2583
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 2586
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_3

    .line 2595
    :cond_0
    return-void

    .line 2576
    :cond_1
    const/4 p1, -0x1

    goto :goto_0

    .line 2579
    :cond_2
    sget-object v1, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    aget v1, v1, p1

    mul-int/lit8 v2, p2, 0xe

    add-int p1, v1, v2

    goto :goto_0

    .line 2590
    :cond_3
    if-eqz p5, :cond_0

    .line 2591
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_1
    if-ltz v0, :cond_0

    .line 2592
    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 2591
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method setState(IJ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "now"    # J

    .prologue
    .line 2598
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 2599
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-eq v0, p1, :cond_0

    .line 2601
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 2602
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2604
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2912
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2913
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, p0, :cond_1

    const-string v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .prologue
    .line 2505
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2506
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeDurationsToParcel(Landroid/os/Parcel;)V

    .line 2507
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v0, v1, :cond_1

    .line 2511
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2505
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2513
    .restart local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2514
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2515
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2516
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_2

    .line 2517
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2518
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2519
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2521
    :cond_2
    return-void
.end method
