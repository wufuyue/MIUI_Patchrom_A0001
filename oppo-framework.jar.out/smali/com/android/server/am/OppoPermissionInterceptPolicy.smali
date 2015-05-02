.class public Lcom/android/server/am/OppoPermissionInterceptPolicy;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;,
        Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;,
        Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;,
        Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;,
        Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DO_CHECK_PERMISSION:I = 0x0

.field private static KEY_CTSVERSION_PROPERTIES:Ljava/lang/String; = null

.field private static KEY_PERMISSION_PROPERTIES:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OppoPermissionInterceptPolicy"

.field private static final UPDATE_PERMISSION_CHOICE:I = 0x1

.field private static volatile isPermissionInterceptEnabled:Z

.field private static mLastTopUid:I

.field private static mNotifyMask:I

.field private static mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

.field private static sPermissionCheckMsgList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;",
            ">;"
        }
    .end annotation
.end field

.field private static sPermissionsPrompt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentCountry:Ljava/lang/String;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPendingMsgHandler:Landroid/os/Handler;

.field private mPendingMsgThread:Landroid/os/HandlerThread;

.field private mPermissionHandler:Landroid/os/Handler;

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSaveCheckBox:Landroid/widget/CheckBox;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    sput-boolean v1, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    .line 70
    const-string v0, "persist.oppo.ctsversion"

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_CTSVERSION_PROPERTIES:Ljava/lang/String;

    .line 71
    const-string v0, "persist.sys.permission.enable"

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_PERMISSION_PROPERTIES:Ljava/lang/String;

    .line 72
    sget-object v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_PERMISSION_PROPERTIES:Ljava/lang/String;

    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_CTSVERSION_PROPERTIES:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    .line 90
    sput v1, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mNotifyMask:I

    .line 91
    sput v1, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mLastTopUid:I

    .line 144
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;

    return-void

    :cond_0
    move v0, v1

    .line 72
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xa

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PermissionThread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 149
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PermissionMsgPendingThread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgThread:Landroid/os/HandlerThread;

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PermissionTimerThread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mTimerThread:Landroid/os/HandlerThread;

    .line 167
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    .line 168
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 169
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    .line 170
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.cmcc.optr"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sput-boolean v3, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    .line 173
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_PERMISSION_PROPERTIES:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPm:Landroid/content/pm/IPackageManager;

    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentLanguage:Ljava/lang/String;

    .line 176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentCountry:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc07040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionsPrompt:Ljava/util/List;

    .line 179
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 180
    new-instance v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;

    .line 223
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 224
    new-instance v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$2;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$2;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgHandler:Landroid/os/Handler;

    .line 259
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mTimerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 260
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mTimerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mTimerHandler:Landroid/os/Handler;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPermissionMask(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->processPermission(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPm:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->queryPackagePermissions(Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->savePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->showPermissionWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->showWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mSaveCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static adjustThirdList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p0, "thirdList"    # Ljava/util/List;
    .param p1, "res"    # Ljava/util/List;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 747
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 748
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 749
    .local v5, "thirdApk":Ljava/lang/Object;
    instance-of v6, v5, Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 750
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 751
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 752
    .local v4, "s_ri":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 753
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 756
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "s_ri":Ljava/lang/String;
    :cond_1
    instance-of v6, v5, Lcom/android/server/am/BroadcastFilter;

    if-eqz v6, :cond_0

    move-object v0, v5

    .line 757
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 758
    .local v0, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 759
    .local v3, "s_bf":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 760
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 765
    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v3    # "s_bf":Ljava/lang/String;
    .end local v5    # "thirdApk":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V
    .locals 2
    .param p1, "packagePermission"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .param p2, "permissionMask"    # I
    .param p3, "choice"    # I

    .prologue
    .line 322
    if-nez p1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    if-nez p3, :cond_2

    .line 326
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    or-int/2addr v0, p2

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    .line 327
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    .line 328
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    goto :goto_0

    .line 329
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p3, :cond_3

    .line 330
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    .line 331
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    or-int/2addr v0, p2

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    .line 332
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    goto :goto_0

    .line 333
    :cond_3
    const/4 v0, 0x2

    if-ne v0, p3, :cond_0

    .line 334
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    .line 335
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    .line 336
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    or-int/2addr v0, p2

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 160
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .line 163
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    return-object v0
.end method

.method private getPackageLabel(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 6
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 413
    const/4 v2, 0x0

    .line 414
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 421
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 423
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 424
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 429
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "OppoPermissionInterceptPolicy"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPermissionMask(Ljava/lang/String;)I
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "mask":I
    sget-object v2, Landroid/content/pm/OppoPermissionManager;->sInterceptingPermissions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 343
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 344
    const/4 v2, 0x1

    shl-int v1, v2, v0

    .line 346
    :cond_0
    sget-boolean v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 347
    const-string v2, "OppoPermissionInterceptPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPermissionMask, permission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    return v1
.end method

.method private getPermissionPromptStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "language":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "country":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentLanguage:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentCountry:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 437
    :cond_0
    iput-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentLanguage:Ljava/lang/String;

    .line 438
    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentCountry:Ljava/lang/String;

    .line 439
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc07040d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionsPrompt:Ljava/util/List;

    .line 442
    :cond_1
    sget-object v4, Landroid/content/pm/OppoPermissionManager;->sInterceptingPermissions:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 443
    .local v1, "index":I
    const-string v3, ""

    .line 444
    .local v3, "text":Ljava/lang/String;
    const/4 v4, -0x1

    if-le v1, v4, :cond_2

    sget-object v4, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionsPrompt:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 445
    sget-object v4, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionsPrompt:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "text":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 447
    .restart local v3    # "text":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private isScreenOn()Z
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPowerManager:Landroid/os/PowerManager;

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 503
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyWaitingApp(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;I)V
    .locals 5
    .param p1, "pcm"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    .param p2, "res"    # I

    .prologue
    .line 452
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->callback:Lcom/android/server/am/OppoPermissionCallback;

    .line 453
    .local v0, "callBack":Lcom/android/server/am/OppoPermissionCallback;
    if-eqz v0, :cond_1

    .line 454
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isWaitingPermissionChoice:Z

    .line 455
    sget-boolean v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 456
    const-string v2, "OppoPermissionInterceptPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyWaitingApp, pcm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v4, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->token:I

    invoke-virtual {v0, v2, v3, p2, v4}, Lcom/android/server/am/OppoPermissionCallback;->notifyApplication(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v0    # "callBack":Lcom/android/server/am/OppoPermissionCallback;
    :cond_1
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OppoPermissionInterceptPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processPermission(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V
    .locals 5
    .param p1, "pcm"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    .param p2, "res"    # I
    .param p3, "save"    # Z

    .prologue
    .line 465
    sget-boolean v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 466
    const-string v2, "OppoPermissionInterceptPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPermission, pcm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", save="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    monitor-enter p0

    .line 468
    if-eqz p3, :cond_1

    .line 469
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    iget v3, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permissionMask:I

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    .line 470
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    iget v3, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permissionMask:I

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    .line 471
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    invoke-direct {p0, v2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->savePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V

    .line 472
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->isSelected:I

    iget v4, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permissionMask:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->isSelected:I

    .line 475
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->notifyWaitingApp(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;I)V

    .line 478
    sget-object v3, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;

    monitor-enter v3

    .line 479
    :try_start_1
    sget-object v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 480
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 481
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .line 482
    .local v1, "temp":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    invoke-virtual {p1, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->equals(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 483
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v4, v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v2, v4, :cond_3

    .line 486
    const-string v2, "OppoPermissionInterceptPolicy"

    const-string v4, "pcm.pr.pid != temp.pr.pid"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 489
    invoke-direct {p0, v1, p2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->notifyWaitingApp(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;I)V

    goto :goto_0

    .line 493
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;>;"
    .end local v1    # "temp":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 475
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 492
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;>;"
    :cond_4
    :try_start_3
    sget-object v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 494
    return-void
.end method

.method private queryPackagePermissions(Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 353
    const-string v3, "package=?"

    .line 354
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 355
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/content/pm/OppoPermissionManager;->PERMISSIONS_PROVIDER_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 358
    .local v6, "cr":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 359
    .local v7, "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    if-eqz v6, :cond_1

    .line 360
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    new-instance v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .end local v7    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    invoke-direct {v7, p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;)V

    .line 362
    .restart local v7    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->id:I

    .line 363
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    .line 364
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    .line 365
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    .line 366
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    .line 367
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->trust:I

    .line 369
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_1
    return-object v7
.end method

.method public static reorderReceiverList(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p0, "receivers"    # Ljava/util/List;

    .prologue
    .line 768
    if-nez p0, :cond_1

    .line 769
    const/4 v7, 0x0

    .line 809
    :cond_0
    return-object v7

    .line 771
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v9, "systemList":Ljava/util/List;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v11, "thirdList":Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v7, "res":Ljava/util/List;
    const/4 v12, 0x5

    new-array v6, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "com.qihoo360.mobilesafe"

    aput-object v13, v6, v12

    const/4 v12, 0x1

    const-string v13, "com.anguanjia.safe"

    aput-object v13, v6, v12

    const/4 v12, 0x2

    const-string v13, "com.blovestorm"

    aput-object v13, v6, v12

    const/4 v12, 0x3

    const-string v13, "com.cootek.smartdialer"

    aput-object v13, v6, v12

    const/4 v12, 0x4

    const-string v13, "com.sg.sledog"

    aput-object v13, v6, v12

    .line 776
    .local v6, "packageNames":[Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 777
    .local v10, "temp":Ljava/lang/Object;
    instance-of v12, v10, Landroid/content/pm/ResolveInfo;

    if-eqz v12, :cond_4

    move-object v8, v10

    .line 778
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 779
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_3

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_3

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_3

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3

    .line 783
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 785
    :cond_3
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 787
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    instance-of v12, v10, Lcom/android/server/am/BroadcastFilter;

    if-eqz v12, :cond_2

    move-object v1, v10

    .line 788
    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    .line 789
    .local v1, "bf":Lcom/android/server/am/BroadcastFilter;
    if-eqz v1, :cond_5

    iget-object v12, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v12, :cond_5

    iget-object v12, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v12, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_5

    iget-object v12, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v12, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_5

    iget-object v12, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v12, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_5

    .line 792
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 794
    :cond_5
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 799
    .end local v1    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v10    # "temp":Ljava/lang/Object;
    :cond_6
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_7

    aget-object v5, v0, v2

    .line 800
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v11, v7, v5}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->adjustThirdList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 803
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 804
    .local v4, "o":Ljava/lang/Object;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 806
    .end local v4    # "o":Ljava/lang/Object;
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 807
    .restart local v4    # "o":Ljava/lang/Object;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private savePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V
    .locals 6
    .param p1, "packagePermission"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .prologue
    .line 375
    const-string v0, "package=?"

    .line 376
    .local v0, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 377
    .local v1, "selectionArgs":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "accept"

    iget v4, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v3, "reject"

    iget v4, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v3, "prompt"

    iget v4, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    sget-boolean v3, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 382
    const-string v3, "OppoPermissionInterceptPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePermissionChoice, values="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/content/pm/OppoPermissionManager;->PERMISSIONS_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 385
    return-void
.end method

.method private showPermissionWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    .locals 2
    .param p1, "pcm"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mTimerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$3;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method

.method private final showWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    .locals 19
    .param p1, "pcm"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .prologue
    .line 516
    sget-boolean v3, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 517
    const-string v3, "OppoPermissionInterceptPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showWindow, pcm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0xc09043d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 521
    .local v12, "parentView":Landroid/view/View;
    const v3, 0xc02046f

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 522
    .local v14, "permissiomPrompt":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPackageLabel(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v11

    .line 523
    .local v11, "packageLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const v4, 0xc040484

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 524
    .local v18, "securitystr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPermissionPromptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 525
    .local v13, "perimissionLabel":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    const v3, 0xc020471

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mSaveCheckBox:Landroid/widget/CheckBox;

    .line 529
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    const-string v4, "android.permission.READ_SMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    const-string v4, "android.permission.READ_MMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    const-string v4, "android.permission.WRITE_MMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 533
    :cond_1
    const-string v3, "OppoPermissionInterceptPolicy"

    const-string v4, "when permission is SMS,owWindow, set checkbox is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mSaveCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 543
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const v4, 0xc040487

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 544
    .local v17, "rejectStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const v4, 0xc040488

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 545
    .local v8, "acceptStr":Ljava/lang/String;
    new-instance v2, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;

    const-wide/16 v4, 0x4e20

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;JJ)V

    .line 546
    .local v2, "mCountDownTimer":Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const v4, 0xc030007

    invoke-direct {v9, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 548
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 549
    new-instance v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v2, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$4;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    invoke-virtual {v9, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 561
    new-instance v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v2, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const v4, 0xc040483

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 574
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 575
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    .line 576
    .local v15, "permissionChoiceDialog":Landroid/app/AlertDialog;
    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 577
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v3, "Permission Intercept"

    invoke-virtual {v10, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 578
    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 581
    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 583
    const/4 v3, -0x2

    invoke-virtual {v15, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v16

    .line 584
    .local v16, "rejectBtn":Landroid/widget/Button;
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->rejectBtn:Landroid/widget/Button;

    .line 585
    iput-object v15, v2, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->permissionChoiceDialog:Landroid/app/AlertDialog;

    .line 586
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .line 587
    invoke-virtual {v2}, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 588
    return-void
.end method


# virtual methods
.method public checkPermissionForProc(Ljava/lang/String;IIILcom/android/server/am/OppoPermissionCallback;)I
    .locals 12
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "token"    # I
    .param p5, "callback"    # Lcom/android/server/am/OppoPermissionCallback;

    .prologue
    .line 265
    sget-boolean v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 266
    const-string v2, "OppoPermissionInterceptPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPermissionForProc, permission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    const/4 v10, 0x3

    .line 269
    .local v10, "result":I
    const/16 v2, 0x2710

    if-lt p3, v2, :cond_1

    sget-boolean v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    if-nez v2, :cond_2

    :cond_1
    move v11, v10

    .line 289
    .end local v10    # "result":I
    .local v11, "result":I
    :goto_0
    return v11

    .line 273
    .end local v11    # "result":I
    .restart local v10    # "result":I
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 274
    .local v3, "lock":Ljava/lang/Object;
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :try_start_1
    new-instance v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/Object;Ljava/lang/String;IIILcom/android/server/am/OppoPermissionCallback;)V

    .line 277
    .local v1, "queryRunnable":Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 279
    iget v10, v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 280
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v1    # "queryRunnable":Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;
    .end local v3    # "lock":Ljava/lang/Object;
    :goto_1
    sget-boolean v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 288
    const-string v2, "OppoPermissionInterceptPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPermissionForProc, return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v11, v10

    .line 289
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto :goto_0

    .line 280
    .end local v11    # "result":I
    .restart local v3    # "lock":Ljava/lang/Object;
    .restart local v10    # "result":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 281
    .end local v3    # "lock":Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 282
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    const/4 v10, 0x3

    goto :goto_1
.end method

.method public getProcessForPackageName(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 391
    .local v1, "pr":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    monitor-exit v3

    .line 397
    .end local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 389
    .restart local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 396
    .end local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit v3

    .line 397
    const/4 v1, 0x0

    goto :goto_1

    .line 396
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getProcessForPid(I)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 401
    iget-object v3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 404
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v2, p1, :cond_0

    .line 405
    monitor-exit v3

    .line 409
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 402
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 408
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit v3

    .line 409
    const/4 v1, 0x0

    goto :goto_1

    .line 408
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isPermissionInterceptEnabled()Z
    .locals 1

    .prologue
    .line 317
    sget-boolean v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    return v0
.end method

.method public setPermissionInterceptEnable(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 310
    sget-boolean v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 311
    sput-boolean p1, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    .line 312
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_PERMISSION_PROPERTIES:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    return-void
.end method

.method public updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "choice"    # I

    .prologue
    .line 293
    sget-boolean v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 294
    const-string v2, "OppoPermissionInterceptPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePermissionChoice, packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", choice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 299
    :cond_2
    new-instance v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$1;)V

    .line 300
    .local v1, "umd":Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;
    iput-object p1, v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->packageName:Ljava/lang/String;

    .line 301
    iput-object p2, v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->permission:Ljava/lang/String;

    .line 302
    iput p3, v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->choice:I

    .line 303
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 304
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 305
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
