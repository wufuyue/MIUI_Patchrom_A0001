.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static mContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J

.field private oppoNTPserver:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "cn.pool.ntp.org"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    .line 59
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 60
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 63
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 65
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v9, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 70
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 72
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v9, 0x1040032

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "defaultServer":Ljava/lang/String;
    const v9, 0x10e0040

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v1, v9

    .line 77
    .local v1, "defaultTimeout":J
    const-string/jumbo v9, "ntp_server"

    invoke-static {v4, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "secureServer":Ljava/lang/String;
    const-string/jumbo v9, "ntp_timeout"

    invoke-static {v4, v9, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 82
    .local v7, "timeout":J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 83
    .local v6, "server":Ljava/lang/String;
    :goto_0
    new-instance v9, Landroid/util/NtpTrustedTime;

    invoke-direct {v9, v6, v7, v8}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 85
    sput-object p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    .line 88
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "defaultTimeout":J
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v7    # "timeout":J
    :cond_0
    sget-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v9

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "defaultTimeout":J
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v7    # "timeout":J
    :cond_1
    move-object v6, v0

    .line 82
    goto :goto_0

    .line 68
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "defaultTimeout":J
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v7    # "timeout":J
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 93
    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v5

    .line 116
    :cond_1
    const-string/jumbo v7, "persist.sys.oppo.region"

    const-string v8, "CN"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "region":Ljava/lang/String;
    const-string v7, "CN"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "OC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 119
    :cond_2
    new-instance v3, Landroid/net/OppoHttpClient;

    invoke-direct {v3}, Landroid/net/OppoHttpClient;-><init>()V

    .line 120
    .local v3, "oppoHttpClient":Landroid/net/OppoHttpClient;
    sget-object v7, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v3, v7, v5, v8}, Landroid/net/OppoHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v3, v7, v6, v8}, Landroid/net/OppoHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 122
    :cond_3
    const-string v5, "NtpTrustedTime"

    const-string v7, "Use oppo http server algin time success!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-boolean v6, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 124
    invoke-virtual {v3}, Landroid/net/OppoHttpClient;->getHttpTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 125
    invoke-virtual {v3}, Landroid/net/OppoHttpClient;->getHttpTimeReference()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 126
    invoke-virtual {v3}, Landroid/net/OppoHttpClient;->getRoundTripTime()J

    move-result-wide v7

    div-long/2addr v7, v10

    iput-wide v7, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v5, v6

    .line 127
    goto :goto_0

    .line 133
    .end local v3    # "oppoHttpClient":Landroid/net/OppoHttpClient;
    :cond_4
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 150
    .local v0, "client":Landroid/net/SntpClient;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 151
    const-string v7, "1"

    const-string/jumbo v8, "sys.ntp.exception"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 152
    .local v2, "isNtpError":Z
    if-eqz v2, :cond_6

    .line 153
    iget-wide v7, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 150
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_6
    iget-object v7, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    aget-object v7, v7, v1

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 156
    const-string v5, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mServer = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-boolean v6, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 158
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 159
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 160
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v7

    div-long/2addr v7, v10

    iput-wide v7, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v5, v6

    .line 161
    goto/16 :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 180
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 187
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 189
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
