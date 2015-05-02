.class Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$1;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0

    .prologue
    .line 2147
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2149
    const-string v0, "AlarmManager"

    const-string v1, "alarmTimeoutCheck run"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    # invokes: Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->alarmTimeoutCheck()V
    invoke-static {v0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->access$2700(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    .line 2152
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mScreenOn:Z

    if-nez v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    # getter for: Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->access$2800(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2154
    :cond_0
    return-void
.end method
