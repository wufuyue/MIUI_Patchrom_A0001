.class public Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Landroid/view/OppoWindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_END_CALL:Ljava/lang/String; = "android.intent.action.END_CALL"

.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oppo.intent.action.KEY_LOCK_MODE"

.field private static final ACTION_SCREEN_SHOT:Ljava/lang/String; = "oppo.intent.action.SCREEN_SHOT"

.field private static final CAMERA_PKG:Ljava/lang/String; = "com.oppo.camera"

.field private static final CAPTURE_GUIDE:Ljava/lang/String; = "com.oppo.gestureguide.activity.CaptureActivity"

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private static final HOME_KEY_DOUBLE_CLICK_DETECT_TIME:I = 0xfa

.field private static final HOME_KEY_DOUBLE_CLICK_DETECT_TIME_SLEEP:I = 0xc8

.field private static final KEYGUARD_QUICK_SHOT_DELAY_MULTIPLIER:F = 2.5f

.field private static final KEY_EXIT_DRAG_WINDOW:Ljava/lang/String; = "com.oppo.intent.action.KEY_EXIT_DRAG_WINDOW"

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_NORMAL:I = 0x0

.field private static final KEY_LOCK_MODE_POWER:I = 0x1

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field static final KEY_OFFSET_VALUE:I = 0x320

.field private static final LAYER_WALLPAPER:Ljava/lang/String; = "LAYER_WALLPAPER"

.field private static final MAX_WAIT_TIME:I = 0x3e8

.field private static final MSG_ISCAMERAMODE:I = 0x11

.field private static final MSG_ISHOMEMODE:I = 0x10

.field private static final MSG_ISINGESTUREGUIDE:I = 0x13

.field private static final MSG_SET_WALLPAPER_LAYER:I = 0x12

.field private static final MULTI_TOUCH_GUIDE:Ljava/lang/String; = "com.oppo.gestureguide.activity.StartMultiTouchOpenCamera"

.field private static final OPPO_IGNORE_DRIVE_MODE:Ljava/lang/String; = "com.oppo.drivemode"

.field private static final OPPO_IGNORE_INCALL_SCREEN:Ljava/lang/String; = "com.android.incallui/com.android.incallui.OppoSlidingDrawerInCallActivity"

.field private static final OPPO_IGNORE_SPEECH_ASSIST:Ljava/lang/String; = "com.oppo.speechassist"

.field private static final OPPO_INCALL_SCREEN:Ljava/lang/String; = "com.android.incallui/com.android.incallui.OppoInCallActivity"

.field private static final OPPO_SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final PRACTICAL_HOME_KEY_DOUBLE_CLICK_DETECT_TIME_SLEEP:I = 0xfa

.field private static final PROXIMITY_THRESHOLD:F = 2.0f

.field private static final QUICK_SHOT_DELAY_MILLIS_SCREEN_OFF:J = 0x1f4L

.field private static final QUICK_SHOT_DELAY_MILLIS_SCREEN_ON:J = 0xc8L

.field public static final START_SPEECH_DISABLE:Ljava/lang/String; = "com.oppo.intent.action.START_SPEECH_DISABLE"

.field public static final START_SPEECH_ENABLE:Ljava/lang/String; = "com.oppo.intent.action.START_SPEECH_ENABLE"

.field private static TAG:Ljava/lang/String; = null

.field private static final WAIT_FOR_START_TIME:J = 0x7d0L


# instance fields
.field private FORCE_RESUME_FOR_CHANGING_THEME:J

.field private final LongHomePressedEscaped:Ljava/lang/Runnable;

.field private OPPODEBUG:Z

.field private flashlights:Z

.field private final hideStatusBar:Ljava/lang/Runnable;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oukun add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private homeKeyUpTime:J

.field private isDragScreenBackground:Z

.field private isMute:Z

.field private lastDoubleHomeKeyTime:J

.field private lastHomeKeyTime:J
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "only for export machine"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field listener:Landroid/telephony/PhoneStateListener;

.field private longPressMenuEnable:Z

.field mApkLockScreens:Ljava/util/ArrayList;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentKeyMode:I

.field private mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

.field private mHomeDoubleTrigged:Z

.field private final mHomeKeyTap:Ljava/lang/Runnable;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "only for export machine"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

.field private mIsCameraShow:Z

.field private mIsFirstBoot:Z

.field private mIsGaussFlag:Z
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai add for apklock"
    .end annotation
.end field

.field private mIsInGestureGuide:Z

.field private mIsShowGaussFlag:Z

.field private mIsStatusBarSemipermeable:Z

.field private mIsStatusBarTans:Z

.field private final mKeyLockIntentProcess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

.field private mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMyHandler:Landroid/os/Handler;

.field mNotifyLidWakeLock:Landroid/os/PowerManager$WakeLock;

.field mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

.field private mOppoLastLidState:I

.field private mOppoPowerDownKeyConsumedByScreenshotChord:Z

.field private mOppoPowerKeyTime:J

.field private mOppoPowerKeyTriggered:Z

.field private mOppoScreenshotChordEnabled:Z

.field private mOppoVolumeDownKeyConsumedByScreenshotChord:Z

.field private mOppoVolumeDownKeyTime:J

.field private mOppoVolumeDownKeyTriggered:Z

.field private mOppoVolumeUpKeyTriggered:Z

.field private mPauseForChangingTheme:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field mResumeForChangingTheme:Ljava/lang/Runnable;

.field private mRingingTime:J

.field private mScreenDragStatusBarHeight:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

.field private mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

.field private mSupportQuickShot:Z

.field private mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

.field final mUpDownRunnable:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumedByUpDownChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedByUpDownChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWallpaperLayer:I

.field private mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "OppoPhoneWindowManager"

    sput-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 148
    iput v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    .line 151
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    .line 157
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    .line 159
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    .line 162
    iput v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    .line 165
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;

    .line 181
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoScreenshotChordEnabled:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    .line 195
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    .line 196
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->FORCE_RESUME_FOR_CHANGING_THEME:J

    .line 200
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z

    .line 208
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    .line 216
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    .line 217
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    .line 220
    new-instance v0, Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    .line 222
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    .line 237
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    .line 240
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    .line 257
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    .line 271
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsFirstBoot:Z

    .line 279
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isDragScreenBackground:Z

    .line 319
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mResumeForChangingTheme:Ljava/lang/Runnable;

    .line 340
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUpDownRunnable:Ljava/lang/Runnable;

    .line 350
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

    .line 1039
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->LongHomePressedEscaped:Ljava/lang/Runnable;

    .line 1081
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    .line 1752
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    .line 1755
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    .line 1757
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    .line 1762
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 1824
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    .line 1905
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    .line 2075
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->listener:Landroid/telephony/PhoneStateListener;

    .line 2096
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsGaussFlag:Z

    .line 2099
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsShowGaussFlag:Z

    .line 2100
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsStatusBarTans:Z

    .line 2101
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsStatusBarSemipermeable:Z

    .line 2102
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    .line 2103
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    .line 2104
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2105
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2106
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2109
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2115
    iput v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    .line 2120
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    return-void
.end method

