.class Lcom/android/server/oppo/OppoUsageService$1;
.super Landroid/os/Handler;
.source "OppoUsageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoUsageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oppo/OppoUsageService;


# direct methods
.method constructor <init>(Lcom/android/server/oppo/OppoUsageService;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, 0x2710

    const/4 v3, 0x2

    .line 88
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # getter for: Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I
    invoke-static {v1}, Lcom/android/server/oppo/OppoUsageService;->access$000(Lcom/android/server/oppo/OppoUsageService;)I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/server/oppo/OppoUsageService$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/oppo/OppoUsageService$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # invokes: Lcom/android/server/oppo/OppoUsageService;->getImeiNoFromPhone()Z
    invoke-static {v1}, Lcom/android/server/oppo/OppoUsageService;->access$100(Lcom/android/server/oppo/OppoUsageService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # setter for: Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I
    invoke-static {v1, v2}, Lcom/android/server/oppo/OppoUsageService;->access$002(Lcom/android/server/oppo/OppoUsageService;I)I

    .line 97
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    iget-object v2, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # getter for: Lcom/android/server/oppo/OppoUsageService;->mCurrentImeiNO:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoUsageService;->access$200(Lcom/android/server/oppo/OppoUsageService;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/oppo/OppoUsageService;->access$300(Lcom/android/server/oppo/OppoUsageService;Ljava/lang/String;I)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/server/oppo/OppoUsageService$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/oppo/OppoUsageService$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # operator-- for: Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I
    invoke-static {v1}, Lcom/android/server/oppo/OppoUsageService;->access$010(Lcom/android/server/oppo/OppoUsageService;)I

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/oppo/OppoUsageService$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/oppo/OppoUsageService$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # getter for: Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I
    invoke-static {v1}, Lcom/android/server/oppo/OppoUsageService;->access$400(Lcom/android/server/oppo/OppoUsageService;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # invokes: Lcom/android/server/oppo/OppoUsageService;->getPcbaNoFromPhone()Z
    invoke-static {v1}, Lcom/android/server/oppo/OppoUsageService;->access$500(Lcom/android/server/oppo/OppoUsageService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # setter for: Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I
    invoke-static {v1, v2}, Lcom/android/server/oppo/OppoUsageService;->access$402(Lcom/android/server/oppo/OppoUsageService;I)I

    .line 113
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    iget-object v2, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # getter for: Lcom/android/server/oppo/OppoUsageService;->mCurrentPcbaNO:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoUsageService;->access$600(Lcom/android/server/oppo/OppoUsageService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    # invokes: Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/oppo/OppoUsageService;->access$300(Lcom/android/server/oppo/OppoUsageService;Ljava/lang/String;I)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # operator-- for: Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I
    invoke-static {v1}, Lcom/android/server/oppo/OppoUsageService;->access$410(Lcom/android/server/oppo/OppoUsageService;)I

    .line 116
    invoke-virtual {p0, v3}, Lcom/android/server/oppo/OppoUsageService$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/oppo/OppoUsageService$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 121
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # invokes: Lcom/android/server/oppo/OppoUsageService;->getCurrentDateStr()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoUsageService;->access$700(Lcom/android/server/oppo/OppoUsageService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "bootUpTimeStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService$1;->this$0:Lcom/android/server/oppo/OppoUsageService;

    # invokes: Lcom/android/server/oppo/OppoUsageService;->saveCurrentBootTime(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/oppo/OppoUsageService;->access$800(Lcom/android/server/oppo/OppoUsageService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
