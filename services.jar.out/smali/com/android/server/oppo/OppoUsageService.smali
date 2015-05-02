.class public final Lcom/android/server/oppo/OppoUsageService;
.super Landroid/os/IOppoUsageService$Stub;
.source "OppoUsageService.java"


# static fields
.field private static final DATA_TYPE_APP_USAGE:I = 0x9

.field private static final DATA_TYPE_BOOT_TIME:I = 0x1

.field private static final DATA_TYPE_COUNT:I = 0x9

.field private static final DATA_TYPE_DIAL_OUT_DURATION:I = 0x6

.field private static final DATA_TYPE_IMEI_NO:I = 0x2

.field private static final DATA_TYPE_INCOMING_DURATION:I = 0x7

.field private static final DATA_TYPE_MAX_CHARGE_CURRENT_CONFIG:I = 0x11

.field private static final DATA_TYPE_MAX_CHARGE_TEMPERATURE_CONFIG:I = 0x13

.field private static final DATA_TYPE_MIN_CHARGE_TEMPERATURE_CONFIG:I = 0x12

.field private static final DATA_TYPE_MOS_CONFIG:I = 0x10

.field private static final DATA_TYPE_MSG_RECEIVE:I = 0x5

.field private static final DATA_TYPE_MSG_SEND:I = 0x4

.field private static final DATA_TYPE_PCBA_NO:I = 0x3

.field private static final DATA_TYPE_PHONE_CALL_RECORD:I = 0x8

.field private static final DEBUG:Z = false

.field private static final MAX_BATCH_COUNT:I = 0xa

.field private static final MSG_GET_IMEI_NO:I = 0x1

.field private static final MSG_GET_PCBA_NO:I = 0x2

.field private static final MSG_SAVE_BOOT_TIME:I = 0x3

.field private static final NORMAL_MSG_DELAY:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "OppoUsageService"

.field private static final mConnectorForPkgNameAndTime:Ljava/lang/String; = "|"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountOfReceivedMsg:I

.field private mCurrentCountOfSendedMsg:I

.field private mCurrentDialOutDuration:I

.field private mCurrentImeiNO:Ljava/lang/String;

.field private mCurrentIncomingDuration:I

.field private mCurrentPcbaNO:Ljava/lang/String;

.field private mGetImeiNORetry:I

.field private mGetPcbaNORetry:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasGotDialOutDuration:Z

.field private mHasGotHistoryCountOfReceivedMsg:Z

.field private mHasGotHistoryCountOfSendedMsg:Z

.field private mHasGotIncomingDuration:Z

.field private mRawPartionInitOk:Z

.field private mRecordStrSlitter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Landroid/os/IOppoUsageService$Stub;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/android/server/oppo/OppoUsageService;->mContext:Landroid/content/Context;

    .line 59
    const-string v0, "#"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mRecordStrSlitter:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/android/server/oppo/OppoUsageService;->mRawPartionInitOk:Z

    .line 64
    iput-object v2, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentImeiNO:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentPcbaNO:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfSendedMsg:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfReceivedMsg:Z

    .line 69
    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfSendedMsg:I

    .line 70
    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfReceivedMsg:I

    .line 72
    iput-boolean v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotDialOutDuration:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotIncomingDuration:Z

    .line 74
    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentDialOutDuration:I

    .line 75
    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentIncomingDuration:I

    .line 77
    iput v3, p0, Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I

    .line 78
    iput v3, p0, Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I

    .line 85
    new-instance v0, Lcom/android/server/oppo/OppoUsageService$1;

    invoke-direct {v0, p0}, Lcom/android/server/oppo/OppoUsageService$1;-><init>(Lcom/android/server/oppo/OppoUsageService;)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHandler:Landroid/os/Handler;

    .line 132
    const-string v0, "OppoUsageService"

    const-string v1, "OppoUsageService:create begin.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object p1, p0, Lcom/android/server/oppo/OppoUsageService;->mContext:Landroid/content/Context;

    .line 135
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->native_initUsageRawPartition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/oppo/OppoUsageService;->mRawPartionInitOk:Z

    .line 136
    const-string v0, "OppoUsageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoUsageService:initRes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/oppo/OppoUsageService;->mRawPartionInitOk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/oppo/OppoUsageService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/oppo/OppoUsageService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I

    return p1
