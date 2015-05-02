.class Lcom/oppo/view/VolumePanel$8;
.super Landroid/content/BroadcastReceiver;
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
    .line 1266
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$8;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1269
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/oppo/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/oppo/view/VolumePanel;->access$900()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1271
    const-string v3, "OppoVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The action is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_0
    const-string v3, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1274
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$8;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v4, p0, Lcom/oppo/view/VolumePanel$8;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v4, v4, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/oppo/view/VolumePanel;->inflaterBaseUI(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/oppo/view/VolumePanel;->access$1000(Lcom/oppo/view/VolumePanel;Landroid/content/Context;)V

    .line 1275
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$8;->this$0:Lcom/oppo/view/VolumePanel;

    # invokes: Lcom/oppo/view/VolumePanel;->createSliders()V
    invoke-static {v3}, Lcom/oppo/view/VolumePanel;->access$1100(Lcom/oppo/view/VolumePanel;)V

    .line 1290
    :cond_1
    :goto_0
    return-void

    .line 1276
    :cond_2
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1277
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$8;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v4, p0, Lcom/oppo/view/VolumePanel$8;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v4, v4, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/oppo/view/VolumePanel;->inflaterBaseUI(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/oppo/view/VolumePanel;->access$1000(Lcom/oppo/view/VolumePanel;Landroid/content/Context;)V

    .line 1278
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$8;->this$0:Lcom/oppo/view/VolumePanel;

    # invokes: Lcom/oppo/view/VolumePanel;->createSliders()V
    invoke-static {v3}, Lcom/oppo/view/VolumePanel;->access$1100(Lcom/oppo/view/VolumePanel;)V

    goto :goto_0

    .line 1279
    :cond_3
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1280
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$8;->this$0:Lcom/oppo/view/VolumePanel;

    # getter for: Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/oppo/view/VolumePanel;->access$1200(Lcom/oppo/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1281
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1282
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$8;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v3, v3, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc05044a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1285
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1288
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$8;->this$0:Lcom/oppo/view/VolumePanel;

    # invokes: Lcom/oppo/view/VolumePanel;->updateTextSize()V
    invoke-static {v3}, Lcom/oppo/view/VolumePanel;->access$1300(Lcom/oppo/view/VolumePanel;)V

    goto :goto_0
.end method
