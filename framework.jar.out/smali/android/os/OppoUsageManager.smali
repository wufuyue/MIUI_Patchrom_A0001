.class public final Landroid/os/OppoUsageManager;
.super Ljava/lang/Object;
.source "OppoUsageManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_E:Z = true

.field private static final DEBUG_W:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "usage"

.field public static final TAG:Ljava/lang/String; = "OppoUsageManager"

.field private static mInstance:Landroid/os/OppoUsageManager;


# instance fields
.field private mOppoUsageService:Landroid/os/IOppoUsageService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    .line 33
    const-string/jumbo v1, "usage"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    .local v0, "serviceBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IOppoUsageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoUsageService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    .line 35
    return-void
.end method

.method public static getOppoUsageManager()Landroid/os/OppoUsageManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/OppoUsageManager;

    invoke-direct {v0}, Landroid/os/OppoUsageManager;-><init>()V

    sput-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    .line 41
    :cond_0
    sget-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    return-object v0
.end method


# virtual methods
.method public accumulateDialOutDuration(I)Z
    .locals 3
    .param p1, "durationInMinute"    # I

    .prologue
    .line 284
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 286
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1}, Landroid/os/IOppoUsageService;->accumulateDialOutDuration(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "accumulateDialOutDuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 291
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "accumulateDialOutDuration:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public accumulateHistoryCountOfReceivedMsg(I)Z
    .locals 4
    .param p1, "newCountIncrease"    # I

    .prologue
    const/4 v1, 0x0

    .line 228
    if-gtz p1, :cond_0

    .line 229
    const-string v2, "OppoUsageManager"

    const-string v3, "accumulateHistoryCountOfReceivedMsg:illegal param!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return v1

    .line 233
    :cond_0
    iget-object v2, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v2, :cond_1

    .line 235
    :try_start_0
    iget-object v2, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v2, p1}, Landroid/os/IOppoUsageService;->accumulateHistoryCountOfReceivedMsg(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v2, "OppoUsageManager"

    const-string v3, "accumulateHistoryCountOfReceivedMsg failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 240
    .end local v0    # "exce":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "OppoUsageManager"

    const-string v3, "accumulateHistoryCountOfReceivedMsg:service not publish!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public accumulateHistoryCountOfSendedMsg(I)Z
    .locals 4
    .param p1, "newCountIncrease"    # I

    .prologue
    const/4 v1, 0x0

    .line 207
    if-gtz p1, :cond_0

    .line 208
    const-string v2, "OppoUsageManager"

    const-string v3, "accumulateHistoryCountOfSendedMsg:illegal param!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return v1

    .line 211
    :cond_0
    iget-object v2, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v2, :cond_1

    .line 213
    :try_start_0
    iget-object v2, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v2, p1}, Landroid/os/IOppoUsageService;->accumulateHistoryCountOfSendedMsg(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v2, "OppoUsageManager"

    const-string v3, "accumulateHistoryCountOfSendedMsg failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 218
    .end local v0    # "exce":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "OppoUsageManager"

    const-string v3, "accumulateHistoryCountOfSendedMsg:service not publish!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public accumulateInComingCallDuration(I)Z
    .locals 3
    .param p1, "durationInMinute"    # I

    .prologue
    .line 301
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 303
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1}, Landroid/os/IOppoUsageService;->accumulateInComingCallDuration(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 311
    :goto_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "accumulateInComingCallDuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 308
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "accumulateInComingCallDuration:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public export_mos_config()I
    .locals 3

    .prologue
    .line 420
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 422
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->export_mos_config()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 430
    :goto_0
    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "export_mos_config failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 427
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "export_mos_config:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAppUsageHistoryRecordCount()I
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getAppUsageHistoryRecordCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 122
    :goto_0
    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getAppUsageHistoryRecordCount failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getAppUsageHistoryRecordCount:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAppUsageHistoryRecords(II)Ljava/util/List;
    .locals 3
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
    .line 134
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1, p2}, Landroid/os/IOppoUsageService;->getAppUsageHistoryRecords(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getAppUsageHistoryRecords failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 141
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getAppUsageHistoryRecords:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDialOutDuration()I
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getDialOutDuration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    :goto_0
    return v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getDialOutDuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 257
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getDialOutDuration:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getHistoryBootTime()Ljava/util/List;
    .locals 3
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
    .line 61
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getHistoryBootTime()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryBootTime failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 68
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryBootTime:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getHistoryCountOfReceivedMsg()I
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getHistoryCountOfReceivedMsg()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryCountOfReceivedMsg failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 197
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryCountOfReceivedMsg:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getHistoryCountOfSendedMsg()I
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 175
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getHistoryCountOfSendedMsg()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 183
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryCountOfSendedMsg failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 180
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryCountOfSendedMsg:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getHistoryImeiNO()Ljava/util/List;
    .locals 3
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
    .line 78
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getHistoryImeiNO()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryImeiNO failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 85
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryImeiNO:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getHistoryPcbaNO()Ljava/util/List;
    .locals 3
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
    .line 95
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getHistoryPcbaNO()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryPcbaNO failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryPcbaNO:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getHistoryRecordsCountOfPhoneCalls()I
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getHistoryRecordsCountOfPhoneCalls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    :goto_0
    return v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryRecordsCountOfPhoneCalls failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 325
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getHistoryRecordsCountOfPhoneCalls:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getInComingCallDuration()I
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getInComingCallDuration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 277
    :goto_0
    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getInComingCallDuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 274
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getInComingCallDuration:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getMaxChargeCurrent()I
    .locals 3

    .prologue
    .line 479
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 481
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getMaxChargeCurrent()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 489
    :goto_0
    return v1

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getMaxChargeCurrent failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 486
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getMaxChargeCurrent:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getMaxChargeTemperature()I
    .locals 3

    .prologue
    .line 493
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getMaxChargeTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 503
    :goto_0
    return v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getMaxChargeTemperature failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 500
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getMaxChargeTemperature:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getMinChargeTemperature()I
    .locals 3

    .prologue
    .line 507
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 509
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->getMinChargeTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 517
    :goto_0
    return v1

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getMinChargeTemperature failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 514
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getMinChargeTemperature:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPhoneCallHistoryRecords(II)Ljava/util/List;
    .locals 3
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
    .line 341
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 343
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1, p2}, Landroid/os/IOppoUsageService;->getPhoneCallHistoryRecords(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 351
    :goto_0
    return-object v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getPhoneCallHistoryRecords failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 348
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getPhoneCallHistoryRecords:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public import_config_done()I
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 408
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->import_config_done()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 416
    :goto_0
    return v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "import_config_done failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 413
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "import_config_done:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public import_config_init()I
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 380
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1}, Landroid/os/IOppoUsageService;->import_config_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 388
    :goto_0
    return v1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "import_config_init failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 385
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "import_config_init:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public import_config_loop(Ljava/lang/String;)I
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 394
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1}, Landroid/os/IOppoUsageService;->import_config_loop(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 402
    :goto_0
    return v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "import_config_loop failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 399
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "import_config_loop:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public testSaveSomeData(ILjava/lang/String;)V
    .locals 3
    .param p1, "dataType"    # I
    .param p2, "dataContent"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 47
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1, p2}, Landroid/os/IOppoUsageService;->testSaveSomeData(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string/jumbo v2, "testSaveSomeData failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 52
    .end local v0    # "exce":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string/jumbo v2, "testSaveSomeData:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMaxChargeCurrent(I)Z
    .locals 3
    .param p1, "current"    # I

    .prologue
    .line 436
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 438
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1}, Landroid/os/IOppoUsageService;->updateMaxChargeCurrent(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    :goto_0
    return v1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string/jumbo v2, "updateMaxChargeCurrent failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 443
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string/jumbo v2, "updateMaxChargeCurrent:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateMaxChargeTemperature(I)Z
    .locals 3
    .param p1, "temp"    # I

    .prologue
    .line 450
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 452
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1}, Landroid/os/IOppoUsageService;->updateMaxChargeCurrent(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 460
    :goto_0
    return v1

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string/jumbo v2, "updateMaxChargeTemperature failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 457
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string/jumbo v2, "updateMaxChargeTemperature:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateMinChargeTemperature(I)Z
    .locals 3
    .param p1, "temp"    # I

    .prologue
    .line 464
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 466
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1}, Landroid/os/IOppoUsageService;->updateMinChargeTemperature(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 474
    :goto_0
    return v1

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string/jumbo v2, "updateMinChargeTemperature failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 471
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string/jumbo v2, "updateMinChargeTemperature:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public writeAppUsageHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1, p2}, Landroid/os/IOppoUsageService;->writeAppUsageHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 166
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string v2, "getAppUsageHistoryRecords failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 163
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string v2, "getAppUsageHistoryRecords:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public writePhoneCallHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneNoStr"    # Ljava/lang/String;
    .param p2, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 365
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1, p2}, Landroid/os/IOppoUsageService;->writePhoneCallHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 373
    :goto_0
    return v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "exce":Landroid/os/RemoteException;
    const-string v1, "OppoUsageManager"

    const-string/jumbo v2, "writePhoneCallHistoryRecord failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .end local v0    # "exce":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 370
    :cond_0
    const-string v1, "OppoUsageManager"

    const-string/jumbo v2, "writePhoneCallHistoryRecord:service not publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
