.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;
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
    .line 319
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->enableScreenAfterBoot()V

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$502(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z

    .line 331
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.intent.action.KEY_LOCK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KeyLockMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v1, "ProcessName"

    const-string v2, "com.android.individuationSettings:individuationSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    return-void
.end method
