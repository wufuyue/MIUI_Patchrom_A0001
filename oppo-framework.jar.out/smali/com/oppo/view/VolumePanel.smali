.class public Lcom/oppo/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/media/VolumeController;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/view/VolumePanel$WarningDialogReceiver;,
        Lcom/oppo/view/VolumePanel$StreamControl;,
        Lcom/oppo/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final ACTION_MEDIA_VOLUME_MODE_CHANGED:Ljava/lang/String; = "action_media_volume_mode_changed"

.field private static final ACTION_SKIN_CHANGED:Ljava/lang/String; = "android.intent.action.SKIN_CHANGED"

.field private static final ACTION_SYSTEM_VOLUME_MODE_CHANGED:Ljava/lang/String; = "action_system_volume_mode_changed"

.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final OPPO_UNIFORM_VOLUME_SETTINGS_ENABLED:Ljava/lang/String; = "oppo_uniform_volume_settings_enabled"

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final POST_INVALIDATE:I = 0x1

.field private static final STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "OppoVolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final WAIT_TIME_RELEASE_LOCK:I = 0x64

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private lp:Landroid/view/ViewGroup$LayoutParams;

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mFromUser:Z

.field private mHandler:Landroid/os/Handler;

.field private mOppoVolumeDisk:Landroid/view/ViewGroup;

.field private mOppoVolumeIcon:Landroid/widget/ImageView;

.field private mOppoVolumeProgress:Lcom/oppo/widget/OppoVolumeProgress;

.field private mOppoVolumeTitle:Landroid/widget/TextView;

.field private mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRingIsSilent:Z

.field private mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowCombinedVolumes:Z

