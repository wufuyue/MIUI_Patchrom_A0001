.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;
.super Ljava/lang/Object;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.com.oppo.oclick.single_click"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcast time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    return-void
.end method