.end method

.method static synthetic access$010(Lcom/android/server/oppo/OppoUsageService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/oppo/OppoUsageService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getImeiNoFromPhone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/oppo/OppoUsageService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentImeiNO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/oppo/OppoUsageService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/oppo/OppoUsageService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/oppo/OppoUsageService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I

    return p1
.end method

.method static synthetic access$410(Lcom/android/server/oppo/OppoUsageService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/oppo/OppoUsageService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getPcbaNoFromPhone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/oppo/OppoUsageService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentPcbaNO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/oppo/OppoUsageService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getCurrentDateStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/oppo/OppoUsageService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoUsageService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoUsageService;->saveCurrentBootTime(Ljava/lang/String;)V

    return-void
.end method

.method private doSaveHistoryCount(IIZLjava/lang/String;)Z
    .locals 7
    .param p1, "dataType"    # I
    .param p2, "saveValue"    # I
    .param p3, "isSingleRecord"    # Z
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "contentStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 458
    :cond_0
    const-string v3, "OppoUsageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSaveHistoryCount:contentStr is empty for type:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 462
    :cond_1
    :goto_0
    return v4

    .line 461
    :cond_2
    if-eqz p3, :cond_3

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/oppo/OppoUsageService;->native_writeStringContentData(ILjava/lang/String;I)I

    move-result v2

    .line 462
    .local v2, "writeRes":I
    if-gtz v2, :cond_1

    move v4, v5

    goto :goto_0

    .end local v2    # "writeRes":I
    :cond_3
    move v3, v5

    .line 461
    goto :goto_1
.end method

.method private getAllHistoryRecordData(I)Ljava/util/List;
    .locals 12
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoUsageService;->native_readDataRecordCount(I)I

    move-result v3

    .line 171
    .local v3, "recordCount":I
    if-gtz v3, :cond_1

    .line 172
    const-string v9, "OppoUsageService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAllHistoryRecordData for dataType["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]:no record!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v4, 0x0

    .line 212
    :cond_0
    :goto_0
    return-object v4

    .line 176
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v4, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    div-int/lit8 v2, v3, 0xa

    .line 178
    .local v2, "readBatchCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 180
    mul-int/lit8 v9, v1, 0xa

    add-int/lit8 v7, v9, 0x1

    .line 181
    .local v7, "startIndex":I
    add-int/lit8 v9, v1, 0x1

    mul-int/lit8 v0, v9, 0xa

    .line 182
    .local v0, "endIndex":I
    invoke-direct {p0, p1, v7, v0}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContent(III)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "tmpRes":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/oppo/OppoUsageService;->mRecordStrSlitter:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v4}, Lcom/android/server/oppo/OppoUsageService;->splitStr(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "endIndex":I
    .end local v7    # "startIndex":I
    .end local v8    # "tmpRes":Ljava/lang/String;
    :cond_2
    mul-int/lit8 v9, v2, 0xa

    sub-int v5, v3, v9

    .line 192
    .local v5, "remainCount":I
    if-lez v5, :cond_0

    .line 194
    mul-int/lit8 v9, v2, 0xa

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, p1, v9, v3}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContent(III)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "remainTmpRes":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/oppo/OppoUsageService;->mRecordStrSlitter:Ljava/lang/String;

    invoke-direct {p0, v6, v9, v4}, Lcom/android/server/oppo/OppoUsageService;->splitStr(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_0
.end method

.method private getChargeInformation(II)I
    .locals 5
    .param p1, "dataType"    # I
    .param p2, "default_value"    # I

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContentForSingleRecord(I)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "chargeInfomation":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/oppo/OppoUsageService;->strValueToIntValue(Ljava/lang/String;I)I

    move-result v1

    .line 707
    .local v1, "value":I
    const-string v2, "OppoUsageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargeInformation, chargeInfomation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return v1
.end method

.method private getCurrentDateStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 162
    .local v0, "timeObj":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 163
    const-string v2, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "timeStr":Ljava/lang/String;
    return-object v1
.end method

.method private getHistoryRecordByIndex(IIILjava/lang/String;)Ljava/util/List;
    .locals 15
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "dataType"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    const/4 v12, 0x1

    move/from16 v0, p1

    if-lt v0, v12, :cond_0

    const/4 v12, 0x1

    move/from16 v0, p2

    if-lt v0, v12, :cond_0

    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    .line 217
    :cond_0
    const-string v12, "OppoUsageService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getHistoryRecordByIndex["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:index param illegal!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v12, "OppoUsageService"

    const-string v13, "index should meat (startIndex >= 1 && endIndex >= 1 && startIndex <= endIndex)"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v6, 0x0

    .line 255
    :cond_1
    :goto_0
    return-object v6

    .line 222
    :cond_2
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->native_readDataRecordCount(I)I

    move-result v5

    .line 223
    .local v5, "recordCount":I
    move/from16 v0, p1

    if-le v0, v5, :cond_3

    .line 224
    const-string v12, "OppoUsageService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getHistoryRecordByIndex["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] failed:startIndex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", larger than recordCount:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v6, 0x0

    goto :goto_0

    .line 228
    :cond_3
    move/from16 v0, p2

    if-le v0, v5, :cond_4

    .line 229
    const-string v12, "OppoUsageService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getHistoryRecordByIndex["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:endIndex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", larger than recordCount:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", adjust to recordCount!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move/from16 p2, v5

    .line 234
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v6, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sub-int v12, p2, p1

    add-int/lit8 v2, v12, 0x1

    .line 236
    .local v2, "attemptReadCount":I
    div-int/lit8 v4, v2, 0xa

    .line 237
    .local v4, "readBatchCount":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 239
    mul-int/lit8 v12, v3, 0xa

    add-int v11, p1, v12

    .line 240
    .local v11, "tmpStartIndex":I
    add-int/lit8 v12, v11, 0xa

    add-int/lit8 v9, v12, -0x1

    .line 241
    .local v9, "tmpEndIndex":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v11, v9}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContent(III)Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "tmpRes":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/oppo/OppoUsageService;->mRecordStrSlitter:Ljava/lang/String;

    invoke-direct {p0, v10, v12, v6}, Lcom/android/server/oppo/OppoUsageService;->splitStr(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 247
    .end local v9    # "tmpEndIndex":I
    .end local v10    # "tmpRes":Ljava/lang/String;
    .end local v11    # "tmpStartIndex":I
    :cond_5
    mul-int/lit8 v12, v4, 0xa

    sub-int v7, v2, v12

    .line 249
    .local v7, "remainCount":I
    if-lez v7, :cond_1

    .line 251
    mul-int/lit8 v12, v4, 0xa

    add-int v12, v12, p1

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-direct {p0, v0, v12, v1}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContent(III)Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "remainTmpRes":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/oppo/OppoUsageService;->mRecordStrSlitter:Ljava/lang/String;

    invoke-direct {p0, v8, v12, v6}, Lcom/android/server/oppo/OppoUsageService;->splitStr(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto/16 :goto_0
.end method

.method private getImeiNoFromPhone()Z
    .locals 7

    .prologue
    .line 569
    const/4 v2, 0x0

    .line 570
    .local v2, "imei":Ljava/lang/String;
    const/4 v3, 0x0

    .line 572
    .local v3, "result":Z
    :try_start_0
    const-string v4, "iphonesubinfo"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 573
    .local v1, "iPhoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_0

    .line 574
    const-string v4, "OppoUsageService"

    const-string v5, "iphonesubinfo service is not ready!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v4, 0x0

    .line 584
    .end local v1    # "iPhoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_0
    return v4

    .line 577
    .restart local v1    # "iPhoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentImeiNO:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    const/4 v3, 0x1

    .end local v1    # "iPhoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_1
    move v4, v3

    .line 584
    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 581
    const-string v4, "OppoUsageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeviceId Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPcbaNoFromPhone()Z
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method private isValidDataType(I)Z
    .locals 2
    .param p1, "dataType"    # I

    .prologue
    const/4 v0, 0x1

    .line 562
    if-lt p1, v0, :cond_0

    const/16 v1, 0x9

    if-le p1, v1, :cond_1

    .line 563
    :cond_0
    const/4 v0, 0x0

    .line 565
    :cond_1
    return v0
.end method

.method private native native_export_config()I
.end method

.method private native native_finalizeRawPartition()V
.end method

.method private native native_import_config_done()I
.end method

.method private native native_import_config_init()I
.end method

.method private native native_import_config_loop(Ljava/lang/String;)I
.end method

.method private native native_initUsageRawPartition()Z
.end method

.method private native native_readDataRecordCount(I)I
.end method

.method private native native_readDataStrContent(III)Ljava/lang/String;
.end method

.method private native native_readDataStrContentForSingleRecord(I)Ljava/lang/String;
.end method

.method private native native_writeStringContentData(ILjava/lang/String;I)I
.end method

.method private saveCurrentBootTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "bootTimeDateStr"    # Ljava/lang/String;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 150
    :cond_0
    const-string v2, "OppoUsageService"

    const-string v3, "saveCurrentBootTime:bootTimeDateStr is null or empty!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    .line 156
    .local v0, "isSingleRecord":I
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0}, Lcom/android/server/oppo/OppoUsageService;->native_writeStringContentData(ILjava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, "saveRes":I
    goto :goto_0
.end method

.method private saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V
    .locals 7
    .param p1, "numberStr"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    .prologue
    .line 588
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 589
    :cond_0
    const-string v5, "OppoUsageService"

    const-string v6, "saveImeiOrPcbaNoIfNew:numberStr is empty!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 595
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataRecordCount(I)I

    move-result v4

    .line 597
    .local v4, "numberRecordCount":I
    const/4 v1, 0x1

    .line 598
    .local v1, "isNewNumber":Z
    if-gtz v4, :cond_4

    .line 600
    const/4 v1, 0x1

    .line 620
    :cond_3
    :goto_1
    if-eqz v1, :cond_1

    .line 621
    const/4 v5, 0x0

    invoke-direct {p0, p2, p1, v5}, Lcom/android/server/oppo/OppoUsageService;->native_writeStringContentData(ILjava/lang/String;I)I

    goto :goto_0

    .line 602
    :cond_4
    const/4 v3, 0x0

    .line 603
    .local v3, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x2

    if-ne v5, p2, :cond_7

    .line 604
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getHistoryImeiNO()Ljava/util/List;

    move-result-object v3

    .line 608
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_8

    .line 609
    :cond_6
    const-string v5, "OppoUsageService"

    const-string v6, "save number string: numberList is empty!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :cond_7
    const/4 v5, 0x3

    if-ne v5, p2, :cond_5

    .line 606
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getHistoryPcbaNO()Ljava/util/List;

    move-result-object v3

    goto :goto_2

    .line 612
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 613
    .local v2, "numberInList":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 614
    const/4 v1, 0x0

    .line 615
    goto :goto_1
.end method

.method private splitStr(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 6
    .param p1, "contentStr"    # Ljava/lang/String;
    .param p2, "strSlitter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 636
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 637
    :cond_0
    const-string v4, "OppoUsageService"

    const-string v5, "splitStr:contentStr is empty!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return v3

    .line 640
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    .line 641
    :cond_2
    const-string v4, "OppoUsageService"

    const-string v5, "splitStr:strSlitter or recordList is empty!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 645
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "tmpResArray":[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    .line 647
    array-length v1, v2

    .line 648
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "arrayIndex":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 649
    aget-object v3, v2, v0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 652
    .end local v0    # "arrayIndex":I
    .end local v1    # "size":I
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private strValueToIntValue(Ljava/lang/String;I)I
    .locals 4
    .param p1, "strValue"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 483
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 497
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 488
    .restart local p2    # "defaultValue":I
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 490
    .local v1, "intValue":I
    if-gez v1, :cond_2

    .line 491
    const-string v2, "OppoUsageService"

    const-string v3, "strValueToIntValue:parse data failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    const/4 v1, 0x0

    :cond_2
    move p2, v1

    .line 494
    goto :goto_0

    .line 495
    .end local v1    # "intValue":I
    :catch_0
    move-exception v0

    .line 497
    .local v0, "exce":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private updateChargeInfomation(II)Z
    .locals 8
    .param p1, "dataType"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "contentStr":Ljava/lang/String;
    const-string v5, "OppoUsageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateChargeInfomation:contentStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 685
    :cond_0
    const-string v3, "OppoUsageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateChargeInfomation:contentStr is empty for type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 689
    :cond_1
    :goto_0
    return v3

    .line 688
    :cond_2
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/oppo/OppoUsageService;->native_writeStringContentData(ILjava/lang/String;I)I

    move-result v2

    .line 689
    .local v2, "writeRes":I
    if-gtz v2, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method private writeHistoryRecord(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 8
    .param p1, "contentStr"    # Ljava/lang/String;
    .param p2, "dateTimeStr"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "isSingleRecord"    # I
    .param p5, "logTag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 345
    if-eqz p4, :cond_0

    if-eq p4, v3, :cond_0

    .line 346
    const-string v3, "OppoUsageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeHistoryRecord["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:param isSingleRecord illegal, ignore!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return v4

    .line 349
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/oppo/OppoUsageService;->isValidDataType(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 350
    const-string v3, "OppoUsageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeHistoryRecord["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:param dataType illegal, ignore!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    .line 354
    :cond_2
    const-string v3, "OppoUsageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeHistoryRecord["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:contentStr is empty!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_6

    .line 358
    :cond_4
    const-string v5, "OppoUsageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeHistoryRecord["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]:dateTimeStr is empty, use current time instead!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getCurrentDateStr()Ljava/lang/String;

    move-result-object p2

    .line 361
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_6

    .line 362
    :cond_5
    const-string v3, "OppoUsageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeHistoryRecord["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] failed:can\'t get dateTimeStr!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 368
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "lastContentStr":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_8

    .line 372
    :cond_7
    const-string v3, "OppoUsageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeHistoryRecord["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:lastContentStr is empty!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 375
    :cond_8
    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/oppo/OppoUsageService;->native_writeStringContentData(ILjava/lang/String;I)I

    move-result v1

    .line 377
    .local v1, "saveRes":I
    if-lez v1, :cond_9

    :goto_1
    move v4, v3

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public accumulateDialOutDuration(I)Z
    .locals 4
    .param p1, "durationInMinute"    # I

    .prologue
    const/4 v3, 0x1

    .line 502
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotDialOutDuration:Z

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getDialOutDuration()I

    move-result v0

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentDialOutDuration:I

    .line 504
    iput-boolean v3, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotDialOutDuration:Z

    .line 506
    :cond_0
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentDialOutDuration:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentDialOutDuration:I

    .line 507
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentDialOutDuration:I

    const-string v2, "DialOutDuration"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/oppo/OppoUsageService;->doSaveHistoryCount(IIZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public accumulateHistoryCountOfReceivedMsg(I)Z
    .locals 4
    .param p1, "newCountIncrease"    # I

    .prologue
    const/4 v3, 0x1

    .line 439
    if-gtz p1, :cond_0

    .line 440
    const-string v0, "OppoUsageService"

    const-string v1, "accumulateHistoryCountOfReceivedMsg:illegal param!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, 0x0

    .line 449
    :goto_0
    return v0

    .line 444
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfReceivedMsg:Z

    if-nez v0, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getHistoryCountOfReceivedMsg()I

    move-result v0

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfReceivedMsg:I

    .line 446
    iput-boolean v3, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfReceivedMsg:Z

    .line 448
    :cond_1
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfReceivedMsg:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfReceivedMsg:I

    .line 449
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfReceivedMsg:I

    const-string v2, "ReceivedMsg"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/oppo/OppoUsageService;->doSaveHistoryCount(IIZLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public accumulateHistoryCountOfSendedMsg(I)Z
    .locals 4
    .param p1, "newCountIncrease"    # I

    .prologue
    const/4 v3, 0x1

    .line 425
    if-gtz p1, :cond_0

    .line 426
    const-string v0, "OppoUsageService"

    const-string v1, "accumulateHistoryCountOfReceivedMsg:illegal param!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v0, 0x0

    .line 435
    :goto_0
    return v0

    .line 430
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfSendedMsg:Z

    if-nez v0, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getHistoryCountOfSendedMsg()I

    move-result v0

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfSendedMsg:I

    .line 432
    iput-boolean v3, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfSendedMsg:Z

    .line 434
    :cond_1
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfSendedMsg:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfSendedMsg:I

    .line 435
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfSendedMsg:I

    const-string v2, "SendedMsg"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/oppo/OppoUsageService;->doSaveHistoryCount(IIZLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public accumulateInComingCallDuration(I)Z
    .locals 4
    .param p1, "durationInMinute"    # I

    .prologue
    const/4 v3, 0x1

    .line 511
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotIncomingDuration:Z

    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getInComingCallDuration()I

    move-result v0

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentIncomingDuration:I

    .line 513
    iput-boolean v3, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotIncomingDuration:Z

    .line 515
    :cond_0
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentIncomingDuration:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentIncomingDuration:I

    .line 516
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentIncomingDuration:I

    const-string v2, "IncomingDuration"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/oppo/OppoUsageService;->doSaveHistoryCount(IIZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public export_mos_config()I
    .locals 1

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->native_export_config()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->native_finalizeRawPartition()V

    .line 657
    invoke-super {p0}, Landroid/os/IOppoUsageService$Stub;->finalize()V

    .line 658
    return-void
.end method

.method public getAppUsageHistoryRecordCount()I
    .locals 2

    .prologue
    .line 338
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/android/server/oppo/OppoUsageService;->native_readDataRecordCount(I)I

    move-result v0

    .line 340
    .local v0, "recordCount":I
    return v0
.end method

.method public getAppUsageHistoryRecords(II)Ljava/util/List;
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    const/16 v0, 0x9

    const-string v1, "AppUsage"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/oppo/OppoUsageService;->getHistoryRecordByIndex(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDialOutDuration()I
    .locals 3

    .prologue
    .line 469
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContentForSingleRecord(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "historyDurationStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/oppo/OppoUsageService;->strValueToIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 472
    .local v0, "duration":I
    return v0
.end method

.method public getHistoryBootTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->getAllHistoryRecordData(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryCountOfReceivedMsg()I
    .locals 3

    .prologue
    .line 417
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContentForSingleRecord(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "historyCountStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/oppo/OppoUsageService;->strValueToIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 421
    .local v0, "historyCount":I
    return v0
.end method

.method public getHistoryCountOfSendedMsg()I
    .locals 3

    .prologue
    .line 409
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContentForSingleRecord(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "historyCountStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/oppo/OppoUsageService;->strValueToIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 413
    .local v0, "historyCount":I
    return v0
.end method

.method public getHistoryImeiNO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->getAllHistoryRecordData(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryPcbaNO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->getAllHistoryRecordData(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryRecordsCountOfPhoneCalls()I
    .locals 2

    .prologue
    .line 524
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/oppo/OppoUsageService;->native_readDataRecordCount(I)I

    move-result v0

    .line 526
    .local v0, "countOfRecord":I
    return v0
.end method

.method public getInComingCallDuration()I
    .locals 3

    .prologue
    .line 476
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContentForSingleRecord(I)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "historyDurationStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/oppo/OppoUsageService;->strValueToIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 479
    .local v0, "duration":I
    return v0
.end method

.method public getMaxChargeCurrent()I
    .locals 2

    .prologue
    .line 712
    const/16 v0, 0x11

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/oppo/OppoUsageService;->getChargeInformation(II)I

    move-result v0

    return v0
.end method

.method public getMaxChargeTemperature()I
    .locals 2

    .prologue
    .line 716
    const/16 v0, 0x13

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/oppo/OppoUsageService;->getChargeInformation(II)I

    move-result v0

    return v0
.end method

.method public getMinChargeTemperature()I
    .locals 2

    .prologue
    .line 720
    const/16 v0, 0x12

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/android/server/oppo/OppoUsageService;->getChargeInformation(II)I

    move-result v0

    return v0
.end method

.method public getPhoneCallHistoryRecords(II)Ljava/util/List;
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    const/16 v0, 0x8

    const-string v1, "PhoneCall"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/oppo/OppoUsageService;->getHistoryRecordByIndex(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public import_config_done()I
    .locals 2

    .prologue
    .line 670
    const-string v0, "OppoUsageService"

    const-string v1, "import_config_done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->native_import_config_done()I

    move-result v0

    return v0
.end method

.method public import_config_init()I
    .locals 2

    .prologue
    .line 662
    const-string v0, "OppoUsageService"

    const-string v1, "import_config_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->native_import_config_init()I

    move-result v0

    return v0
.end method

.method public import_config_loop(Ljava/lang/String;)I
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoUsageService;->native_import_config_loop(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public shutDown()V
    .locals 3

    .prologue
    .line 556
    const-string v1, "OppoUsageService"

    const-string v2, "shutDown OppoUsageService."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutDown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getCurrentDateStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "shutDownTimeStr":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->saveCurrentBootTime(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 140
    const-string v0, "OppoUsageService"

    const-string v1, "inform OPPO Usage Service systemRead "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 145
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 146
    return-void
.end method

.method public testSaveSomeData(ILjava/lang/String;)V
    .locals 7
    .param p1, "dataType"    # I
    .param p2, "dataContent"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 264
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoUsageService;->isValidDataType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    const-string v2, "OppoUsageService"

    const-string v3, "testSaveSomeData: invalid dataType!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v2, "OppoUsageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testSaveSomeData, type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "dataStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 307
    const-string v2, "OppoUsageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not provide for dataType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", use service api instead."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :pswitch_0
    move-object v0, p2

    .line 274
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getCurrentDateStr()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->saveCurrentBootTime(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :pswitch_1
    move-object v0, p2

    .line 282
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 283
    :cond_3
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getImeiNoFromPhone()Z

    move-result v1

    .line 284
    .local v1, "getRes":Z
    if-eqz v1, :cond_4

    .line 285
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentImeiNO:Ljava/lang/String;

    .line 286
    invoke-direct {p0, v0, v5}, Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V

    goto :goto_0

    .line 290
    .end local v1    # "getRes":Z
    :cond_4
    invoke-direct {p0, v0, v5}, Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V

    goto :goto_0

    .line 294
    :pswitch_2
    move-object v0, p2

    .line 295
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    .line 296
    :cond_5
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getPcbaNoFromPhone()Z

    move-result v1

    .line 297
    .restart local v1    # "getRes":Z
    if-eqz v1, :cond_6

    .line 298
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentPcbaNO:Ljava/lang/String;

    .line 299
    invoke-direct {p0, v0, v6}, Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 303
    .end local v1    # "getRes":Z
    :cond_6
    invoke-direct {p0, v0, v6}, Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateMaxChargeCurrent(I)Z
    .locals 1
    .param p1, "current"    # I

    .prologue
    .line 693
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/android/server/oppo/OppoUsageService;->updateChargeInfomation(II)Z

    move-result v0

    return v0
.end method

.method public updateMaxChargeTemperature(I)Z
    .locals 1
    .param p1, "temp"    # I

    .prologue
    .line 697
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lcom/android/server/oppo/OppoUsageService;->updateChargeInfomation(II)Z

    move-result v0

    return v0
.end method

.method public updateMinChargeTemperature(I)Z
    .locals 1
    .param p1, "temp"    # I

    .prologue
    .line 701
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/android/server/oppo/OppoUsageService;->updateChargeInfomation(II)Z

    move-result v0

    return v0
.end method

.method public writeAppUsageHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 401
    const/4 v4, 0x0

    .line 402
    .local v4, "isSingleRecord":I
    const/16 v3, 0x9

    const-string v5, "AppUsage"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/oppo/OppoUsageService;->writeHistoryRecord(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writePhoneCallHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneNoStr"    # Ljava/lang/String;
    .param p2, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 551
    const/4 v4, 0x0

    .line 552
    .local v4, "isSingleRecord":I
    const/16 v3, 0x8

    const-string v5, "PhoneCall"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/oppo/OppoUsageService;->writeHistoryRecord(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method
