.class Lcom/oppo/view/VolumePanel$7;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/view/VolumePanel;->onDisplaySafeVolumeWarning()V
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
    .line 1144
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v1, v1, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->disableSafeMediaVolume()V

    .line 1149
    iget-object v1, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    # getter for: Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/oppo/view/VolumePanel;->access$800(Lcom/oppo/view/VolumePanel;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    # getter for: Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/oppo/view/VolumePanel;->access$800(Lcom/oppo/view/VolumePanel;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1151
    .local v0, "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1152
    iget-object v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    .line 1156
    .end local v0    # "sc":Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method
