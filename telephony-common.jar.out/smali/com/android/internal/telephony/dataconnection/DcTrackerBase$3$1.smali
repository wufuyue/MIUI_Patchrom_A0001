.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3$1;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    .line 380
    return-void
.end method
