.class Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;->getResultCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 101
    const-string v1, "index"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "idx":I
    if-lez v0, :cond_0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;

    const-string v2, "oppo block the incoming and hangup it!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 110
    .end local v0    # "idx":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;

    # setter for: Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->blockingNumer:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->access$102(Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;

    # setter for: Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->pollMsg:Landroid/os/Message;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->access$002(Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;Landroid/os/Message;)Landroid/os/Message;

    .line 112
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;

    # getter for: Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->pollMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->access$000(Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;

    # setter for: Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->blockingNumer:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->access$102(Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;

    # getter for: Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->pollMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->access$000(Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;)Landroid/os/Message;

    move-result-object v1

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cdma/OppoCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method
