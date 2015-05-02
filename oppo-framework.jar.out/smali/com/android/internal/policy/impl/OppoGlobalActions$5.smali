.class Lcom/android/internal/policy/impl/OppoGlobalActions$5;
.super Landroid/telephony/PhoneStateListener;
.source "OppoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$800(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/OppoGlobalActions;->refreshAirplaneMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1400(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    goto :goto_0
.end method
