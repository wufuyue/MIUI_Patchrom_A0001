.class Lcom/oppo/view/VolumePanel$4;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/view/VolumePanel;->expand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/oppo/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$4;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$4;->this$0:Lcom/oppo/view/VolumePanel;

    # getter for: Lcom/oppo/view/VolumePanel;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/view/VolumePanel;->access$600(Lcom/oppo/view/VolumePanel;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 692
    return-void
.end method