.field private mSliderGroup:Landroid/view/ViewGroup;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oppo/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mUnifiedControl:Landroid/widget/CompoundButton;

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    sput-boolean v2, Lcom/oppo/view/VolumePanel;->LOGD:Z

    .line 274
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oppo/view/VolumePanel$StreamResources;

    sget-object v1, Lcom/oppo/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->RingerStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->VoiceStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->MediaStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->NotificationStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->AlarmStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->MasterStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->RemoteStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->SystemStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    .line 312
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeService"    # Landroid/media/AudioService;

    .prologue
    .line 370
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 157
    const/4 v8, -0x1

    iput v8, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    .line 170
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/view/VolumePanel;->mFromUser:Z

    .line 698
    new-instance v8, Lcom/oppo/view/VolumePanel$5;

    invoke-direct {v8, p0}, Lcom/oppo/view/VolumePanel$5;-><init>(Lcom/oppo/view/VolumePanel;)V

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mHandler:Landroid/os/Handler;

    .line 1266
    new-instance v8, Lcom/oppo/view/VolumePanel$8;

    invoke-direct {v8, p0}, Lcom/oppo/view/VolumePanel$8;-><init>(Lcom/oppo/view/VolumePanel;)V

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    iput-object p1, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 372
    const-string v8, "audio"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 373
    iput-object p2, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc0c0406

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 378
    .local v6, "useMasterVolume":Z
    if-eqz v6, :cond_1

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v8, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v8, v8

    if-ge v1, v8, :cond_1

    .line 380
    sget-object v8, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v5, v8, v1

    .line 381
    .local v5, "streamRes":Lcom/oppo/view/VolumePanel$StreamResources;
    iget v8, v5, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    const/16 v9, -0x64

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v5, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 385
    .end local v1    # "i":I
    .end local v5    # "streamRes":Lcom/oppo/view/VolumePanel$StreamResources;
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->inflaterBaseUI(Landroid/content/Context;)V

    .line 387
    new-instance v8, Lcom/oppo/view/VolumePanel$1;

    const v9, 0xc030407

    invoke-direct {v8, p0, p1, v9}, Lcom/oppo/view/VolumePanel$1;-><init>(Lcom/oppo/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 398
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v9, "Volume control"

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 399
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->lp:Landroid/view/ViewGroup$LayoutParams;

    .line 400
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v9, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    iget-object v10, p0, Lcom/oppo/view/VolumePanel;->lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v9, Lcom/oppo/view/VolumePanel$2;

    invoke-direct {v9, p0}, Lcom/oppo/view/VolumePanel$2;-><init>(Lcom/oppo/view/VolumePanel;)V

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 408
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 409
    .local v7, "window":Landroid/view/Window;
    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    .line 410
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 411
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x0

    iput-object v8, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 413
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc05044a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 415
    const/16 v8, 0x7e4

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 416
    const/4 v8, -0x2

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 417
    const/4 v8, -0x2

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 418
    invoke-virtual {v7, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 419
    const v8, 0x40528

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 423
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    new-array v8, v8, [Landroid/media/ToneGenerator;

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 424
    const-string v8, "vibrator"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 428
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oppo/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 439
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc0c0406

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 441
    .local v4, "masterVolumeOnly":Z
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc0c0407

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 444
    .local v3, "masterVolumeKeySounds":Z
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/oppo/view/VolumePanel;->mPlayMasterStreamTones:Z

    .line 445
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->listenToRingerMode()V

    .line 447
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 448
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/oppo/view/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 455
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mPowerManager:Landroid/os/PowerManager;

    .line 456
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mPowerManager:Landroid/os/PowerManager;

    const v9, 0x1000000a

    const-string v10, "VolumePanel.mSafeVolumeWakeLock"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 459
    return-void

    .line 444
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/view/VolumePanel;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->inflaterBaseUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 85
    sput-object p0, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oppo/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->createSliders()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oppo/view/VolumePanel;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->updateTextSize()V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/view/VolumePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;

    .prologue
    .line 85
    iget v0, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/view/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/view/VolumePanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/view/VolumePanel;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/view/VolumePanel;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/VolumePanel;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/oppo/view/VolumePanel;->LOGD:Z

    return v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 624
    iget-boolean v3, p0, Lcom/oppo/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 636
    :cond_0
    return-void

    .line 626
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 628
    sget-object v3, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    .line 629
    .local v2, "streamType":I
    sget-object v3, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 626
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_3
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 633
    .local v1, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 634
    invoke-direct {p0, v1}, Lcom/oppo/view/VolumePanel;->updateSlider(Lcom/oppo/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private addUnifiedControl()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1560
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1562
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0xc09044b

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1563
    .local v2, "layout":Landroid/view/View;
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1564
    const v3, 0xc0204a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/oppo/view/VolumePanel;->mUnifiedControl:Landroid/widget/CompoundButton;

    .line 1565
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mUnifiedControl:Landroid/widget/CompoundButton;

    if-eqz v3, :cond_0

    .line 1566
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "oppo_uniform_volume_settings_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1568
    .local v0, "enabled":I
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mUnifiedControl:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1569
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mUnifiedControl:Landroid/widget/CompoundButton;

    if-ne v0, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1570
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mUnifiedControl:Landroid/widget/CompoundButton;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1572
    .end local v0    # "enabled":I
    :cond_0
    return-void

    .restart local v0    # "enabled":I
    :cond_1
    move v3, v5

    .line 1569
    goto :goto_0
.end method

.method private collapse()V
    .locals 4

    .prologue
    .line 711
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 712
    .local v0, "count":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 713
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 715
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 545
    sget-boolean v7, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    const-string v7, "OppoVolumePanel"

    const-string v9, "createSliders()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    .line 547
    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 548
    iput-object v10, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 550
    :cond_1
    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 552
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v9, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v9, v9

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 553
    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 554
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v7, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_6

    .line 555
    sget-object v7, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 556
    .local v5, "streamRes":Lcom/oppo/view/VolumePanel$StreamResources;
    iget v6, v5, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    .line 562
    .local v6, "streamType":I
    new-instance v4, Lcom/oppo/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v10}, Lcom/oppo/view/VolumePanel$StreamControl;-><init>(Lcom/oppo/view/VolumePanel;Lcom/oppo/view/VolumePanel$1;)V

    .line 563
    .local v4, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    iput v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    .line 564
    const v7, 0xc090434

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 565
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 566
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc02045c

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    .line 567
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    iget v9, v5, Lcom/oppo/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 568
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc02045d

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 569
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 570
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v5, Lcom/oppo/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iget v7, v5, Lcom/oppo/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    .line 573
    iget v7, v5, Lcom/oppo/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 574
    iget v7, v5, Lcom/oppo/view/VolumePanel$StreamResources;->circleIconRes:I

    iput v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconRes:I

    .line 575
    iget v7, v5, Lcom/oppo/view/VolumePanel$StreamResources;->circleIconMuteRes:I

    iput v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconMuteRes:I

    .line 576
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v4, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 581
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc02045e

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/OppoSeekBar;

    iput-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    .line 582
    const/4 v7, 0x3

    if-ne v7, v6, :cond_2

    .line 583
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, v8}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    .line 584
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/OppoSeekBar;->setOppoSeekBarFromUserChangeListener(Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;)V

    .line 587
    :cond_2
    iget-boolean v7, v5, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    iput-boolean v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->show:Z

    .line 588
    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    if-nez v6, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 590
    .local v2, "plusOne":I
    :goto_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    if-lt v6, v7, :cond_5

    .line 554
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v2    # "plusOne":I
    :cond_4
    move v2, v8

    .line 588
    goto :goto_1

    .line 593
    .restart local v2    # "plusOne":I
    :cond_5
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-direct {p0, v6}, Lcom/oppo/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v7, v9}, Landroid/widget/OppoSeekBar;->setMax(I)V

    .line 594
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/OppoSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 595
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/OppoSeekBar;->setTag(Ljava/lang/Object;)V

    .line 596
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc020423

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    .line 597
    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 599
    .end local v2    # "plusOne":I
    .end local v4    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    .end local v5    # "streamRes":Lcom/oppo/view/VolumePanel$StreamResources;
    .end local v6    # "streamType":I
    :cond_6
    return-void
.end method

.method private expand()V
    .locals 7

    .prologue
    .line 679
    sget-boolean v5, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "OppoVolumePanel"

    const-string v6, "expand()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    iget-object v5, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 681
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 682
    iget-object v5, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 683
    .local v4, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v4, :cond_1

    .line 684
    iget-object v5, v4, Lcom/oppo/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 681
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 687
    .end local v4    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_2
    iget-object v5, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeDisk:Landroid/view/ViewGroup;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 688
    new-instance v3, Lcom/oppo/view/VolumePanel$4;

    invoke-direct {v3, p0}, Lcom/oppo/view/VolumePanel$4;-><init>(Lcom/oppo/view/VolumePanel;)V

    .line 694
    .local v3, "r":Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 695
    .local v0, "NewThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 696
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1391
    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1392
    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1393
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1216
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 1220
    iget-boolean v1, p0, Lcom/oppo/view/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 1221
    const/4 p1, 0x1

    .line 1226
    :cond_0
    monitor-enter p0

    .line 1227
    :try_start_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1229
    :try_start_1
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1237
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 1223
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 1232
    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1238
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 515
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 520
    :goto_0
    return v0

    .line 517
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 525
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 530
    :goto_0
    return v0

    .line 527
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private inflaterBaseUI(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 462
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 464
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0xc090433

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    .line 472
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc02045f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 473
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc020425

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 474
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc02049f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeDisk:Landroid/view/ViewGroup;

    .line 476
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc0204a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoVolumeProgress;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeProgress:Lcom/oppo/widget/OppoVolumeProgress;

    .line 477
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc0204a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    .line 478
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc0204a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeTitle:Landroid/widget/TextView;

    .line 479
    return-void
.end method

.method private isMuted(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x0

    .line 503
    const/16 v1, -0x64

    if-ne p1, v1, :cond_1

    .line 504
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 505
    :cond_1
    const/16 v1, -0xc8

    if-ne p1, v1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 507
    :cond_2
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 487
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 488
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oppo/view/VolumePanel$3;

    invoke-direct {v2, p0}, Lcom/oppo/view/VolumePanel$3;-><init>(Lcom/oppo/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .param p1, "activeStreamType"    # I

    .prologue
    .line 602
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 603
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reorderSliders() activeStreamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 605
    .local v0, "active":Lcom/oppo/view/VolumePanel$StreamControl;
    if-nez v0, :cond_1

    .line 606
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    .line 616
    :goto_0
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->addOtherVolumes()V

    .line 619
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->addUnifiedControl()V

    .line 621
    return-void

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 610
    iput p1, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    .line 612
    invoke-direct {p0, v0}, Lcom/oppo/view/VolumePanel;->updateSlider(Lcom/oppo/view/VolumePanel$StreamControl;)V

    .line 613
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1386
    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1387
    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1388
    return-void
.end method

.method private ringImageClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1510
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1517
    :goto_0
    return-void

    .line 1512
    :cond_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1513
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1515
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method private setMusicIcon(II)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "resMuteId"    # I

    .prologue
    const/4 v3, 0x3

    .line 1247
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1248
    .local v0, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1249
    iput p1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    .line 1250
    iput p2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1251
    iget-object v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1253
    :cond_0
    return-void

    .line 1251
    :cond_1
    iget v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 535
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 542
    :goto_0
    return-void

    .line 537
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateSlider(Lcom/oppo/view/VolumePanel$StreamControl;)V
    .locals 8
    .param p1, "sc"    # Lcom/oppo/view/VolumePanel$StreamControl;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 640
    if-nez p1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    sget-boolean v2, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "OppoVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlider() type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActiveStreamType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_2
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/oppo/view/VolumePanel;->isMuted(I)Z

    move-result v1

    .line 647
    .local v1, "muted":Z
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    iget v3, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OppoSeekBar;->setProgress(I)V

    .line 648
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    iget v3, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 649
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeProgress:Lcom/oppo/widget/OppoVolumeProgress;

    iget v3, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget v4, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lcom/oppo/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoVolumeProgress;->updateProgress(I)V

    .line 652
    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->updateVolumeIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V

    .line 653
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 655
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0xc080499

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 661
    :goto_1
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/16 v3, -0xc8

    if-ne v2, v3, :cond_7

    .line 664
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    .line 671
    :goto_2
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oppo_uniform_volume_settings_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 673
    .local v0, "enabled":I
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v5, :cond_0

    if-ne v0, v5, :cond_0

    .line 674
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    goto/16 :goto_0

    .line 656
    .end local v0    # "enabled":I
    :cond_4
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v7, :cond_6

    .line 657
    iget-object v3, p1, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_5

    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_3

    .line 659
    :cond_6
    invoke-virtual {p0, p1}, Lcom/oppo/view/VolumePanel;->changeStreamIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V

    goto :goto_1

    .line 665
    :cond_7
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v3

    if-eq v2, v3, :cond_8

    if-eqz v1, :cond_8

    .line 666
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    .line 667
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/OppoSeekBar;->setPressed(Z)V

    goto :goto_2

    .line 669
    :cond_8
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateStates()V
    .locals 5

    .prologue
    .line 718
    sget-boolean v3, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "OppoVolumePanel"

    const-string v4, "updateStates()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 720
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 721
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 728
    .local v2, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v2, :cond_1

    .line 729
    invoke-direct {p0, v2}, Lcom/oppo/view/VolumePanel;->updateSlider(Lcom/oppo/view/VolumePanel$StreamControl;)V

    .line 720
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    .end local v2    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_2
    return-void
.end method

.method private updateTextSize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1294
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050456

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1296
    .local v5, "volumeTitleSize":I
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeTitle:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1297
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeTitle:Landroid/widget/TextView;

    int-to-float v7, v5

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1300
    :cond_0
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050457

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1302
    .local v4, "unifiedControlTextSize":I
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mUnifiedControl:Landroid/widget/CompoundButton;

    if-eqz v6, :cond_1

    .line 1303
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mUnifiedControl:Landroid/widget/CompoundButton;

    int-to-float v7, v4

    invoke-virtual {v6, v8, v7}, Landroid/widget/CompoundButton;->setTextSize(IF)V

    .line 1306
    :cond_1
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1308
    .local v3, "streamTextSize":I
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1309
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1310
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1311
    .local v2, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v2, :cond_2

    .line 1312
    iget-object v6, v2, Lcom/oppo/view/VolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    int-to-float v7, v3

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1309
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1315
    .end local v2    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_3
    return-void
.end method

.method private updateVolumeIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V
    .locals 7
    .param p1, "sc"    # Lcom/oppo/view/VolumePanel$StreamControl;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 1474
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVolumeIcon() streamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mActiveStreamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_0
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    iget v2, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_2

    .line 1507
    :cond_1
    :goto_0
    return-void

    .line 1479
    :cond_2
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 1481
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    const v2, 0xc0804b9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1482
    :cond_3
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v5, :cond_5

    .line 1483
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_4

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconMuteRes:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconRes:I

    goto :goto_1

    .line 1486
    :cond_5
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x380

    if-eqz v1, :cond_7

    .line 1491
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_6

    const v1, 0xc0804bd

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    const v1, 0xc0804bc

    goto :goto_2

    .line 1494
    :cond_7
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-eq v1, v4, :cond_8

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_8

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-eq v1, v6, :cond_8

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-nez v1, :cond_a

    .line 1500
    :cond_8
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1501
    .local v0, "volume":I
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_9

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconMuteRes:I

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_9
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconRes:I

    goto :goto_3

    .line 1502
    .end local v0    # "volume":I
    :cond_a
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1503
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private volumeImageClick(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1520
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1521
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_media_volume_mode_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_system_volume_mode_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public changeStreamIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V
    .locals 3
    .param p1, "sc"    # Lcom/oppo/view/VolumePanel$StreamControl;

    .prologue
    .line 1530
    if-eqz p1, :cond_1

    .line 1531
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1537
    :cond_0
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1538
    .local v0, "volume":I
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1539
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->updateVolumeIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V

    .line 1542
    .end local v0    # "volume":I
    :cond_1
    return-void

    .line 1538
    .restart local v0    # "volume":I
    :cond_2
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1319
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1322
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1327
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1332
    :pswitch_2
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1337
    :pswitch_3
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1342
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1347
    :pswitch_5
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1352
    :pswitch_6
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1354
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 1359
    :pswitch_7
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1361
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 1367
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 1372
    :pswitch_9
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1376
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1380
    :pswitch_b
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onDisplaySafeVolumeWarning()V

    goto :goto_0

    .line 1319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 1576
    if-nez p2, :cond_2

    .line 1577
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 1578
    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget v4, v6, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    .line 1579
    .local v4, "streamType":I
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1580
    .local v3, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-eq v4, v6, :cond_1

    .line 1581
    if-eqz v3, :cond_0

    iget-boolean v6, v3, Lcom/oppo/view/VolumePanel$StreamControl;->show:Z

    if-nez v6, :cond_1

    .line 1577
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1585
    :cond_1
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v6

    if-eq v4, v6, :cond_0

    const/16 v6, -0xc8

    if-eq v4, v6, :cond_0

    invoke-direct {p0, v4}, Lcom/oppo/view/VolumePanel;->isMuted(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1587
    iget-object v6, v3, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/OppoSeekBar;->setPressed(Z)V

    .line 1588
    iget-object v6, v3, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 1592
    .end local v1    # "i":I
    .end local v3    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    .end local v4    # "streamType":I
    :cond_2
    if-eqz p2, :cond_5

    .line 1593
    const/4 v0, 0x2

    .line 1594
    .local v0, "baseStreamType":I
    invoke-direct {p0, v8}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    .line 1595
    .local v2, "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 1597
    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget-boolean v6, v6, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    if-ne v6, v8, :cond_4

    .line 1595
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1600
    :cond_4
    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    invoke-direct {p0, v6, v2, v5}, Lcom/oppo/view/VolumePanel;->setStreamVolume(III)V

    goto :goto_3

    .line 1603
    .end local v0    # "baseStreamType":I
    .end local v1    # "i":I
    .end local v2    # "progress":I
    :cond_5
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oppo_uniform_volume_settings_enabled"

    if-eqz p2, :cond_6

    const/4 v5, 0x1

    :cond_6
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1605
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 1606
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1438
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeDisk:Landroid/view/ViewGroup;

    if-ne p1, v4, :cond_1

    .line 1471
    :cond_0
    return-void

    .line 1445
    :cond_1
    sget-object v4, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1446
    sget-object v4, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v3, v4, v1

    .line 1447
    .local v3, "streamRes":Lcom/oppo/view/VolumePanel$StreamResources;
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v5, v3, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1448
    .local v2, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v2, :cond_2

    .line 1449
    iget v4, v3, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, v2, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_3

    .line 1450
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->ringImageClick()V

    .line 1445
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1451
    :cond_3
    iget-object v4, v2, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_2

    iget v4, v3, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    invoke-direct {p0, v4}, Lcom/oppo/view/VolumePanel;->isMuted(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1458
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oppo_uniform_volume_settings_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1460
    .local v0, "enabled":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 1461
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->ringImageClick()V

    goto :goto_1

    .line 1463
    :cond_4
    iget v4, v3, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    invoke-direct {p0, v4}, Lcom/oppo/view/VolumePanel;->volumeImageClick(I)V

    goto :goto_1
.end method

.method protected onDisplaySafeVolumeWarning()V
    .locals 6

    .prologue
    .line 1137
    sget-object v3, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1138
    :try_start_0
    sget-object v2, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1139
    monitor-exit v3

    .line 1210
    :goto_0
    return-void

    .line 1141
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0xc0404c7

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    new-instance v5, Lcom/oppo/view/VolumePanel$7;

    invoke-direct {v5, p0}, Lcom/oppo/view/VolumePanel$7;-><init>(Lcom/oppo/view/VolumePanel;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040009

    new-instance v5, Lcom/oppo/view/VolumePanel$6;

    invoke-direct {v5, p0}, Lcom/oppo/view/VolumePanel$6;-><init>(Lcom/oppo/view/VolumePanel;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1010355

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 1181
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 1182
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1183
    .local v0, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_4

    .line 1184
    new-instance v1, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    iget-object v5, v0, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-direct {v1, v2, v4, v5}, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/widget/OppoSeekBar;)V

    .line 1191
    .end local v0    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    .local v1, "warning":Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
    :goto_1
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_2

    .line 1192
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1193
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1195
    :cond_1
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1197
    :cond_2
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 1198
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1199
    .restart local v0    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_3

    .line 1200
    const-string v2, "OppoVolumePanel"

    const-string v4, "post_setEnabled_true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    .line 1205
    .end local v0    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_3
    sget-object v2, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1206
    sget-object v2, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d9

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 1208
    sget-object v2, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1209
    monitor-exit v3

    goto/16 :goto_0

    .end local v1    # "warning":Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1186
    .restart local v0    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_4
    :try_start_1
    new-instance v1, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v1, v2, v4}, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    .restart local v1    # "warning":Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
    goto :goto_1

    .line 1189
    .end local v0    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    .end local v1    # "warning":Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
    :cond_5
    new-instance v1, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v1, v2, v4}, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "warning":Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
    goto :goto_1
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1256
    monitor-enter p0

    .line 1257
    :try_start_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1258
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1261
    :cond_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1257
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1263
    :cond_1
    monitor-exit p0

    .line 1264
    return-void

    .line 1263
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 867
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 870
    .local v0, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 871
    iget-object v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/oppo/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 874
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/VolumePanel;->onVolumeChanged(II)V

    .line 875
    return-void

    .line 871
    :cond_2
    iget v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method public onOppoSeekBarProgressrFromUserChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1546
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1547
    .local v1, "tag":Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Lcom/oppo/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1548
    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1549
    .local v0, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_0

    const/4 v2, 0x3

    iget v3, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 1551
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lcom/oppo/view/VolumePanel;->setStreamVolume(III)V

    .line 1554
    .end local v0    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_0
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 1555
    return-void
.end method

.method protected onPlaySound(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x3

    .line 1032
    invoke-virtual {p0, v2}, Lcom/oppo/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    invoke-virtual {p0, v2}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1035
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onStopSounds()V

    .line 1038
    :cond_0
    monitor-enter p0

    .line 1039
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 1040
    .local v0, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 1041
    const/16 v1, 0x21

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1042
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1044
    :cond_1
    monitor-exit p0

    .line 1045
    return-void

    .line 1044
    .end local v0    # "toneGen":Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1397
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1398
    .local v1, "tag":Ljava/lang/Object;
    if-eqz p3, :cond_3

    instance-of v2, v1, Lcom/oppo/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_3

    .line 1399
    sget-boolean v2, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "OppoVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged() progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    .line 1400
    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1401
    .local v0, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 1402
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lcom/oppo/view/VolumePanel;->setStreamVolume(III)V

    .line 1406
    :cond_1
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1408
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/view/VolumePanel;->mFromUser:Z

    .line 1412
    .end local v0    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_3
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 1413
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 1074
    sget-boolean v0, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1077
    :cond_1
    monitor-enter p0

    .line 1078
    :try_start_0
    iget v0, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 1079
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/oppo/view/VolumePanel;->reorderSliders(I)V

    .line 1081
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Lcom/oppo/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1082
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 1088
    invoke-virtual {p0, v4}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1089
    invoke-virtual {p0, v4, p1, p2}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1092
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 1093
    invoke-virtual {p0, v4}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1094
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1095
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onStopSounds()V

    .line 1098
    :cond_5
    invoke-virtual {p0, v5}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1099
    invoke-virtual {p0, v5}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1101
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 1102
    return-void

    .line 1082
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1084
    :cond_6
    sget-boolean v0, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "OppoVolumePanel"

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 1105
    sget-boolean v0, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoVolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1109
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/oppo/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1111
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 9
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v1

    .line 880
    .local v1, "index":I
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oppo/view/VolumePanel;->mRingIsSilent:Z

    .line 882
    sget-boolean v6, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_0

    .line 883
    const-string v6, "OppoVolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onShowVolumeChanged(streamType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v6

    and-int/lit16 v6, v6, 0x380

    if-nez v6, :cond_1

    .line 893
    const v6, 0xc08049b

    const v7, 0xc080493

    invoke-direct {p0, v6, v7}, Lcom/oppo/view/VolumePanel;->setMusicIcon(II)V

    .line 899
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v2

    .line 901
    .local v2, "max":I
    sparse-switch p1, :sswitch_data_0

    .line 972
    :cond_2
    :goto_0
    :sswitch_0
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 973
    .local v4, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v4, :cond_7

    .line 974
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6}, Landroid/widget/OppoSeekBar;->getMax()I

    move-result v6

    if-eq v6, v2, :cond_3

    .line 975
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/OppoSeekBar;->setMax(I)V

    .line 978
    :cond_3
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v1}, Landroid/widget/OppoSeekBar;->setProgress(I)V

    .line 979
    sget-boolean v6, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_4

    const-string v6, "OppoVolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onShowVolumeChanged mActiveStreamType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", streamType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_4
    iget v6, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne p1, v6, :cond_5

    .line 982
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeProgress:Lcom/oppo/widget/OppoVolumeProgress;

    mul-int/lit8 v7, v1, 0x64

    div-int/2addr v7, v2

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoVolumeProgress;->updateProgress(I)V

    .line 984
    :cond_5
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oppo_uniform_volume_settings_enabled"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 987
    .local v0, "enabled":I
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v6

    if-eq p1, v6, :cond_b

    const/16 v6, -0xc8

    if-eq p1, v6, :cond_b

    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->isMuted(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 990
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    .line 991
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/OppoSeekBar;->setPressed(Z)V

    .line 996
    :goto_1
    iget v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    .line 997
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    .line 1001
    :cond_6
    invoke-virtual {p0, v4}, Lcom/oppo/view/VolumePanel;->changeStreamIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V

    .line 1005
    .end local v0    # "enabled":I
    :cond_7
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1006
    const/16 v6, -0xc8

    if-ne p1, v6, :cond_c

    const/4 v5, -0x1

    .line 1008
    .local v5, "stream":I
    :goto_2
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1009
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v7, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1017
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeDisk:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1018
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1022
    .end local v5    # "stream":I
    :cond_8
    const/16 v6, -0xc8

    if-eq p1, v6, :cond_9

    and-int/lit8 v6, p2, 0x10

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v6, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 1026
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {p0, v6, v7, v8}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1028
    :cond_9
    return-void

    .line 905
    .end local v4    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :sswitch_1
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 907
    .local v3, "ringuri":Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 908
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oppo/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 915
    .end local v3    # "ringuri":Landroid/net/Uri;
    :sswitch_2
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v6

    and-int/lit16 v6, v6, 0x380

    if-eqz v6, :cond_a

    .line 919
    const v6, 0xc08045f

    const v7, 0xc080461

    invoke-direct {p0, v6, v7}, Lcom/oppo/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 921
    :cond_a
    const v6, 0xc08049b

    const v7, 0xc080493

    invoke-direct {p0, v6, v7}, Lcom/oppo/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 937
    :sswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 938
    add-int/lit8 v2, v2, 0x1

    .line 939
    goto/16 :goto_0

    .line 947
    :sswitch_4
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 949
    .restart local v3    # "ringuri":Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 950
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oppo/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 961
    .end local v3    # "ringuri":Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v1, v1, 0x1

    .line 962
    add-int/lit8 v2, v2, 0x1

    .line 963
    goto/16 :goto_0

    .line 967
    :sswitch_6
    sget-boolean v6, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_2

    const-string v6, "OppoVolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showing remote volume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " over "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 993
    .restart local v0    # "enabled":I
    .restart local v4    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_b
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    goto/16 :goto_1

    .end local v0    # "enabled":I
    :cond_c
    move v5, p1

    .line 1006
    goto/16 :goto_2

    .line 901
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    const/4 v1, 0x1

    .line 1122
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "OppoVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1124
    .local v1, "isVisible":Z
    :goto_0
    sget-object v3, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1125
    sget-object v3, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1126
    .local v2, "streamRes":Lcom/oppo/view/VolumePanel$StreamResources;
    iget v3, v2, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1127
    iput-boolean v1, v2, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    .line 1128
    if-nez v1, :cond_1

    iget v3, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1129
    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    .end local v2    # "streamRes":Lcom/oppo/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 1123
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1124
    .restart local v0    # "i":I
    .restart local v1    # "isVisible":Z
    .restart local v2    # "streamRes":Lcom/oppo/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1122
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Lcom/oppo/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1417
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1049
    monitor-enter p0

    .line 1050
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1051
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1052
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 1053
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 1054
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1051
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1057
    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 1058
    return-void

    .line 1057
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v3, -0xc8

    .line 1420
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1421
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/oppo/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1422
    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1427
    .local v0, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 1428
    invoke-direct {p0, v3}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1431
    .end local v0    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1068
    :goto_0
    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 821
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolumeChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    const/4 v0, 0x1

    .line 826
    .local v0, "update":Z
    if-eqz p1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 828
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/view/VolumePanel;->mFromUser:Z

    if-ne v4, v1, :cond_2

    .line 829
    const/4 v0, 0x0

    .line 831
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/view/VolumePanel;->mFromUser:Z

    .line 835
    :cond_3
    if-eqz v0, :cond_5

    .line 836
    monitor-enter p0

    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 838
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 845
    :cond_4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :cond_5
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/oppo/view/VolumePanel;->mRingIsSilent:Z

    if-nez v1, :cond_6

    .line 849
    invoke-virtual {p0, v5}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 850
    invoke-virtual {p0, v5, p1, p2}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 853
    :cond_6
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_7

    .line 854
    invoke-virtual {p0, v5}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 855
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 856
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onStopSounds()V

    .line 859
    :cond_7
    invoke-virtual {p0, v4}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 860
    invoke-virtual {p0, v4}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 862
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 863
    return-void

    .line 839
    :cond_8
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_4

    .line 840
    :try_start_1
    iget v1, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-eq v1, p1, :cond_9

    .line 841
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->reorderSliders(I)V

    .line 843
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/VolumePanel;->onShowVolumeChanged(II)V

    goto :goto_0

    .line 845
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/16 v1, 0xb

    .line 810
    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 811
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 784
    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 806
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/oppo/view/VolumePanel;->postMuteChanged(II)V

    .line 807
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 791
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/oppo/view/VolumePanel;->postVolumeChanged(II)V

    .line 792
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 795
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    :goto_0
    return-void

    .line 796
    :cond_0
    monitor-enter p0

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 798
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->createSliders()V

    .line 800
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 802
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 768
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 770
    return-void

    .line 768
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 757
    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 758
    :cond_0
    monitor-enter p0

    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 760
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->createSliders()V

    .line 762
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 764
    invoke-virtual {p0, v1, p1, p2}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 762
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 736
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoVolumePanel"

    const-string v2, "postVolumeChanged() ======================="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postVolumeChanged() streamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_1
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-eq p1, v1, :cond_3

    .line 741
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 742
    .local v0, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->show:Z

    if-nez v1, :cond_3

    .line 754
    .end local v0    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_2
    :goto_0
    return-void

    .line 747
    :cond_3
    monitor-enter p0

    .line 748
    :try_start_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 749
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->createSliders()V

    .line 751
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 753
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 751
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 483
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->updateStates()V

    .line 484
    return-void
.end method
