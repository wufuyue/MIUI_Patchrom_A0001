.class Lcom/android/server/location/GpsLocationProvider$GpsController$1;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$GpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0

    .prologue
    .line 2252
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2256
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2269
    :cond_0
    :goto_0
    return-void

    .line 2258
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    # invokes: Lcom/android/server/location/GpsLocationProvider$GpsController;->willStopGps()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$3400(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    goto :goto_0

    .line 2261
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    # getter for: Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$3500(Lcom/android/server/location/GpsLocationProvider$GpsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    const/4 v1, 0x3

    # setter for: Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$3602(Lcom/android/server/location/GpsLocationProvider$GpsController;I)I

    .line 2263
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    # invokes: Lcom/android/server/location/GpsLocationProvider$GpsController;->enterPowerSavingMode()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$3700(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    goto :goto_0

    .line 2256
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
