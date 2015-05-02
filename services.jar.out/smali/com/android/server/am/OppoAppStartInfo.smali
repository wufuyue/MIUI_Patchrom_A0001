.class public Lcom/android/server/am/OppoAppStartInfo;
.super Ljava/lang/Object;
.source "OppoAppStartInfo.java"


# instance fields
.field mCurStartTime:J

.field mFirstStartTime:J

.field mIsThird:Z

.field mPkgName:Ljava/lang/String;

.field mProcessName:Ljava/lang/String;

.field mStartCount:I

.field mStartTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartCount:I

    .line 33
    iput-wide v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mFirstStartTime:J

    .line 36
    iput-wide v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mCurStartTime:J

    .line 39
    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mIsThird:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mPkgName:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mProcessName:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method static builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/am/OppoAppStartInfo;
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "startType"    # Ljava/lang/String;
    .param p3, "isThird"    # Z

    .prologue
    .line 54
    new-instance v0, Lcom/android/server/am/OppoAppStartInfo;

    invoke-direct {v0}, Lcom/android/server/am/OppoAppStartInfo;-><init>()V

    .line 55
    .local v0, "appStartInfo":Lcom/android/server/am/OppoAppStartInfo;
    invoke-virtual {v0, p0}, Lcom/android/server/am/OppoAppStartInfo;->setProcessName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p1}, Lcom/android/server/am/OppoAppStartInfo;->setPkgName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p3}, Lcom/android/server/am/OppoAppStartInfo;->setIsThird(Z)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 59
    .local v1, "time":J
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OppoAppStartInfo;->setFirstStartTime(J)V

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OppoAppStartInfo;->setCurStartTime(J)V

    .line 61
    invoke-virtual {v0, p2}, Lcom/android/server/am/OppoAppStartInfo;->increaseStartCount(Ljava/lang/String;)V

    .line 63
    return-object v0
.end method


# virtual methods
.method public cleanStartCount()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartCount:I

    .line 123
    return-void
.end method

.method public cleanup()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartCount:I

    .line 127
    iput-wide v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mFirstStartTime:J

    .line 128
    iput-wide v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mCurStartTime:J

    .line 129
    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mIsThird:Z

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mPkgName:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mProcessName:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    return-void
.end method

.method public dumpInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "abnormalType"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoAppStartInfo;->infoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public getCurStartTime()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mCurStartTime:J

    return-wide v0
.end method

.method public getFirstStartTime()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mFirstStartTime:J

    return-wide v0
.end method

.method public getIsThird()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mIsThird:Z

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartCount()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartCount:I

    return v0
.end method

.method public increaseStartCount(Ljava/lang/String;)V
    .locals 3
    .param p1, "startType"    # Ljava/lang/String;

    .prologue
    .line 111
    iget v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartCount:I

    .line 112
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v0    # "count":I
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public infoToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "abnormalType"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xa

    .line 140
    const-string v3, ""

    .line 142
    .local v3, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "[ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/OppoAppStartInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/OppoAppStartInfo;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/OppoAppStartInfo;->getStartCount()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v4, p0, Lcom/android/server/am/OppoAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 154
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 162
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    return-object v3
.end method

.method public setCurStartTime(J)V
    .locals 0
    .param p1, "curStartTime"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/server/am/OppoAppStartInfo;->mCurStartTime:J

    .line 96
    return-void
.end method

.method public setFirstStartTime(J)V
    .locals 0
    .param p1, "firstStartTime"    # J

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/server/am/OppoAppStartInfo;->mFirstStartTime:J

    .line 88
    return-void
.end method

.method public setIsThird(Z)V
    .locals 0
    .param p1, "isThird"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/am/OppoAppStartInfo;->mIsThird:Z

    .line 104
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/am/OppoAppStartInfo;->mPkgName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/am/OppoAppStartInfo;->mProcessName:Ljava/lang/String;

    .line 72
    return-void
.end method
