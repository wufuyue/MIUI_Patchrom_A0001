.class Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$6;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$6;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$6;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1039
    const-string v0, "WindowManager"

    const-string v1, "handleMessage "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mFreePathScreenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1041
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mFreePathScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 1042
    const-string v0, "WindowManager"

    const-string v2, "handleMessage mFreePathScreenshotConnection == myConn"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mFreePathScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1044
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mFreePathScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$602(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 1045
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$702(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1046
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mFreePathScreenshotTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1048
    :cond_0
    monitor-exit v1

    .line 1049
    return-void

    .line 1048
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
