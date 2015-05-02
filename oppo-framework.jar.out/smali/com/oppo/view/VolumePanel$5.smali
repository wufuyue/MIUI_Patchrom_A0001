.class Lcom/oppo/view/VolumePanel$5;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/VolumePanel;
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
    .line 698
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$5;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 702
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 707
    :goto_0
    return-void

    .line 704
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$5;->this$0:Lcom/oppo/view/VolumePanel;

    # getter for: Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/oppo/view/VolumePanel;->access$700(Lcom/oppo/view/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
