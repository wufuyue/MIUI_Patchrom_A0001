.class Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;
.super Ljava/lang/Object;
.source "OppoTabHost.java"

# interfaces
.implements Lcom/oppo/widget/OppoTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIdContentStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/oppo/widget/OppoTabHost;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoTabHost;I)V
    .locals 3
    .param p2, "viewId"    # I

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    # getter for: Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/oppo/widget/OppoTabHost;->access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    .line 748
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 754
    return-void

    .line 751
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create tab content because could not find view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoTabHost;ILcom/oppo/widget/OppoTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/widget/OppoTabHost;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/oppo/widget/OppoTabHost$1;

    .prologue
    .line 742
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;-><init>(Lcom/oppo/widget/OppoTabHost;I)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 763
    return-void
.end method
