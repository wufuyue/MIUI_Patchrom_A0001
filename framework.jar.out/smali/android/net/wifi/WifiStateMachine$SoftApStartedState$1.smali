.class Landroid/net/wifi/WifiStateMachine$SoftApStartedState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiStateMachine$SoftApStartedState;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine$SoftApStartedState;)V
    .locals 0

    .prologue
    .line 5327
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState$1;->this$1:Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5329
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState$1;->this$1:Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v1, 0xb

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;I)V

    .line 5330
    return-void
.end method
