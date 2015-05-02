.class Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 310
    # getter for: Landroid/net/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Landroid/net/wifi/SupplicantStateTracker;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$1300(Landroid/net/wifi/SupplicantStateTracker;)Landroid/os/Message;

    move-result-object v0

    .line 315
    .local v0, "message":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 319
    .local v1, "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$1200(Landroid/net/wifi/SupplicantStateTracker;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "oppo.cmcc.optr"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$200(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$100(Landroid/net/wifi/SupplicantStateTracker;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 322
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v2, v5}, Landroid/net/wifi/SupplicantStateTracker;->access$202(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    .line 329
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$1200(Landroid/net/wifi/SupplicantStateTracker;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "oppo.cmcc.optr"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 330
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$400(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 331
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to authenticate, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v2, v3, v6}, Landroid/net/wifi/SupplicantStateTracker;->access$1400(Landroid/net/wifi/SupplicantStateTracker;II)V

    .line 335
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2, v5}, Landroid/net/wifi/SupplicantStateTracker;->access$402(Landroid/net/wifi/SupplicantStateTracker;I)I

    .line 368
    :cond_2
    :goto_0
    return-void

    .line 339
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$400(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 350
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$400(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v2

    if-ge v2, v7, :cond_4

    .line 351
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to authenticate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v4}, Landroid/net/wifi/SupplicantStateTracker;->access$400(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times, reconnect!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$1500(Landroid/net/wifi/SupplicantStateTracker;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    goto :goto_0

    .line 354
    :cond_4
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to authenticate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v4}, Landroid/net/wifi/SupplicantStateTracker;->access$400(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v2, v3, v6}, Landroid/net/wifi/SupplicantStateTracker;->access$1400(Landroid/net/wifi/SupplicantStateTracker;II)V

    .line 358
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2, v5}, Landroid/net/wifi/SupplicantStateTracker;->access$402(Landroid/net/wifi/SupplicantStateTracker;I)I

    goto :goto_0

    .line 361
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$1100(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 362
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Association getting rejected, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v2, v3, v7}, Landroid/net/wifi/SupplicantStateTracker;->access$1400(Landroid/net/wifi/SupplicantStateTracker;II)V

    .line 366
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v2, v5}, Landroid/net/wifi/SupplicantStateTracker;->access$1102(Landroid/net/wifi/SupplicantStateTracker;I)I

    goto/16 :goto_0
.end method
