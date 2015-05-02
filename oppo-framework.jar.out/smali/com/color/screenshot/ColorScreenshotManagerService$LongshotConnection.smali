.class Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;
.super Lcom/color/screenshot/IColorScreenshotCallback$Stub;
.source "ColorScreenshotManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/screenshot/ColorScreenshotManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongshotConnection"
.end annotation


# instance fields
.field private mService:Lcom/color/screenshot/IColorLongshot;

.field final synthetic this$0:Lcom/color/screenshot/ColorScreenshotManagerService;


# direct methods
.method private constructor <init>(Lcom/color/screenshot/ColorScreenshotManagerService;)V
    .locals 1

    .prologue
    .line 158
    iput-object p1, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->this$0:Lcom/color/screenshot/ColorScreenshotManagerService;

    invoke-direct {p0}, Lcom/color/screenshot/IColorScreenshotCallback$Stub;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/screenshot/ColorScreenshotManagerService;Lcom/color/screenshot/ColorScreenshotManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/screenshot/ColorScreenshotManagerService;
    .param p2, "x1"    # Lcom/color/screenshot/ColorScreenshotManagerService$1;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;-><init>(Lcom/color/screenshot/ColorScreenshotManagerService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;
    .locals 1
    .param p0, "x0"    # Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 164
    const/4 v1, 0x0

    const-string v2, "ColorScreenshotManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p2}, Lcom/color/screenshot/IColorLongshot$Stub;->asInterface(Landroid/os/IBinder;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v1

    iput-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    invoke-interface {v1, p0}, Lcom/color/screenshot/IColorLongshot;->start(Lcom/color/screenshot/IColorScreenshotCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorScreenshotManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 177
    const/4 v0, 0x0

    const-string v1, "ColorScreenshotManagerService"

    const-string v2, "onServiceDisconnected"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    .line 179
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 183
    const/4 v0, 0x0

    const-string v1, "ColorScreenshotManagerService"

    const-string v2, "stop"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->this$0:Lcom/color/screenshot/ColorScreenshotManagerService;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/color/screenshot/ColorScreenshotManagerService;->access$200(Lcom/color/screenshot/ColorScreenshotManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;

    .line 186
    return-void
.end method
