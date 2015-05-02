.class Lcom/android/server/location/GpsLocationProvider$GpsController;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsController"
.end annotation


# static fields
.field private static final ACTION_BIND_POWER_SERVICE:Ljava/lang/String; = "com.gnss.power.service"

.field private static final ACTION_POWER_SAVER_NOTIFICATION:Ljava/lang/String; = "com.user.power.saver.notification"

.field private static final ACTION_START_NOTIFICATION:Ljava/lang/String; = "com.user.start.notification"

.field private static final ACTION_STOP_NAVIGATING_NOTIFICATION:Ljava/lang/String; = "com.user.stop.navigating.notification"

.field private static final ACTION_USER_AGREE:Ljava/lang/String; = "android.user.agree"

.field private static final ACTION_USER_DISCARD:Ljava/lang/String; = "android.user.discard"

.field private static final ACTION_USER_WAKE_GPS:Ljava/lang/String; = "android.user.wake.gps"

.field private static final GPS_POWER_ON:I = 0x0

.field private static final GPS_POWER_ON_WITH_DISCARD:I = 0x2

.field private static final GPS_POWER_ON_WITH_WAKE:I = 0x1

.field private static final GPS_POWER_SAVER_WITH_AGREE:I = 0x4

.field private static final GPS_POWER_SAVER_WITH_DELAY:I = 0x3

.field private static final MSG_STOP_AFTER_DELAY:I = 0x66

.field private static final MSG_WILL_STOP_GPS:I = 0x65

.field private static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.gnss.power"

.field private static final TIME_DELAY_STOP_GPS:J = 0xea60L


# instance fields
.field private mGpsMode:I

.field private final mGpsMonitor:Lcom/android/server/location/GpsMonitor;

.field private mIsDoingStop:Z

.field private final mLocMgr:Landroid/location/LocationManager;

.field private mNeedStopGps:Z

.field private myConnection:Landroid/content/ServiceConnection;

.field private myHander:Landroid/os/Handler;

.field private myLocationListener:Landroid/location/LocationListener;

.field private myReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2036
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2007
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    .line 2008
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2252
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$1;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    .line 2272
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$2;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myConnection:Landroid/content/ServiceConnection;

    .line 2282
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$3;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 2297
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$4;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myLocationListener:Landroid/location/LocationListener;

    .line 2037
    new-instance v0, Lcom/android/server/location/GpsMonitor;

    invoke-direct {v0}, Lcom/android/server/location/GpsMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    .line 2038
    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mLocMgr:Landroid/location/LocationManager;

    .line 2040
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->bindNotificationService()V

    .line 2041
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->registBroadcast()V

    .line 2042
    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->willStopGps()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider$GpsController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2004
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/location/GpsLocationProvider$GpsController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;
    .param p1, "x1"    # I

    .prologue
    .line 2004
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->enterPowerSavingMode()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->wakeGps()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->userAgreed()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->userDiscard()V

    return-void
.end method

.method private bindNotificationService()V
    .locals 4

    .prologue
    .line 2051
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gnss.power.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2052
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.gnss.power"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2054
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2055
    return-void
.end method

.method private enterPowerSavingMode()V
    .locals 6

    .prologue
    .line 2143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2145
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->powerSaverNotify()V

    .line 2146
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2147
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mLocMgr:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2148
    return-void
.end method

.method private powerSaverNotify()V
    .locals 2

    .prologue
    .line 2166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.user.power.saver.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2167
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2168
    return-void
.end method

.method private registBroadcast()V
    .locals 3

    .prologue
    .line 2235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2236
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.user.wake.gps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2237
    const-string v1, "android.user.discard"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2238
    const-string v1, "android.user.agree"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2240
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2241
    return-void
.end method

.method private shouldStopGps()Z
    .locals 3

    .prologue
    .line 2116
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running shouldStopGps mIsDoingStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startNotify()V
    .locals 2

    .prologue
    .line 2156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.user.start.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2157
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2158
    return-void
.end method

.method private unRegistBroadcast()V
    .locals 2

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2250
    return-void
.end method

.method private userAgreed()V
    .locals 3

    .prologue
    .line 2201
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user agree mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-nez v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2207
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2208
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2209
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->enterPowerSavingMode()V

    .line 2210
    return-void
.end method

.method private userDiscard()V
    .locals 3

    .prologue
    .line 2218
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user discard mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-nez v0, :cond_0

    .line 2221
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2224
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2225
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMonitor;->resetStatus()V

    .line 2226
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2227
    return-void
.end method

.method private wakeGps()V
    .locals 3

    .prologue
    .line 2186
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user wake mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2189
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2191
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMonitor;->resetStatus()V

    .line 2192
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;Z)V

    .line 2193
    return-void
.end method

.method private willStopGps()V
    .locals 4

    .prologue
    .line 2127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2128
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->startNotify()V

    .line 2130
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running willstopGps Message  mGpsMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-nez v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2135
    :cond_0
    return-void
.end method


# virtual methods
.method public changeGpsMode(F[F)V
    .locals 2
    .param p1, "speed"    # F
    .param p2, "snrs"    # [F

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/GpsMonitor;->needStopGps(F[F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    .line 2069
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->shouldStopGps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2070
    const-string v0, "GpsController"

    const-string v1, "will stop gps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2074
    :cond_0
    return-void
.end method

.method public getGpsPowerMode()I
    .locals 1

    .prologue
    .line 2096
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    return v0
.end method

.method public resetStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2082
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running resetStatus mGpsMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2085
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2087
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMonitor;->resetStatus()V

    .line 2088
    return-void
.end method

.method public resistStartGps()Z
    .locals 3

    .prologue
    .line 2105
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running resistStartGps mGpsMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopNavigatingNotify()V
    .locals 2

    .prologue
    .line 2176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.user.stop.navigating.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2177
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2178
    return-void
.end method
