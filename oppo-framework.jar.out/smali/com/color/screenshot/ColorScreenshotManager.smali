.class public final Lcom/color/screenshot/ColorScreenshotManager;
.super Ljava/lang/Object;
.source "ColorScreenshotManager.java"


# static fields
.field private static final DBG:Z = false

.field public static final NAVIGATIONBAR_VISIBLE:Ljava/lang/String; = "navigationbar_visible"

.field public static final STATUSBAR_VISIBLE:Ljava/lang/String; = "statusbar_visible"

.field private static final TAG:Ljava/lang/String; = "ColorScreenshotManager"

.field private static sInstance:Lcom/color/screenshot/ColorScreenshotManager;


# instance fields
.field private final mService:Lcom/color/screenshot/IColorScreenshotManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/color/screenshot/ColorScreenshotManager;->sInstance:Lcom/color/screenshot/ColorScreenshotManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "color_screenshot"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/color/screenshot/IColorScreenshotManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/color/screenshot/IColorScreenshotManager;

    move-result-object v0

    iput-object v0, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    .line 66
    return-void
.end method

.method public static getInstance()Lcom/color/screenshot/ColorScreenshotManager;
    .locals 2

    .prologue
    .line 77
    const-class v1, Lcom/color/screenshot/ColorScreenshotManager;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManager;->sInstance:Lcom/color/screenshot/ColorScreenshotManager;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/color/screenshot/ColorScreenshotManager;

    invoke-direct {v0}, Lcom/color/screenshot/ColorScreenshotManager;-><init>()V

    sput-object v0, Lcom/color/screenshot/ColorScreenshotManager;->sInstance:Lcom/color/screenshot/ColorScreenshotManager;

    .line 81
    :cond_0
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManager;->sInstance:Lcom/color/screenshot/ColorScreenshotManager;

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static peekInstance()Lcom/color/screenshot/ColorScreenshotManager;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManager;->sInstance:Lcom/color/screenshot/ColorScreenshotManager;

    return-object v0
.end method


# virtual methods
.method public isLongshotHandleState()Z
    .locals 3

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v2}, Lcom/color/screenshot/IColorScreenshotManager;->isLongshotHandleState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 151
    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isLongshotMode()Z
    .locals 3

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v2}, Lcom/color/screenshot/IColorScreenshotManager;->isLongshotMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 166
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isLongshotMoveState()Z
    .locals 3

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v2}, Lcom/color/screenshot/IColorScreenshotManager;->isLongshotMoveState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 136
    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public notifyLongshotScroll(Z)V
    .locals 2
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v1, p1}, Lcom/color/screenshot/IColorScreenshotManager;->notifyLongshotScroll(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public takeLongshot(ZZ)V
    .locals 2
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManager;->mService:Lcom/color/screenshot/IColorScreenshotManager;

    invoke-interface {v1, p1, p2}, Lcom/color/screenshot/IColorScreenshotManager;->takeLongshot(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
