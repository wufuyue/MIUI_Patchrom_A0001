.class Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;
.super Landroid/database/ContentObserver;
.source "WifiAutoConnectOP01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/cmcc/WifiAutoConnectOP01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTypeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;


# direct methods
.method public constructor <init>(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;Landroid/os/Handler;)V
    .locals 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 324
    iput-object p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    .line 325
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 326
    iget-object v1, p1, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 327
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_ap_connect_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 329
    const-string/jumbo v1, "wifi_connect_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 335
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 336
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    iget-object v2, v2, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_ap_connect_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 338
    .local v1, "connectType":I
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    iget-object v2, v2, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_connect_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 340
    .local v0, "cellToWlan":I
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    # getter for: Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I
    invoke-static {v2}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->access$100(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    # getter for: Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I
    invoke-static {v2}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->access$100(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    # getter for: Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I
    invoke-static {v2}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->access$200(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 342
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    const-wide/16 v3, 0x0

    # setter for: Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J
    invoke-static {v2, v3, v4}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->access$302(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;J)J

    .line 344
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    # setter for: Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I
    invoke-static {v2, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->access$202(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;I)I

    .line 345
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    # setter for: Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I
    invoke-static {v2, v0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->access$102(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;I)I

    .line 346
    const-string v2, "WifiAutoConnectOP01"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectTypeObserver, mConnectPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    # getter for: Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I
    invoke-static {v4}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->access$200(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCellToWiFiPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    # getter for: Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I
    invoke-static {v4}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->access$100(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    # invokes: Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendUpdateSettingsBroadcast()V
    invoke-static {v2}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->access$000(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)V

    .line 349
    return-void
.end method
