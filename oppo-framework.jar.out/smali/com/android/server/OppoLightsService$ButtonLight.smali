.class public Lcom/android/server/OppoLightsService$ButtonLight;
.super Lcom/android/server/LightsService$Light;
.source "OppoLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OppoLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonLight"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OppoLightsService$ButtonLight$SettingsObserver;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_DEFAULT:I = 0x64

.field private static final MESSAGE_TURN_LIGHT_OFF:I = 0x3e8

.field public static final MODE_ALWAYS_OFF:I = 0x2

.field public static final MODE_ALWAYS_ON:I = 0x1

.field public static final MODE_AUTO_SENSOR:I = 0x4

.field public static final MODE_AUTO_TIMEOUT:I = 0x3

.field public static final TIMEOUT_DEFAULT:J = 0x1770L


# instance fields
.field private mBrightnessMode:I

.field private mButtonLightMode:I

.field private mButtonLightTimeout:J

.field private mColor:I

.field private mHandler:Landroid/os/Handler;

.field private mHasEnabled:Z

.field private mIsTurnOn:Z

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/OppoLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/OppoLightsService;I)V
    .locals 4
    .param p2, "nId"    # I

    .prologue
    const/4 v3, 0x0

    .line 152
    iput-object p1, p0, Lcom/android/server/OppoLightsService$ButtonLight;->this$0:Lcom/android/server/OppoLightsService;

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;I)V

    .line 82
    new-instance v2, Lcom/android/server/OppoLightsService$ButtonLight$1;

    invoke-direct {v2, p0}, Lcom/android/server/OppoLightsService$ButtonLight$1;-><init>(Lcom/android/server/OppoLightsService$ButtonLight;)V

    iput-object v2, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    .line 96
    iput v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mColor:I

    .line 97
    iput v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mMode:I

    .line 98
    iput v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOnMS:I

    .line 99
    iput v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOffMS:I

    .line 100
    iput v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mBrightnessMode:I

    .line 101
    iput-boolean v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHasEnabled:Z

    .line 102
    iput-boolean v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mIsTurnOn:Z

    .line 105
    new-instance v2, Lcom/android/server/OppoLightsService$ButtonLight$2;

    invoke-direct {v2, p0}, Lcom/android/server/OppoLightsService$ButtonLight$2;-><init>(Lcom/android/server/OppoLightsService$ButtonLight;)V

    iput-object v2, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v1, Lcom/android/server/OppoLightsService$ButtonLight$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/OppoLightsService$ButtonLight$SettingsObserver;-><init>(Lcom/android/server/OppoLightsService$ButtonLight;Landroid/os/Handler;)V

    .line 156
    .local v1, "observer":Lcom/android/server/OppoLightsService$ButtonLight$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/server/OppoLightsService$ButtonLight$SettingsObserver;->observe()V

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    # getter for: Lcom/android/server/OppoLightsService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/OppoLightsService;->access$200(Lcom/android/server/OppoLightsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OppoLightsService;ILcom/android/server/OppoLightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/OppoLightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/OppoLightsService$1;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/OppoLightsService$ButtonLight;-><init>(Lcom/android/server/OppoLightsService;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OppoLightsService$ButtonLight;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OppoLightsService$ButtonLight;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/OppoLightsService$ButtonLight;->turnButtonLightOff()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/OppoLightsService$ButtonLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoLightsService$ButtonLight;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mBrightnessMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/OppoLightsService$ButtonLight;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OppoLightsService$ButtonLight;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mButtonLightMode:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/OppoLightsService$ButtonLight;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OppoLightsService$ButtonLight;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mButtonLightTimeout:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/OppoLightsService$ButtonLight;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoLightsService$ButtonLight;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHasEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/OppoLightsService$ButtonLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoLightsService$ButtonLight;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mColor:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/OppoLightsService$ButtonLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoLightsService$ButtonLight;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/OppoLightsService$ButtonLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoLightsService$ButtonLight;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOnMS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/OppoLightsService$ButtonLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoLightsService$ButtonLight;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOffMS:I

    return v0
.end method

.method private turnButtonLightOff()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 164
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-super/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 165
    return-void
.end method


# virtual methods
.method setLightLocked(IIIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const/16 v2, 0x3e8

    const/4 v1, 0x0

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHasEnabled:Z

    .line 175
    iget-object v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mButtonLightMode:I

    packed-switch v0, :pswitch_data_0

    .line 199
    invoke-super/range {p0 .. p5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 202
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mColor:I

    .line 203
    iput p2, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mMode:I

    .line 204
    iput p3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOnMS:I

    .line 205
    iput p4, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOffMS:I

    .line 206
    iput p5, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mBrightnessMode:I

    .line 207
    return-void

    .line 179
    :pswitch_1
    invoke-super/range {p0 .. p5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 184
    invoke-super/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-super/range {p0 .. p5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 190
    iget-object v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mButtonLightTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