.method private RemoveHomeLongPressedR()V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->LongHomePressedEscaped:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "LongHomePressedR removed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->LongHomePressedEscaped:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1066
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # J

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->setWallpaperLayer()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->setVideoMode(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->FORCE_RESUME_FOR_CHANGING_THEME:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z

    return p1
.end method

.method private adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1122
    move-object v1, p1

    .line 1123
    .local v1, "newEvent":Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1124
    .local v0, "keyCode":I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_1

    .line 1125
    packed-switch v0, :pswitch_data_0

    .line 1150
    :cond_0
    :goto_0
    return-object v1

    .line 1127
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1129
    goto :goto_0

    .line 1132
    :cond_1
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_2

    .line 1133
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1136
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1138
    goto :goto_0

    .line 1141
    :cond_2
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_0

    .line 1142
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1144
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1146
    goto :goto_0

    .line 1125
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    .line 1133
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch

    .line 1142
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 1

    .prologue
    .line 2401
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1192
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 1195
    :cond_1
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 1183
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelPendingScreenshotChordAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1186
    return-void
.end method

.method private closeFlashApp()V
    .locals 3

    .prologue
    .line 1069
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    if-nez v1, :cond_0

    .line 1077
    :goto_0
    return-void

    .line 1071
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    .line 1072
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.STOP_LOCK_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1074
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1076
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->RemoveHomeLongPressedR()V

    goto :goto_0
.end method

.method private disableNotificationAlert()V
    .locals 3

    .prologue
    .line 1285
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1287
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1289
    return-void
.end method

.method private disableProximitySensor()V
    .locals 4

    .prologue
    .line 1800
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "disableProximitySensor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 1803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1805
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1806
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1810
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    if-eqz v2, :cond_1

    .line 1813
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    .line 1817
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 1808
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dumpWindowState(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 2208
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====getOwningPackage :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getAttrs :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSurfaceLayer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasAppShownWindows :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleOrBehindKeyguardLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDisplayedLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnimatingLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGoneForLayoutLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasDrawnLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlive :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    return-void
.end method

.method private enableProximitySensor()V
    .locals 6

    .prologue
    .line 1784
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "enableProximitySensor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 1787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1789
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1792
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1794
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1797
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 1794
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static getFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "variableName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1961
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1965
    .local v2, "targetClass":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1966
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1967
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1970
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1968
    :catch_0
    move-exception v0

    .line 1969
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1970
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleDoubleClickOnHome()V
    .locals 4
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "only for export machine"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1841
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1842
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 1843
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 1845
    :catch_0
    move-exception v0

    .line 1846
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1848
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private handleDoubleKeyEvents(J)V
    .locals 4
    .param p1, "interval"    # J

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1100
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    .line 1107
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    goto :goto_0
.end method

.method private handleTelephone(Z)Z
    .locals 11
    .param p1, "isScreenOn"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1242
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1243
    .local v5, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 1244
    .local v2, "hungUp":Z
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v6, :cond_0

    sget-object v9, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "telephonyService = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_4

    move v6, v7

    :goto_0
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_0
    if-eqz v5, :cond_3

    .line 1247
    :try_start_0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1248
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1250
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-nez v6, :cond_5

    move v3, v7

    .line 1251
    .local v3, "inSilence":Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "call_vibrate_method"

    const/4 v10, 0x1

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_6

    move v4, v7

    .line 1253
    .local v4, "isNeverVibrate":Z
    :goto_2
    sget-object v6, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inSilence::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isNeverVibrate::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isMute="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    if-nez v6, :cond_7

    if-eqz v3, :cond_1

    if-nez v4, :cond_7

    .line 1255
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    .line 1256
    const/4 v2, 0x1

    .line 1257
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 1271
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v3    # "inSilence":Z
    .end local v4    # "isNeverVibrate":Z
    :goto_3
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1272
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->disableNotificationAlert()V

    :cond_2
    move v8, v2

    .line 1281
    :cond_3
    :goto_4
    return v8

    :cond_4
    move v6, v8

    .line 1244
    goto :goto_0

    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_5
    move v3, v8

    .line 1250
    goto :goto_1

    .restart local v3    # "inSilence":Z
    :cond_6
    move v4, v8

    .line 1251
    goto :goto_2

    .line 1259
    .restart local v4    # "isNeverVibrate":Z
    :cond_7
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v2

    .line 1260
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1275
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v3    # "inSilence":Z
    .end local v4    # "isNeverVibrate":Z
    :catch_0
    move-exception v1

    .line 1276
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    sget-object v6, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v7, "ITelephony threw RemoteException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v2

    .line 1278
    goto :goto_4

    .line 1262
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_8
    :try_start_2
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_9

    .line 1264
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v2

    .line 1265
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    goto :goto_3

    .line 1278
    :catchall_0
    move-exception v6

    move v8, v2

    goto :goto_4

    .line 1267
    :cond_9
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private interceptPowerKeyForTelephone(Landroid/view/KeyEvent;IZI)I
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "result"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1200
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    move v1, v4

    .line 1202
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 1204
    .local v0, "canceled":Z
    and-int/lit8 p4, p4, -0x2

    .line 1205
    if-eqz v1, :cond_4

    .line 1209
    new-instance v3, Landroid/content/Intent;

    const-string v6, "SILENCE_ACTION_FOR_OPPO_SPEECH"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v3, "it":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1212
    if-eqz p3, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_0

    .line 1214
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    .line 1215
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTime:J

    .line 1216
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptScreenshotChord()V

    .line 1219
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleTelephone(Z)Z

    move-result v2

    .line 1221
    .local v2, "hungUp":Z
    if-eqz p3, :cond_1

    if-nez v2, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeUpKeyTriggered:Z

    if-eqz v6, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 1238
    .end local v2    # "hungUp":Z
    .end local v3    # "it":Landroid/content/Intent;
    :goto_1
    return p4

    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    :cond_3
    move v1, v5

    .line 1200
    goto :goto_0

    .line 1226
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    if-nez v6, :cond_5

    .line 1227
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1230
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    .line 1231
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1232
    if-nez v0, :cond_6

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    if-eqz v6, :cond_8

    :cond_6
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1233
    and-int/lit8 v4, p4, -0x3

    or-int/lit8 p4, v4, 0x4

    .line 1235
    :cond_7
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto :goto_1

    :cond_8
    move v4, v5

    .line 1232
    goto :goto_2
.end method

.method private interceptScreenshotChord()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1162
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenshotChord  mOppoVolumeDownKeyTriggered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mOppoPowerKeyTriggered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mOppoVolumeUpKeyTriggered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeUpKeyTriggered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mOppoVolumeDownKeyTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mOppoPowerKeyTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoScreenshotChordEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeUpKeyTriggered:Z

    if-nez v2, :cond_1

    .line 1170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1171
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1173
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1174
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerDownKeyConsumedByScreenshotChord:Z

    .line 1176
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1177
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1180
    .end local v0    # "now":J
    :cond_1
    return-void
.end method

.method private interceptUpDownChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const-wide/16 v6, 0xc8

    const/4 v5, 0x1

    .line 2425
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v3, :cond_1

    .line 2426
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2427
    .local v0, "now":J
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2428
    iget-wide v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v3, v6

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v3, v6

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 2430
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 2431
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    .line 2432
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v4, "enter isScreenOn"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUpDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2447
    .end local v0    # "now":J
    :cond_1
    :goto_0
    return-void

    .line 2436
    .restart local v0    # "now":J
    :cond_2
    iget-wide v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v3, v8

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v3, v8

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 2438
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 2439
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    .line 2440
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 2441
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2442
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v4, "enter isScreenOff"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUpDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private isLogKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 2065
    const/16 v0, 0x1a

    if-eq v0, p1, :cond_0

    const/16 v0, 0x19

    if-eq v0, p1, :cond_0

    const/16 v0, 0x18

    if-eq v0, p1, :cond_0

    const/16 v0, 0xa4

    if-eq v0, p1, :cond_0

    const/16 v0, 0x52

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/16 v0, 0x4f

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private longPressMenuKey()V
    .locals 3

    .prologue
    .line 1293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1294
    .local v0, "intentOppoAssist":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1295
    const-string v1, "com.oppo.speechassist.start_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1297
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "send broadcast com.oppo.speechassist.start_action to start speechassist."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_0
    return-void
.end method

.method private offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1154
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    add-int/lit16 v5, v5, 0x320

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private openFlashApp()V
    .locals 5

    .prologue
    .line 1048
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    if-eqz v1, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    .line 1051
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.START_LOCK_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1053
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1054
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 1055
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1057
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->LongHomePressedEscaped:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setVideoMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1118
    iput p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    .line 1119
    return-void
.end method

.method private setWallpaperLayer()V
    .locals 3
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LAYER_WALLPAPER"

    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2290
    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    .locals 13
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "windowFlags"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "ZhiYong.Lin@Plf.Framework, modify for preview"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1308
    sget-boolean v10, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->SHOW_STARTING_ANIMATIONS:Z

    if-nez v10, :cond_1

    .line 1309
    const/4 v7, 0x0

    .line 1404
    :cond_0
    :goto_0
    return-object v7

    .line 1311
    :cond_1
    if-nez p2, :cond_2

    .line 1312
    const/4 v7, 0x0

    goto :goto_0

    .line 1316
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1317
    .local v2, "context":Landroid/content/Context;
    sget-boolean v10, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v10, :cond_3

    .line 1318
    sget-object v10, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addStartingWindow "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": nonLocalizedLabel="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " theme="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_4

    if-eqz p6, :cond_5

    .line 1322
    :cond_4
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v2, p2, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 1323
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1329
    :cond_5
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .line 1330
    .local v8, "win":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1331
    .local v6, "ta":Landroid/content/res/TypedArray;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_6

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1333
    :cond_6
    const/4 v7, 0x0

    goto :goto_0

    .line 1336
    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1337
    .local v5, "r":Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1339
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    .line 1344
    or-int/lit8 v10, p8, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x20000

    or-int/2addr v10, v11

    or-int/lit8 v11, p8, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x20000

    or-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 1351
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1355
    :cond_8
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 1358
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1359
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1360
    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1361
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1363
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1364
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1366
    const-string v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 1367
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 1369
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1376
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1379
    :cond_9
    sget-boolean v10, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v10, :cond_a

    .line 1380
    sget-object v11, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding starting window for "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " / "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_b

    move-object v10, v7

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_a
    invoke-interface {v9, v7, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1393
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1380
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .line 1394
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "ta":Landroid/content/res/TypedArray;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "win":Landroid/view/Window;
    .end local v9    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 1396
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    sget-object v10, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already running, starting window not displayed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    .end local v3    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1397
    :catch_1
    move-exception v3

    .line 1401
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v10, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed creating starting window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1324
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "context":Landroid/content/Context;
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method public allowAppAnimationsLw()Z
    .locals 7
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2051
    const/4 v1, 0x0

    .line 2052
    .local v1, "isAnim":Z
    const/4 v3, 0x0

    .line 2053
    .local v3, "temp":Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerPolicy$WindowState;

    .line 2054
    .local v2, "mApkLockScreen":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v5

    .line 2055
    :goto_1
    if-nez v1, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    move v1, v5

    :goto_2
    goto :goto_0

    :cond_1
    move v3, v4

    .line 2054
    goto :goto_1

    :cond_2
    move v1, v4

    .line 2055
    goto :goto_2

    .line 2058
    .end local v2    # "mApkLockScreen":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_3
    if-eqz v1, :cond_4

    .line 2061
    :goto_3
    return v4

    :cond_4
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->allowAppAnimationsLw()Z

    move-result v4

    goto :goto_3
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v5, 0x80000

    const/4 v4, 0x3

    .line 2159
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 2160
    sget-boolean v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->dumpWindowState(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2162
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2164
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_4

    .line 2165
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2168
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v4, :cond_1

    .line 2169
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2185
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2186
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2188
    .local v0, "isLauncher":Z
    if-eqz v0, :cond_6

    .line 2189
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2195
    :cond_2
    :goto_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2196
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_7

    .line 2198
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    .line 2205
    :cond_3
    :goto_2
    return-void

    .line 2173
    .end local v0    # "isLauncher":Z
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2176
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v4, :cond_5

    .line 2177
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2180
    :cond_5
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2190
    .restart local v0    # "isLauncher":Z
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_2

    .line 2191
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    .line 2201
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    goto :goto_2
.end method

.method public beginLayoutLw(ZIII)V
    .locals 5
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2370
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isOffsetState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2371
    iget v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenDragStatusBarHeight:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarHeight:I

    .line 2376
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->beginLayoutLw(ZIII)V

    .line 2377
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2378
    iput v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemTop:I

    .line 2382
    :cond_0
    if-eqz p1, :cond_1

    .line 2383
    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastSystemUiFlags:I

    .line 2384
    .local v2, "sysui":I
    const/high16 v4, 0x4000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    move v0, v1

    .line 2385
    .local v0, "statusBarTransient":Z
    :goto_1
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, v2

    if-eqz v4, :cond_4

    .line 2386
    .local v1, "statusBarTranslucent":Z
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v3

    and-int/2addr v1, v3

    .line 2387
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1

    .line 2388
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 2390
    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemTop:I

    .line 2395
    .end local v0    # "statusBarTransient":Z
    .end local v1    # "statusBarTranslucent":Z
    .end local v2    # "sysui":I
    :cond_1
    return-void

    .line 2373
    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenDragStatusBarHeight:I

    iput v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarHeight:I

    goto :goto_0

    .restart local v2    # "sysui":I
    :cond_3
    move v0, v3

    .line 2384
    goto :goto_1

    .restart local v0    # "statusBarTransient":Z
    :cond_4
    move v1, v3

    .line 2385
    goto :goto_2
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 1
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 2146
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->beginPostLayoutPolicyLw(II)V

    .line 2147
    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2148
    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2149
    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsShowGaussFlag:Z

    .line 2153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    .line 2155
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/16 v5, 0x7d4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1999
    const-string v4, "mAttachedWindow"

    invoke-static {p1, v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .line 2000
    .local v1, "parent":Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v0, 0x0

    .line 2001
    .local v0, "isParentLock":Z
    if-eqz v1, :cond_0

    .line 2002
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 2004
    :cond_0
    :goto_0
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v4, :cond_1

    if-eqz v0, :cond_4

    .line 2005
    :cond_1
    if-eqz v0, :cond_3

    .line 2010
    :goto_1
    return v2

    :cond_2
    move v0, v3

    .line 2002
    goto :goto_0

    :cond_3
    move v2, v3

    .line 2008
    goto :goto_1

    .line 2010
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    goto :goto_1
.end method

.method public canMagnifyWindow(I)Z
    .locals 2
    .param p1, "windowType"    # I

    .prologue
    const/4 v0, 0x0

    .line 2343
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2344
    sparse-switch p1, :sswitch_data_0

    .line 2357
    :cond_0
    const/16 v1, 0x8fe

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8fd

    if-ne p1, v1, :cond_2

    .line 2362
    :cond_1
    :goto_0
    :sswitch_0
    return v0

    .line 2348
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2362
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canMagnifyWindow(I)Z

    move-result v0

    goto :goto_0

    .line 2344
    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_1
        0x7dc -> :sswitch_1
        0x7e3 -> :sswitch_1
        0x8fd -> :sswitch_0
        0x8fe -> :sswitch_0
    .end sparse-switch
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1934
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1936
    .local v1, "type":I
    const/4 v3, -0x1

    aput v3, p2, v2

    .line 1937
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    .line 1946
    :cond_0
    :goto_0
    return v2

    .line 1941
    :cond_1
    const/4 v0, 0x0

    .line 1942
    .local v0, "permission":Ljava/lang/String;
    const/16 v3, 0x7da

    if-eq v3, v1, :cond_0

    const/16 v3, 0x7d4

    if-eq v3, v1, :cond_0

    .line 1946
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I

    move-result v2

    goto :goto_0
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/16 v5, 0x7d4

    const/4 v3, 0x0

    .line 1979
    const-string v4, "mAttachedWindow"

    invoke-static {p1, v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1980
    .local v1, "parent":Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v0, 0x0

    .line 1981
    .local v0, "isParentLock":Z
    if-eqz v1, :cond_0

    .line 1982
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 1984
    :cond_0
    :goto_0
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v4, :cond_3

    .line 1985
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    if-nez v4, :cond_3

    .line 1990
    :cond_1
    :goto_1
    return v3

    :cond_2
    move v0, v3

    .line 1982
    goto :goto_0

    .line 1990
    :cond_3
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v5, :cond_4

    if-nez v0, :cond_4

    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 24
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1457
    const/16 v23, -0x1

    .line 1458
    .local v23, "wallpaperLayer":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_a

    .line 1459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v19

    .line 1460
    .local v19, "launcherLayer":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v23

    .line 1462
    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1463
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsShowGaussFlag:Z

    .line 1471
    .end local v19    # "launcherLayer":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    move/from16 v0, v23

    if-eq v3, v0, :cond_1

    if-lez v23, :cond_1

    .line 1472
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    .line 1477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1480
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishPostLayoutPolicyLw changed mWallpaperLayer ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_1
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishPostLayoutPolicyLw mIsShowGaussFlag ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsShowGaussFlag:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsShowGaussFlag:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsGaussFlag:Z

    if-eq v3, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    .line 1487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v5, "mClient"

    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindow;

    .line 1489
    .local v2, "mClient":Landroid/view/IWindow;
    if-eqz v2, :cond_3

    .line 1491
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsShowGaussFlag:Z

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    .line 1492
    .local v4, "i":I
    :goto_1
    const-string v3, "wallpaper_change"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 1494
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsShowGaussFlag:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsGaussFlag:Z

    .line 1495
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishPostLayoutPolicyLw mIsGaussFlag ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsGaussFlag:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    .end local v2    # "mClient":Landroid/view/IWindow;
    .end local v4    # "i":I
    :cond_3
    :goto_2
    const/4 v10, 0x0

    .line 1505
    .local v10, "changes":I
    const/16 v18, 0x0

    .line 1508
    .local v18, "isShowLock":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1509
    .local v20, "mApkLockScreen":Landroid/view/WindowManagerPolicy$WindowState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_5

    .line 1510
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1512
    :cond_5
    if-eqz v20, :cond_4

    .line 1513
    if-nez v18, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_6
    const/16 v18, 0x1

    .line 1514
    :goto_4
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishLayoutLw::mLockScreen != null  mHideKeyguard="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDismissKeyguard="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mKeyguardDelegate.isSecure()= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mDismissKeyguard:I

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1524
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1526
    or-int/lit8 v10, v10, 0x7

    .line 1530
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 1465
    .end local v10    # "changes":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v18    # "isShowLock":Z
    .end local v20    # "mApkLockScreen":Landroid/view/WindowManagerPolicy$WindowState;
    .restart local v19    # "launcherLayer":I
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsShowGaussFlag:Z

    goto/16 :goto_0

    .line 1468
    .end local v19    # "launcherLayer":I
    :cond_a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsShowGaussFlag:Z

    goto/16 :goto_0

    .line 1491
    .restart local v2    # "mClient":Landroid/view/IWindow;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1497
    :catch_0
    move-exception v11

    .line 1498
    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1513
    .end local v2    # "mClient":Landroid/view/IWindow;
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v10    # "changes":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v18    # "isShowLock":Z
    .restart local v20    # "mApkLockScreen":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1537
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    if-eqz v3, :cond_10

    .line 1538
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1111finishLayoutLw::mLockScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1547
    or-int/lit8 v10, v10, 0x7

    .line 1551
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    if-eqz v3, :cond_4

    .line 1552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_3

    .line 1556
    :cond_10
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2222finishLayoutLw::mLockScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    if-eqz v3, :cond_4

    .line 1569
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1570
    or-int/lit8 v10, v10, 0x7

    .line 1574
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_3

    .line 1583
    .end local v20    # "mApkLockScreen":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_13
    const/16 v17, 0x0

    .line 1593
    .local v17, "isLauncherShow":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1594
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launcher is showing -- mLauncherWin.isFocused() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isFocused()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    if-le v3, v5, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1597
    :cond_16
    const/16 v17, 0x1

    .line 1602
    :cond_17
    const/4 v15, 0x0

    .line 1603
    .local v15, "isHomeModeChange":Z
    if-nez v18, :cond_18

    if-eqz v17, :cond_24

    :cond_18
    const/16 v22, 0x1

    .line 1604
    .local v22, "shouldTans":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsStatusBarTans:Z

    move/from16 v0, v22

    if-eq v0, v3, :cond_25

    .line 1605
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_19

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "========shouldTans============"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_19
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsStatusBarTans:Z

    .line 1608
    const/4 v15, 0x1

    .line 1642
    :cond_1a
    :goto_6
    if-eqz v15, :cond_1c

    .line 1643
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>change<<<mIsStatusBarTans = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsStatusBarTans:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsStatusBarAlpa = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsStatusBarSemipermeable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsStatusBarTans:Z

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsStatusBarSemipermeable:Z

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    :goto_8
    invoke-static {v6, v7, v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v21

    .line 1650
    .local v21, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsFirstBoot:Z

    if-eqz v3, :cond_29

    .line 1651
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsFirstBoot:Z

    .line 1652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x3e8

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1659
    .end local v21    # "msg":Landroid/os/Message;
    :cond_1c
    :goto_9
    const/4 v14, 0x0

    .line 1660
    .local v14, "isCameraShow":Z
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_1d

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "========shouldTans============"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.oppo.camera"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1662
    const/4 v14, 0x1

    .line 1665
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    if-eq v14, v3, :cond_1f

    .line 1666
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    .line 1667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    :goto_a
    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v21

    .line 1670
    .restart local v21    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x32

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1675
    .end local v21    # "msg":Landroid/os/Message;
    :cond_1f
    const/4 v9, 0x0

    .line 1676
    .local v9, "appName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1677
    .local v16, "isInGestureGuide":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 1678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    .line 1679
    const/16 v3, 0x2f

    invoke-virtual {v9, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 1680
    .local v13, "index":I
    if-lez v13, :cond_20

    .line 1681
    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v9, v3, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9    # "appName":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1683
    .restart local v9    # "appName":Ljava/lang/String;
    :cond_20
    const-string v3, "com.oppo.gestureguide.activity.CaptureActivity"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "com.oppo.gestureguide.activity.StartMultiTouchOpenCamera"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1684
    :cond_21
    const/16 v16, 0x1

    .line 1687
    .end local v13    # "index":I
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    move/from16 v0, v16

    if-eq v0, v3, :cond_23

    .line 1688
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    .line 1689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    :goto_b
    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v21

    .line 1692
    .restart local v21    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x32

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1697
    .end local v21    # "msg":Landroid/os/Message;
    :cond_23
    invoke-super/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v3

    or-int/2addr v10, v3

    .line 1701
    return v10

    .line 1603
    .end local v9    # "appName":Ljava/lang/String;
    .end local v14    # "isCameraShow":Z
    .end local v16    # "isInGestureGuide":Z
    .end local v22    # "shouldTans":Z
    :cond_24
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 1612
    .restart local v22    # "shouldTans":Z
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsStatusBarTans:Z

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1613
    sget-boolean v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v3, :cond_26

    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldNotTans isShowLock = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isLauncherShow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_26
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsStatusBarTans:Z

    .line 1615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v21

    .line 1617
    .restart local v21    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    .line 1646
    .end local v21    # "msg":Landroid/os/Message;
    :cond_27
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 1654
    .restart local v21    # "msg":Landroid/os/Message;
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x32

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9

    .line 1668
    .end local v21    # "msg":Landroid/os/Message;
    .restart local v14    # "isCameraShow":Z
    :cond_2a
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 1690
    .restart local v9    # "appName":Ljava/lang/String;
    .restart local v16    # "isInGestureGuide":Z
    :cond_2b
    const/4 v3, 0x0

    goto/16 :goto_b
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v8, 0x1

    .line 386
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 390
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 391
    .local v1, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v3, "com.oppo.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 395
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.END_CALL"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v3, "com.oppo.intent.action.START_SPEECH_ENABLE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string v3, "com.oppo.intent.action.START_SPEECH_DISABLE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v3, "oppo.intent.action.SCREEN_SHOT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 407
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 410
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 413
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 415
    new-instance v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager$WakeLock;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    .line 417
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 418
    .local v2, "telephoneManager":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 421
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oppo.disable.small.window.leather"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLidControlsSleep:Z

    .line 426
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oppo.quick.shot.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    .line 430
    :cond_1
    new-instance v3, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/os/PowerManager;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    .line 433
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->resetState()V

    .line 435
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenDragStatusBarHeight:I

    .line 438
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "notifyLidSwitchWakeLock"

    invoke-virtual {v3, v8, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mNotifyLidWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 440
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 31
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai add for FlashLight"
    .end annotation

    .prologue
    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v27

    if-nez v27, :cond_0

    const/4 v6, 0x1

    .line 741
    .local v6, "down1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v27

    if-nez v27, :cond_1

    const/4 v5, 0x1

    .line 742
    .local v5, "down":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 743
    .local v13, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    .line 744
    .local v9, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    .line 745
    .local v3, "canceled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    .line 750
    .local v20, "repeatCount":I
    if-nez v6, :cond_2

    .line 751
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v13, v0, :cond_2

    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->closeFlashApp()V

    .line 753
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    .line 754
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->RemoveHomeLongPressedR()V

    .line 755
    const-wide/16 v27, -0x1

    .line 1031
    :goto_2
    return-wide v27

    .line 731
    .end local v3    # "canceled":Z
    .end local v5    # "down":Z
    .end local v6    # "down1":Z
    .end local v9    # "flags":I
    .end local v13    # "keyCode":I
    .end local v20    # "repeatCount":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 741
    .restart local v6    # "down1":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 763
    .restart local v3    # "canceled":Z
    .restart local v5    # "down":Z
    .restart local v9    # "flags":I
    .restart local v13    # "keyCode":I
    .restart local v20    # "repeatCount":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    .line 764
    new-instance v27, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct/range {v27 .. v27}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    .line 766
    :cond_3
    if-eqz p1, :cond_c

    .line 768
    if-nez v20, :cond_9

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    const/16 v27, 0x4

    move/from16 v0, v27

    if-eq v13, v0, :cond_5

    :cond_4
    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v13, v0, :cond_9

    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v27

    if-nez v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/IOppoWindowManagerImpl;->isRotatingLw()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 770
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    sget-object v27, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v28, "do not shotscreen when animating or window rotating!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v13, v0, :cond_8

    .line 772
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    .line 774
    :cond_8
    const-wide/16 v27, -0x1

    goto :goto_2

    .line 776
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v27

    if-eqz v27, :cond_c

    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v13, v0, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v27

    if-nez v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/IOppoWindowManagerImpl;->isRotatingLw()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 777
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    sget-object v27, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v28, "do not shotscreen when isCanceled and animating or window rotating!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :cond_b
    const-wide/16 v27, -0x1

    goto/16 :goto_2

    .line 780
    :catch_0
    move-exception v27

    .line 785
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 786
    sget-object v27, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "interceptKeyBeforeDispatching key: win="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "  event = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoScreenshotChordEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_13

    and-int/lit16 v0, v9, 0x400

    move/from16 v27, v0

    if-nez v27, :cond_13

    .line 790
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    move/from16 v27, v0

    if-nez v27, :cond_e

    .line 791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 792
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTime:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x96

    add-long v25, v27, v29

    .line 794
    .local v25, "timeoutTime":J
    cmp-long v27, v16, v25

    if-gez v27, :cond_e

    .line 795
    sub-long v27, v25, v16

    goto/16 :goto_2

    .line 799
    .end local v16    # "now":J
    .end local v25    # "timeoutTime":J
    :cond_e
    const/16 v27, 0x1a

    move/from16 v0, v27

    if-ne v13, v0, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    move/from16 v27, v0

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    .line 801
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 802
    .restart local v16    # "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTime:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x3e8

    add-long v25, v27, v29

    .line 803
    .restart local v25    # "timeoutTime":J
    cmp-long v27, v16, v25

    if-gez v27, :cond_f

    .line 804
    sub-long v27, v25, v16

    goto/16 :goto_2

    .line 808
    .end local v16    # "now":J
    .end local v25    # "timeoutTime":J
    :cond_f
    const/16 v27, 0x19

    move/from16 v0, v27

    if-ne v13, v0, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyConsumedByScreenshotChord:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 810
    if-nez v5, :cond_10

    .line 811
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyConsumedByScreenshotChord:Z

    .line 813
    :cond_10
    const-wide/16 v27, -0x1

    goto/16 :goto_2

    .line 816
    :cond_11
    const/16 v27, 0x1a

    move/from16 v0, v27

    if-ne v13, v0, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerDownKeyConsumedByScreenshotChord:Z

    move/from16 v27, v0

    if-eqz v27, :cond_13

    .line 818
    if-nez v5, :cond_12

    .line 819
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerDownKeyConsumedByScreenshotChord:Z

    .line 821
    :cond_12
    const-wide/16 v27, -0x1

    goto/16 :goto_2

    .line 827
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 828
    and-int/lit16 v0, v9, 0x400

    move/from16 v27, v0

    if-nez v27, :cond_1b

    .line 829
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v27, v0

    if-nez v27, :cond_15

    .line 830
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 832
    .restart local v16    # "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v27

    if-eqz v27, :cond_14

    .line 833
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0xc8

    add-long v25, v27, v29

    .line 837
    .restart local v25    # "timeoutTime":J
    :goto_3
    cmp-long v27, v16, v25

    if-gez v27, :cond_15

    .line 838
    sub-long v27, v25, v16

    goto/16 :goto_2

    .line 835
    .end local v25    # "timeoutTime":J
    :cond_14
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x1f4

    add-long v25, v27, v29

    .restart local v25    # "timeoutTime":J
    goto :goto_3

    .line 842
    .end local v16    # "now":J
    .end local v25    # "timeoutTime":J
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v27, v0

    if-eqz v27, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v27, v0

    if-nez v27, :cond_17

    .line 843
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 845
    .restart local v16    # "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v27

    if-eqz v27, :cond_16

    .line 846
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0xc8

    add-long v25, v27, v29

    .line 850
    .restart local v25    # "timeoutTime":J
    :goto_4
    cmp-long v27, v16, v25

    if-gez v27, :cond_17

    .line 851
    sub-long v27, v25, v16

    goto/16 :goto_2

    .line 848
    .end local v25    # "timeoutTime":J
    :cond_16
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x1f4

    add-long v25, v27, v29

    .restart local v25    # "timeoutTime":J
    goto :goto_4

    .line 855
    .end local v16    # "now":J
    .end local v25    # "timeoutTime":J
    :cond_17
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 856
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 857
    const/16 v27, 0x19

    move/from16 v0, v27

    if-ne v13, v0, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    move/from16 v27, v0

    if-eqz v27, :cond_19

    .line 859
    if-nez v5, :cond_18

    .line 860
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 862
    :cond_18
    const-wide/16 v27, -0x1

    goto/16 :goto_2

    .line 865
    :cond_19
    const/16 v27, 0x18

    move/from16 v0, v27

    if-ne v13, v0, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 867
    if-nez v5, :cond_1a

    .line 868
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    .line 870
    :cond_1a
    const-wide/16 v27, -0x1

    goto/16 :goto_2

    .line 876
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 878
    .local v15, "newEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1c

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 879
    sget-object v27, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "interceptKeyBeforeDispatching newEvent keyCode = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1c
    invoke-virtual {v15}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2e

    .line 885
    if-nez v5, :cond_29

    .line 886
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    .line 892
    .local v10, "homeWasLongPressed":Z
    if-nez v10, :cond_29

    .line 893
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomePressed:Z

    .line 894
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    .line 896
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v21

    .line 897
    .local v21, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v21, :cond_1d

    .line 898
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 906
    .end local v21    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1d
    :goto_5
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomePressed:Z

    .line 907
    if-nez v3, :cond_28

    .line 911
    const/4 v11, 0x0

    .line 913
    .local v11, "incomingRinging":Z
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v24

    .line 914
    .local v24, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v24, :cond_1e

    .line 915
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    .line 921
    .end local v24    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 930
    .local v18, "nowTime":J
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 931
    .local v22, "str":Ljava/lang/String;
    if-eqz v11, :cond_22

    if-eqz p1, :cond_1f

    const-string v27, "com.android.incallui/com.android.incallui.OppoInCallActivity"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_20

    const-string v27, "com.android.incallui/com.android.incallui.OppoSlidingDrawerInCallActivity"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    move-wide/from16 v27, v0

    sub-long v27, v18, v27

    const-wide/16 v29, 0x7d0

    cmp-long v27, v27, v29

    if-gez v27, :cond_22

    .line 933
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_21

    sget-object v27, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v28, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    .end local v11    # "incomingRinging":Z
    .end local v18    # "nowTime":J
    .end local v22    # "str":Ljava/lang/String;
    :cond_21
    :goto_7
    const-wide/16 v27, -0x1

    goto/16 :goto_2

    .line 900
    :catch_1
    move-exception v7

    .line 901
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v27, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v28, "RemoteException when showing recent apps"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 903
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_5

    .line 917
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v11    # "incomingRinging":Z
    :catch_2
    move-exception v8

    .line 918
    .local v8, "ex":Landroid/os/RemoteException;
    sget-object v27, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v28, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 947
    .end local v8    # "ex":Landroid/os/RemoteException;
    .restart local v18    # "nowTime":J
    .restart local v22    # "str":Ljava/lang/String;
    :cond_22
    const-string v27, "persist.sys.oppo.region"

    const-string v28, "CN"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 949
    .local v4, "currRegion":Ljava/lang/String;
    const-string v27, "CN"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_24

    .line 950
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 952
    .restart local v16    # "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    move-wide/from16 v27, v0

    sub-long v27, v16, v27

    const-wide/16 v29, 0xfa

    cmp-long v27, v27, v29

    if-gez v27, :cond_23

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleDoubleClickOnHome()V

    .line 959
    :goto_8
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    goto :goto_7

    .line 956
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    const-wide/16 v29, 0xfa

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 964
    .end local v16    # "now":J
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "oppo_double_press_home_lock_screen"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_25

    const/4 v12, 0x1

    .line 966
    .local v12, "isDoubleHomeEnable":Z
    :goto_9
    if-eqz v12, :cond_27

    .line 967
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_26

    .line 968
    const-wide/16 v27, 0xc8

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleDoubleKeyEvents(J)V

    goto/16 :goto_7

    .line 964
    .end local v12    # "isDoubleHomeEnable":Z
    :cond_25
    const/4 v12, 0x0

    goto :goto_9

    .line 970
    .restart local v12    # "isDoubleHomeEnable":Z
    :cond_26
    const-wide/16 v27, 0xfa

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleDoubleKeyEvents(J)V

    goto/16 :goto_7

    .line 973
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->launchHomeFromHotKey()V

    goto/16 :goto_7

    .line 980
    .end local v4    # "currRegion":Ljava/lang/String;
    .end local v11    # "incomingRinging":Z
    .end local v12    # "isDoubleHomeEnable":Z
    .end local v18    # "nowTime":J
    .end local v22    # "str":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_21

    sget-object v27, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v28, "Ignoring HOME; event canceled."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 987
    .end local v10    # "homeWasLongPressed":Z
    :cond_29
    const/4 v14, 0x0

    .line 988
    .local v14, "keyguardOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2a

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v14

    .line 992
    :cond_2a
    if-eqz v5, :cond_2b

    if-eqz v14, :cond_2b

    .line 993
    if-nez v20, :cond_2c

    .line 1011
    :cond_2b
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v27

    goto/16 :goto_2

    .line 995
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x80

    move/from16 v27, v0

    if-eqz v27, :cond_2b

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const-string v28, "oppo.disable.small.window.leather"

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    move/from16 v27, v0

    if-nez v27, :cond_2d

    .line 999
    sget-object v27, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v28, "leather is closed. Ignore HomeLongPress startup flashApp!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const-wide/16 v27, -0x1

    goto/16 :goto_2

    .line 1004
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->closeFlashApp()V

    .line 1005
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->openFlashApp()V

    .line 1006
    const-wide/16 v27, -0x1

    goto/16 :goto_2

    .line 1015
    .end local v14    # "keyguardOn":Z
    :cond_2e
    const/16 v27, 0x52

    move/from16 v0, v27

    if-ne v13, v0, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2f

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->keyguardOn()Z

    move-result v14

    .line 1019
    .restart local v14    # "keyguardOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "phone"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/TelephonyManager;

    .line 1020
    .local v23, "telephoneManager":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_2f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x80

    move/from16 v27, v0

    if-eqz v27, :cond_2f

    if-nez v14, :cond_2f

    .line 1022
    if-eqz p1, :cond_2f

    const-string v27, "com.oppo.speechassist"

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2f

    const-string v27, "com.oppo.drivemode"

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2f

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v27

    if-nez v27, :cond_2f

    .line 1025
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuKey()V

    .line 1031
    .end local v14    # "keyguardOn":Z
    .end local v23    # "telephoneManager":Landroid/telephony/TelephonyManager;
    :cond_2f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-super {v0, v1, v15, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v27

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 21
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 446
    .local v10, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v17

    if-nez v17, :cond_2

    const/4 v5, 0x1

    .line 448
    .local v5, "down":Z
    :goto_0
    const/4 v14, 0x0

    .line 450
    .local v14, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isScreenoffGestureKey(I)Z

    move-result v17

    if-eqz v17, :cond_0

    if-eqz v5, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->updateGestureInfo()V

    .line 454
    :cond_0
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    if-nez v5, :cond_1

    .line 455
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    .line 456
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    .line 461
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    move-object/from16 v17, v0

    sget-boolean v17, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    if-eqz v17, :cond_3

    .line 462
    sget-object v17, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v18, "OppoPhoneWindowManager block key at shutdown/restart sequence"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/16 v17, 0x0

    .line 723
    :goto_1
    return v17

    .line 446
    .end local v5    # "down":Z
    .end local v14    # "result":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 468
    .restart local v5    # "down":Z
    .restart local v14    # "result":I
    :cond_3
    const/16 v17, 0x1a

    move/from16 v0, v17

    if-ne v0, v10, :cond_11

    .line 469
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 470
    .local v16, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v16, :cond_11

    .line 472
    :try_start_0
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v17

    if-nez v17, :cond_4

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 475
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 477
    .local v4, "canceled":Z
    const/high16 v17, 0x1000000

    and-int v17, v17, p2

    if-eqz v17, :cond_5

    const/4 v7, 0x1

    .line 485
    .local v7, "isInjected":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    const/4 v11, 0x0

    .line 490
    .local v11, "keyguardActive":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemBooted:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 492
    const/16 v17, 0x0

    goto :goto_1

    .line 477
    .end local v7    # "isInjected":Z
    .end local v11    # "keyguardActive":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 485
    .restart local v7    # "isInjected":Z
    :cond_6
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v11

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v11

    goto :goto_3

    .line 495
    .restart local v11    # "keyguardActive":Z
    :cond_8
    sget-boolean v17, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v17, :cond_9

    .line 496
    sget-object v17, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "interceptKeyTq keycode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " screenIsOn="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " keyguardActive="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_9
    if-eqz v5, :cond_a

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-eqz v17, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v17

    if-nez v17, :cond_a

    .line 502
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 506
    :cond_a
    const/16 v17, 0x1a

    move/from16 v0, v17

    if-ne v10, v0, :cond_b

    .line 507
    or-int/lit8 p2, p2, 0x1

    .line 509
    :cond_b
    and-int/lit8 v17, p2, 0x3

    if-eqz v17, :cond_f

    const/4 v8, 0x1

    .line 523
    .local v8, "isWakeKey":Z
    :goto_4
    if-eqz p3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHeadless:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    :cond_c
    if-eqz v7, :cond_10

    if-nez v8, :cond_10

    .line 526
    :cond_d
    const/4 v14, 0x1

    .line 537
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptPowerKeyForTelephone(Landroid/view/KeyEvent;IZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    move/from16 v17, v14

    .line 539
    goto/16 :goto_1

    .line 509
    .end local v8    # "isWakeKey":Z
    :cond_f
    const/4 v8, 0x0

    goto :goto_4

    .line 530
    .restart local v8    # "isWakeKey":Z
    :cond_10
    const/4 v14, 0x0

    .line 531
    if-eqz v5, :cond_e

    if-eqz v8, :cond_e

    .line 532
    or-int/lit8 v14, v14, 0x2

    goto :goto_5

    .line 541
    .end local v4    # "canceled":Z
    .end local v7    # "isInjected":Z
    .end local v8    # "isWakeKey":Z
    .end local v11    # "keyguardActive":Z
    :catch_0
    move-exception v6

    .line 542
    .local v6, "ex":Landroid/os/RemoteException;
    sget-object v17, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v18, "ITelephony threw RemoteException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v16    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    const/16 v17, 0x19

    move/from16 v0, v17

    if-eq v0, v10, :cond_12

    const/16 v17, 0x18

    move/from16 v0, v17

    if-eq v0, v10, :cond_12

    const/16 v17, 0xa4

    move/from16 v0, v17

    if-ne v0, v10, :cond_16

    .line 551
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemBooted:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    .line 553
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 556
    :cond_13
    if-eqz v5, :cond_14

    .line 557
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 558
    .restart local v16    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v16, :cond_14

    .line 562
    new-instance v9, Landroid/content/Intent;

    const-string v17, "SILENCE_ACTION_FOR_OPPO_SPEECH"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v9, "it":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 564
    sget-object v17, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v18, "send broadcast silence action for speechassist."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :try_start_1
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    if-eqz v17, :cond_14

    .line 578
    .end local v9    # "it":Landroid/content/Intent;
    .end local v16    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "oppo.sky.gesture.support"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    .line 579
    .local v15, "supportSkyGesture":Z
    if-eqz v15, :cond_16

    .line 580
    if-eqz v5, :cond_15

    if-nez p3, :cond_15

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->dealSkyGestureDown()V

    .line 583
    :cond_15
    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->isVolumeLongPress()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->dealSkyGestureUp()V

    .line 594
    .end local v15    # "supportSkyGesture":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isScreenoffGestureKey(I)Z

    move-result v17

    if-eqz v17, :cond_1b

    if-eqz v5, :cond_1b

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 596
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->enableProximitySensor()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 599
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    move-object/from16 v17, v0

    const-wide/16 v19, 0x3e8

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    sget-object v17, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mProximitySensorActive = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_18

    if-eqz v5, :cond_18

    .line 609
    const-string v17, "oppo.dt.wakeupnum"

    const-string v19, "oppo.dt.wakeupnum"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLidState:I

    move/from16 v17, v0

    if-nez v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureDoubleTap()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 615
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    .line 619
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->disableProximitySensor()V

    .line 620
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 624
    :cond_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v12

    .line 626
    .local v12, "newEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 627
    sget-object v17, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "interceptKeyBeforeQueueing"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1e

    .line 633
    const/16 v17, 0x19

    move/from16 v0, v17

    if-ne v10, v0, :cond_1d

    .line 634
    if-eqz v5, :cond_1d

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    if-nez v17, :cond_1d

    .line 638
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    .line 640
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 641
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptUpDownChord()V

    .line 648
    :cond_1d
    const/16 v17, 0x18

    move/from16 v0, v17

    if-ne v10, v0, :cond_1e

    .line 649
    if-eqz v5, :cond_1e

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    if-nez v17, :cond_1e

    .line 653
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 655
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    .line 656
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptUpDownChord()V

    .line 665
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-super {v0, v12, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v14

    .line 673
    invoke-virtual {v12}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 674
    .local v13, "newKeyCode":I
    invoke-virtual {v12}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 675
    .restart local v4    # "canceled":Z
    const/16 v17, 0x33a

    move/from16 v0, v17

    if-ne v0, v13, :cond_26

    .line 676
    and-int/lit8 v14, v14, 0x1

    .line 677
    if-eqz v5, :cond_22

    .line 678
    if-eqz p3, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    move/from16 v17, v0

    if-nez v17, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    if-nez v17, :cond_1f

    .line 680
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTime:J

    .line 682
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerDownKeyConsumedByScreenshotChord:Z

    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptScreenshotChord()V

    .line 686
    :cond_1f
    if-nez p3, :cond_21

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptPowerKeyDown(Z)V

    :cond_20
    :goto_9
    move/from16 v17, v14

    .line 723
    goto/16 :goto_1

    .line 570
    .end local v4    # "canceled":Z
    .end local v12    # "newEvent":Landroid/view/KeyEvent;
    .end local v13    # "newKeyCode":I
    .restart local v9    # "it":Landroid/content/Intent;
    .restart local v16    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v6

    .line 571
    .restart local v6    # "ex":Landroid/os/RemoteException;
    sget-object v17, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v18, "ITelephony threw RemoteException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 620
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v9    # "it":Landroid/content/Intent;
    .end local v16    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catchall_0
    move-exception v17

    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v17

    .line 686
    .restart local v4    # "canceled":Z
    .restart local v12    # "newEvent":Landroid/view/KeyEvent;
    .restart local v13    # "newKeyCode":I
    :cond_21
    const/16 v17, 0x0

    goto :goto_8

    .line 690
    :cond_22
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    .line 691
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 692
    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_25

    :cond_23
    const/16 v17, 0x1

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 693
    :cond_24
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto :goto_9

    .line 692
    :cond_25
    const/16 v17, 0x0

    goto :goto_a

    .line 695
    :cond_26
    const/16 v17, 0x19

    move/from16 v0, v17

    if-eq v0, v13, :cond_27

    const/16 v17, 0x18

    move/from16 v0, v17

    if-eq v0, v13, :cond_27

    const/16 v17, 0xa4

    move/from16 v0, v17

    if-ne v0, v13, :cond_20

    .line 699
    :cond_27
    const/16 v17, 0x19

    move/from16 v0, v17

    if-ne v0, v13, :cond_28

    .line 700
    if-eqz v5, :cond_29

    .line 701
    if-eqz p3, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    move/from16 v17, v0

    if-nez v17, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    if-nez v17, :cond_28

    .line 703
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    .line 704
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTime:J

    .line 705
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyConsumedByScreenshotChord:Z

    .line 706
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 707
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptScreenshotChord()V

    .line 715
    :cond_28
    :goto_b
    if-eqz v5, :cond_20

    .line 717
    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->disableNotificationAlert()V

    goto/16 :goto_9

    .line 710
    :cond_29
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_b

    .line 600
    .end local v4    # "canceled":Z
    .end local v12    # "newEvent":Landroid/view/KeyEvent;
    .end local v13    # "newKeyCode":I
    :catch_2
    move-exception v17

    goto/16 :goto_7
.end method

.method public isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    return v0
.end method

.method launchHomeFromHotKey()V
    .locals 1

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    if-eqz v0, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->removePowerView()V

    .line 2312
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 2313
    return-void
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x0

    .line 2410
    if-eqz p1, :cond_1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x8fd

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemTop:I

    iget v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 2412
    iput v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemTop:I

    .line 2413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isDragScreenBackground:Z

    .line 2418
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2419
    return-void

    .line 2414
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isDragScreenBackground:Z

    if-eqz v0, :cond_0

    .line 2415
    iget v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemTop:I

    .line 2416
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isDragScreenBackground:Z

    goto :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1707
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.disable.small.window.leather"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1708
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1713
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHeadless:Z

    if-nez v4, :cond_0

    .line 1716
    if-eqz p3, :cond_2

    move v1, v2

    .line 1718
    .local v1, "newLidState":I
    :goto_1
    iget v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    if-ne v1, v4, :cond_3

    .line 1719
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "notifyLidSwitchChanged newLidState == mLidState"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "newLidState":I
    :cond_2
    move v1, v3

    .line 1716
    goto :goto_1

    .line 1724
    .restart local v1    # "newLidState":I
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-eqz v4, :cond_6

    .line 1725
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.oppo.intent.action.LID_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1728
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "lid_state"

    iget v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    if-ne v1, v2, :cond_7

    :goto_2
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1731
    if-ne v1, v2, :cond_4

    .line 1732
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mNotifyLidWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1734
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1735
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoPhoneWindowManager notifyLidSwitchChanged sendBroadcast com.oppo.intent.action.LID_STATE_CHANGED, newLidState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_5
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isOffsetState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1740
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oppo.intent.action.KEY_EXIT_DRAG_WINDOW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1744
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1746
    iput v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    goto :goto_0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_7
    move v3, v2

    .line 1728
    goto :goto_2

    :cond_8
    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    goto :goto_2
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1442
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1444
    .local v0, "hapticsDisabled":Z
    :cond_0
    if-nez v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 1445
    invoke-super {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    .line 1447
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2018
    const/16 v2, 0x7d4

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v3, :cond_1

    .line 2019
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2020
    if-eqz p1, :cond_0

    .line 2021
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 2022
    .local v0, "res":I
    sget-boolean v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareAddWindowLw res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    .end local v0    # "res":I
    :cond_0
    :goto_0
    return v1

    .line 2026
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    goto :goto_0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 2035
    const/16 v0, 0x7d4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_2

    .line 2036
    sget-boolean v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWindowLw win ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2038
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2039
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2040
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->hideScrim()V

    .line 2045
    :cond_1
    :goto_0
    return-void

    .line 2043
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public rm_add_StatusBarRunnable(I)V
    .locals 4
    .param p1, "type"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oukun add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1877
    if-ne p1, v2, :cond_3

    .line 1878
    const/high16 v0, 0x80000

    iget v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastSystemUiFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopIsFullscreen:Z

    if-nez v0, :cond_1

    .line 1903
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1883
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1886
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    .line 1887
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0

    .line 1895
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1896
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1897
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    if-eqz v0, :cond_0

    .line 1898
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    .line 1899
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0
.end method

.method public screenTurnedOff(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 1415
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    .line 1418
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->screenTurnedOff(I)V

    .line 1424
    :cond_0
    invoke-static {}, Landroid/view/OppoScreenShotUtil;->resumeDeliverPointerEvent()V

    .line 1425
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 1
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 1428
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1431
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->screenTurningOn()V

    .line 1437
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->closeFlashApp()V

    .line 1439
    return-void
.end method

.method final sendIsCameraModeIntent(Z)V
    .locals 4
    .param p1, "isCameraMode"    # Z

    .prologue
    .line 2236
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===sendIsCameraModeIntent=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_2

    .line 2238
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIsCameraModeIntent:isCameraMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", can\'t send broadcast before boot completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_1
    :goto_0
    return-void

    .line 2243
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2244
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "iscameramode"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2245
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 2246
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2244
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final sendIsHomeModeIntent(ZZ)V
    .locals 5
    .param p1, "isHomeMode"    # Z
    .param p2, "isSemipermeable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2221
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2222
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIsHomeModeIntent:isHomeMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", can\'t send broadcast before boot completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_0
    :goto_0
    return-void

    .line 2227
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HOME_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2228
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "ishomemode"

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2229
    const-string v1, "isSemipermeable"

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2230
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2231
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 2228
    goto :goto_1

    :cond_3
    move v2, v3

    .line 2229
    goto :goto_2
.end method

.method final sendIsInGestureGuideIntent(Z)V
    .locals 3
    .param p1, "isInGestureGuideMode"    # Z

    .prologue
    .line 2253
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2254
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "GestureGuideIntent can\'t send broadcast before boot completed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_0
    :goto_0
    return-void

    .line 2257
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.GESTUREGUIDE_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2258
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "isInGestureGuideMode"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2259
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2260
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2258
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 2269
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_0

    .line 2282
    :goto_0
    return-void

    .line 2272
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$11;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showGlobalActionsDialog()V
    .locals 3

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    if-nez v0, :cond_0

    .line 2297
    new-instance v0, Lcom/android/internal/policy/impl/OppoGlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    .line 2299
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2300
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->setSystemUiVisibility(Z)V

    .line 2304
    :goto_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    .line 2305
    return-void

    .line 2302
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->setSystemUiVisibility(Z)V

    goto :goto_0
.end method

.method public showStatusBar()V
    .locals 4
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oukun add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1860
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    .line 1861
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatusBar.isVisibleLw() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bForceShowStatusBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1863
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    .line 1864
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 1865
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1868
    :cond_1
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 1408
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V

    .line 1410
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1411
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 1412
    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2318
    sparse-switch p1, :sswitch_data_0

    .line 2334
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    :goto_0
    return v0

    .line 2320
    :sswitch_0
    const/16 v0, 0x64

    goto :goto_0

    .line 2322
    :sswitch_1
    const/16 v0, 0x65

    goto :goto_0

    .line 2324
    :sswitch_2
    const/16 v0, 0x66

    goto :goto_0

    .line 2326
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 2327
    const/16 v0, 0x67

    goto :goto_0

    .line 2330
    :cond_1
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 2331
    const/16 v0, 0x68

    goto :goto_0

    .line 2318
    nop

    :sswitch_data_0
    .sparse-switch
        0x7e3 -> :sswitch_3
        0x7e8 -> :sswitch_4
        0x8fc -> :sswitch_1
        0x8fe -> :sswitch_2
        0x8ff -> :sswitch_0
    .end sparse-switch
.end method
