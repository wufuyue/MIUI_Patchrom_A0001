.class Lcom/android/server/OppoLightsService$ButtonLight$2;
.super Landroid/content/BroadcastReceiver;
.source "OppoLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OppoLightsService$ButtonLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/OppoLightsService$ButtonLight;


# direct methods
.method constructor <init>(Lcom/android/server/OppoLightsService$ButtonLight;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/OppoLightsService$ButtonLight$2;->this$1:Lcom/android/server/OppoLightsService$ButtonLight;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/OppoLightsService$ButtonLight$2;->this$1:Lcom/android/server/OppoLightsService$ButtonLight;

    # invokes: Lcom/android/server/OppoLightsService$ButtonLight;->turnButtonLightOff()V
    invoke-static {v0}, Lcom/android/server/OppoLightsService$ButtonLight;->access$100(Lcom/android/server/OppoLightsService$ButtonLight;)V

    .line 109
    return-void
.end method
