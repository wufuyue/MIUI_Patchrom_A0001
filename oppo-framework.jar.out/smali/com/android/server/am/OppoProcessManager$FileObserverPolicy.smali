.class Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OppoProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OppoProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    .line 169
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 170
    iput-object p2, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 8
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x67

    const/16 v6, 0x66

    const/16 v5, 0x65

    const/16 v4, 0x64

    const-wide/16 v2, 0xc8

    .line 175
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/bpm_sts.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/bpm.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/pkg.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/brd.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/bad_apps.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/data_bpm/appwidgets.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
